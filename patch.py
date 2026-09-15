#!/usr/bin/env python3
"""
framework-spoof-patcher

Injects the PIF (Play Integrity Fix) + Google Photos + GameProps spoof engine into an
Android framework.jar, and (optionally) the TrickyStore keystore attestation hooks.

Design goals (this is the "mixed versions / best-effort" build):
  * No dependency on services.jar or IActivityManager transaction IDs.
    The engine's config is redirected to Settings.Secure via the injected
    android.app.SpoofBridge helper, so it works across Android versions.
  * The only edit to an existing class is ONE line added to
    ActivityThread.handleBindApplication(). Everything else is brand-new classes.

Usage:
    python patch.py --input input/framework.jar --output output/framework.jar [--trickystore]

Requires: Java (for apktool). apktool.jar is auto-downloaded if not found.
"""

import argparse
import os
import re
import shutil
import subprocess
import sys
import urllib.request

HERE = os.path.dirname(os.path.abspath(__file__))
APKTOOL_VERSION = "2.9.3"
APKTOOL_URL = (
    "https://github.com/iBotPeaches/Apktool/releases/download/"
    f"v{APKTOOL_VERSION}/apktool_{APKTOOL_VERSION}.jar"
)

HOOK_LINE = (
    "    invoke-static/range {p1 .. p1}, "
    "Landroid/app/SpoofBridge;->apply(Landroid/app/ActivityThread$AppBindData;)V\n"
)
HOOK_MARKER = "Landroid/app/SpoofBridge;->apply"
ATHREAD_METHOD = "handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V"


def log(msg):
    print(f"[patch] {msg}", flush=True)


def die(msg, code=1):
    print(f"[patch] ERROR: {msg}", file=sys.stderr, flush=True)
    sys.exit(code)


def run(cmd):
    log("$ " + " ".join(cmd))
    subprocess.run(cmd, check=True)


def ensure_apktool(explicit):
    if explicit:
        if not os.path.isfile(explicit):
            die(f"--apktool {explicit} not found")
        return explicit
    local = os.path.join(HERE, "apktool.jar")
    if os.path.isfile(local):
        return local
    log(f"downloading apktool {APKTOOL_VERSION} ...")
    urllib.request.urlretrieve(APKTOOL_URL, local)
    return local


def smali_dirs(decoded):
    """All smali* dirs, ordered: smali, smali_classes2, smali_classes3, ..."""
    out = []
    for name in os.listdir(decoded):
        if name == "smali" or re.fullmatch(r"smali_classes\d+", name):
            p = os.path.join(decoded, name)
            if os.path.isdir(p):
                out.append(name)

    def key(n):
        return 1 if n == "smali" else int(n.replace("smali_classes", ""))

    return sorted(out, key=key)


def next_smali_dir(decoded):
    dirs = smali_dirs(decoded)
    if not dirs:
        return "smali"
    last = dirs[-1]
    n = 1 if last == "smali" else int(last.replace("smali_classes", ""))
    return f"smali_classes{n + 1}"


def find_class_file(decoded, rel_smali_path):
    """Locate a class .smali by its 'android/.../Foo.smali' path across all dex dirs."""
    for d in smali_dirs(decoded):
        cand = os.path.join(decoded, d, rel_smali_path)
        if os.path.isfile(cand):
            return cand
    return None


def inject_activitythread(decoded):
    path = find_class_file(decoded, os.path.join("android", "app", "ActivityThread.smali"))
    if not path:
        die("android/app/ActivityThread.smali not found in decoded jar")
    with open(path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    if any(HOOK_MARKER in ln for ln in lines):
        log("ActivityThread already hooked - skipping injection")
        return

    # find the method
    m_start = None
    for i, ln in enumerate(lines):
        s = ln.strip()
        if s.startswith(".method") and ATHREAD_METHOD in s:
            m_start = i
            break
    if m_start is None:
        die("handleBindApplication(AppBindData) not found in ActivityThread")

    # find end of method
    m_end = None
    for j in range(m_start + 1, len(lines)):
        if lines[j].strip() == ".end method":
            m_end = j
            break
    if m_end is None:
        die("could not find end of handleBindApplication")

    # find .locals/.registers line
    loc = None
    for j in range(m_start + 1, m_end):
        s = lines[j].strip()
        if s.startswith(".locals") or s.startswith(".registers"):
            loc = j
            break
    if loc is None:
        die("no .locals/.registers in handleBindApplication")

    # preferred anchor: first ".line" after .locals (guaranteed to sit after all
    # .param / method-annotation directives, right before real code).
    insert_at = None
    for j in range(loc + 1, m_end):
        if lines[j].strip().startswith(".line "):
            insert_at = j
            break
    if insert_at is None:
        # fallback: after .locals, skipping .param / .annotation / .prologue blocks
        j = loc + 1
        in_ann = False
        while j < m_end:
            s = lines[j].strip()
            if s.startswith(".annotation"):
                in_ann = True
            elif s.startswith(".end annotation"):
                in_ann = False
            elif not in_ann and not (
                s == ""
                or s.startswith("#")
                or s.startswith(".param")
                or s.startswith(".prologue")
                or s.startswith(".end param")
            ):
                break
            j += 1
        insert_at = j

    lines.insert(insert_at, HOOK_LINE)
    with open(path, "w", encoding="utf-8") as f:
        f.writelines(lines)
    log(f"hooked handleBindApplication in {os.path.relpath(path, decoded)} (line {insert_at + 1})")


def copytree_into(src_root, dst_root):
    """Merge-copy src_root/* into dst_root/ (create dirs, overwrite files)."""
    for dirpath, _dirs, files in os.walk(src_root):
        rel = os.path.relpath(dirpath, src_root)
        target = os.path.join(dst_root, rel) if rel != "." else dst_root
        os.makedirs(target, exist_ok=True)
        for fn in files:
            shutil.copy2(os.path.join(dirpath, fn), os.path.join(target, fn))


def copy_engine(decoded):
    new_dir = os.path.join(decoded, next_smali_dir(decoded))
    os.makedirs(new_dir, exist_ok=True)
    payload = os.path.join(HERE, "payload", "smali")
    copytree_into(payload, new_dir)
    log(f"copied PIF/GameProps engine + SpoofBridge into {os.path.basename(new_dir)}/")
    return new_dir


def copy_trickystore(engine_dir):
    """Copy the (self-contained) TrickyStore engine + TSKeystoreHook into the new dex dir."""
    ts_classes = os.path.join(HERE, "payload", "smali_trickystore",
                              "android", "security", "trickystore")
    dst = os.path.join(engine_dir, "android", "security", "trickystore")
    copytree_into(ts_classes, dst)
    log("copied TrickyStore engine classes (+ TSKeystoreHook)")


def find_keystore_spi(decoded):
    """Locate AndroidKeyStoreSpi.smali (keystore2 on A12+, keystore on older)."""
    for pkg in ("keystore2", "keystore"):
        p = find_class_file(
            decoded, os.path.join("android", "security", pkg, "AndroidKeyStoreSpi.smali"))
        if p:
            return p
    return None


def splice_cert_chain(decoded):
    """
    Portable TrickyStore leaf-hack: wrap every `return-object vN` inside
    engineGetCertificateChain() so the returned chain passes through
    TSKeystoreHook.hackChain(). Works regardless of the method's internal structure.
    """
    path = find_keystore_spi(decoded)
    if not path:
        log("WARNING: AndroidKeyStoreSpi not found - TrickyStore leaf-hack NOT applied")
        return False
    with open(path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    # find engineGetCertificateChain(...)[Ljava/security/cert/Certificate;
    m_start = None
    for i, ln in enumerate(lines):
        s = ln.strip()
        if (s.startswith(".method")
                and "engineGetCertificateChain(" in s
                and s.endswith("[Ljava/security/cert/Certificate;")):
            m_start = i
            break
    if m_start is None:
        log("WARNING: engineGetCertificateChain not found - TrickyStore leaf-hack NOT applied")
        return False
    m_end = next((j for j in range(m_start + 1, len(lines))
                  if lines[j].strip() == ".end method"), None)
    if m_end is None:
        log("WARNING: malformed engineGetCertificateChain - skipping leaf-hack")
        return False

    if any("TSKeystoreHook;->hackChain" in lines[j] for j in range(m_start, m_end)):
        log("engineGetCertificateChain already wrapped - skipping")
        return True

    ret_re = re.compile(r"^(\s*)return-object\s+([vp]\d+)\s*$")
    out = []
    wrapped = 0
    for j in range(m_start, m_end):
        m = ret_re.match(lines[j])
        if m:
            indent, reg = m.group(1), m.group(2)
            out.append(f"{indent}invoke-static {{{reg}}}, "
                       f"Landroid/security/trickystore/TSKeystoreHook;->hackChain("
                       f"[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;\n")
            out.append(f"{indent}move-result-object {reg}\n")
            out.append(lines[j])
            wrapped += 1
        else:
            out.append(lines[j])
    lines[m_start:m_end] = out

    with open(path, "w", encoding="utf-8") as f:
        f.writelines(lines)
    log(f"spliced TrickyStore leaf-hook into {os.path.relpath(path, decoded)} "
        f"({wrapped} return site(s) wrapped)")
    return wrapped > 0


def apply_generate_mode(decoded):
    """
    Opt-in broken-TEE GENERATE support: replace the two keystore2 SPI classes wholesale
    with the patched copies. Version-sensitive - only fits the same/similar keystore2.
    """
    gm_root = os.path.join(HERE, "payload", "smali_generate_mode",
                           "android", "security", "keystore2")
    replaced = 0
    for cls in ("AndroidKeyStoreSpi.smali", "AndroidKeyStoreKeyPairGeneratorSpi.smali"):
        target = find_class_file(decoded, os.path.join("android", "security", "keystore2", cls))
        src = os.path.join(gm_root, cls)
        if target and os.path.isfile(src):
            shutil.copy2(src, target)
            replaced += 1
            log(f"replaced android/security/keystore2/{cls} (GENERATE mode)")
        else:
            log(f"WARNING: could not replace keystore2/{cls} (target missing)")
    if replaced == 0:
        log("WARNING: GENERATE mode requested but no keystore2 classes replaced")


def main():
    ap = argparse.ArgumentParser(description="Patch a framework.jar with the spoof engine")
    ap.add_argument("--input", required=True, help="path to the framework.jar to patch")
    ap.add_argument("--output", required=True, help="path for the patched framework.jar")
    ap.add_argument("--no-trickystore", action="store_true",
                    help="do NOT inject TrickyStore (leaf-hack) - PIF+Photos+GameProps only")
    ap.add_argument("--generate-mode", action="store_true",
                    help="also add TrickyStore GENERATE (broken-TEE) support via wholesale "
                         "keystore2 replacement - version-sensitive, same-version only")
    ap.add_argument("--apktool", default=None, help="path to apktool.jar (auto-downloaded if omitted)")
    ap.add_argument("--keep", action="store_true", help="keep the decoded work dir")
    args = ap.parse_args()

    if not os.path.isfile(args.input):
        die(f"input not found: {args.input}")

    apktool = ensure_apktool(args.apktool)
    workdir = os.path.join(HERE, "build", "decoded")
    if os.path.isdir(os.path.join(HERE, "build")):
        shutil.rmtree(os.path.join(HERE, "build"))
    os.makedirs(os.path.dirname(workdir), exist_ok=True)

    log(f"decoding {args.input} ...")
    run(["java", "-jar", apktool, "d", "-f", "-o", workdir, args.input])

    engine_dir = copy_engine(workdir)
    inject_activitythread(workdir)

    do_trickystore = not args.no_trickystore
    if args.generate_mode:
        # wholesale keystore2 replacement already contains both leaf-hack + generate hooks,
        # so copy the engine but do NOT also splice (would double-hook).
        copy_trickystore(engine_dir)
        apply_generate_mode(workdir)
    elif do_trickystore:
        copy_trickystore(engine_dir)
        splice_cert_chain(workdir)

    os.makedirs(os.path.dirname(os.path.abspath(args.output)), exist_ok=True)
    log(f"rebuilding -> {args.output} ...")
    run(["java", "-jar", apktool, "b", "-f", "-o", args.output, workdir])

    if not args.keep:
        shutil.rmtree(os.path.join(HERE, "build"), ignore_errors=True)

    size = os.path.getsize(args.output)
    log(f"DONE. Patched jar: {args.output} ({size} bytes)")
    log("Reminder: configure on device as root, e.g.:")
    log("  settings put secure spoof_pif_config '{\"FINGERPRINT\":\"...\",\"MODEL\":\"Pixel 8\"}'")
    log("  settings put secure spoof_pif_photos 1")


if __name__ == "__main__":
    main()
