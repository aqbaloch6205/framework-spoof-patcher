# framework-spoof-patcher

A GitHub Actions pipeline that injects **all** the framework's spoofs —
**PIF (Play Integrity Fix)**, **Google Photos**, signature spoof, **GameProps**, and
**TrickyStore** key-attestation (leaf-hack) — into any Android `framework.jar`. Drop a jar in
the repo, click **Run workflow**, download the patched jar.

Built for the **mixed-version / best-effort** case: it does **not** depend on `services.jar`
or on `IActivityManager` transaction IDs (which change between Android versions). Instead the
spoof engine reads its runtime config from **`Settings.Secure`**, which any app process can
read on any Android version.

---

## How it works (what gets changed)

| Change | Type | Notes |
|--------|------|-------|
| `android/security/pif/*`, `android/security/gameprops/*` | **new classes** | PIF + Photos + signature + GameProps engine |
| `android/security/trickystore/*` (+ `TSKeystoreHook`, `TSFalseSupplier`) | **new classes** | TrickyStore engine + self-contained keystore hook |
| `android/app/SpoofBridge` | **new class** | triggers the spoofs + reads config from `Settings.Secure` |
| `android/app/ActivityThread` → `handleBindApplication()` | **1 line added** | `invoke-static … SpoofBridge->apply(...)` — triggers PIF/Photos/GameProps |
| `AndroidKeyStoreSpi` → `engineGetCertificateChain()` | **return wrapped** | each `return-object` passes through `TSKeystoreHook.hackChain()` — the TrickyStore attestation hook |
| keystore2 SPIs (wholesale) | **opt-in** | only with `--generate-mode`; adds broken-TEE GENERATE support (version-sensitive) |

Both edits to existing classes are **additive and located dynamically** (a call added after
`.locals` in `handleBindApplication`; a wrap added around each `return` in
`engineGetCertificateChain`) — no register remapping, portable across Android versions.

The engine's config calls (originally `IActivityManager.getSpoofPifConfig()` etc.) are
**pre-redirected in the payload** to `SpoofBridge.getPifConfig()` etc., which read
`Settings.Secure`. So no binder plumbing, no services.jar, no transaction-ID collisions.

Nothing is spoofed until you provide config in `Settings.Secure` (see below) — a stock jar's
behaviour is unchanged until then.

---

## Repo layout

```
.github/workflows/patch.yml   the GitHub Action (manual trigger)
patch.py                      the patcher (apktool decode → inject → rebuild)
payload/
  smali/                      PIF + GameProps engine + SpoofBridge (injected every run)
  smali_trickystore/          TrickyStore engine + TSKeystoreHook (injected by default)
  smali_generate_mode/        keystore2 wholesale replacements (only with --generate-mode)
input/                        put your framework.jar here (input/framework.jar)
output/                       patched jar lands here (local runs)
```

---

## Usage — on GitHub (recommended)

1. **Fork / create** this repo and push it to GitHub.
2. Put your device's `framework.jar` at **`input/framework.jar`** and commit it.
   ```bash
   cp /path/to/framework.jar input/framework.jar
   git add input/framework.jar && git commit -m "add framework.jar" && git push
   ```
   (Pull it from your device with `adb pull /system/framework/framework.jar`.)
3. Go to the **Actions** tab → **Patch framework.jar** → **Run workflow**.
   - `input_path` — leave as `input/framework.jar` (or point at another path you committed).
   - `no_trickystore` — tick to skip TrickyStore (patch PIF + Photos + GameProps only).
   - `generate_mode` — tick to add broken-TEE GENERATE support (same-version only; see caveats).
   - `make_release` — tick to also get a GitHub Release with the jar attached.
4. When the run finishes, download **`framework-patched`** from the run's **Artifacts**.

## Usage — locally

```bash
python3 patch.py --input input/framework.jar --output output/framework-patched.jar
# all spoofs (incl. TrickyStore leaf-hack) are injected by default
# --no-trickystore   patch PIF + Photos + GameProps only
# --generate-mode    add broken-TEE GENERATE support (wholesale keystore2 replace; same-version only)
# --apktool /path/to/apktool.jar   use your own apktool (else it auto-downloads 2.9.3)
```
Requires Java 8+. `apktool.jar` is downloaded automatically if not present next to `patch.py`.

---

## Installing the patched jar on the device

Deploying a modified `framework.jar` requires root and (on most ROMs) a way past
AVB/dm-verity — this part is ROM-specific and outside the patcher. Typical flow:

```bash
adb push framework-patched.jar /sdcard/
adb shell su -c 'cp /sdcard/framework-patched.jar /system/framework/framework.jar'
adb shell su -c 'chmod 644 /system/framework/framework.jar'
# remove stale AOT so the new jar is used, then reboot:
adb shell su -c 'rm -f /system/framework/oat/*/framework.* /data/dalvik-cache/*/*framework*'
adb reboot
```
On many setups you patch the jar inside the ROM zip / boot image flow instead. Keep a backup.

---

## Configuring the spoofs (Settings.Secure)

Nothing is spoofed until you provide config. As **root**:

```bash
# ---- PIF: make the Play Integrity attestation process look like a Pixel ----
settings put secure spoof_pif_config '{"BRAND":"google","MANUFACTURER":"Google","DEVICE":"husky","PRODUCT":"husky","MODEL":"Pixel 8 Pro","FINGERPRINT":"google/husky/husky:14/AP2A.240805.005/12025142:user/release-keys","SECURITY_PATCH":"2024-08-05"}'

# ---- Google Photos: unlimited original-quality storage (appears as Pixel XL) ----
settings put secure spoof_pif_photos 1

# ---- GameProps: per-game device spoof ----
settings put secure spoof_gameprops_config '{"enabled":true,"games":{"com.miHoYo.GenshinImpact":{"MANUFACTURER":"ASUS","MODEL":"ASUS_AI2401_A","BRAND":"asus"}}}'

# ---- TrickyStore (only if patched with --trickystore) ----
settings put secure spoof_trickystore_target 'com.google.android.gms
!com.some.strict.app'
settings put secure spoof_trickystore_keybox "$(cat keybox.xml)"
settings put secure spoof_trickystore_patch '{"all":"2024-08-05"}'
```

Read them back with `settings get secure spoof_pif_config`. Changes take effect for a process
the next time it starts (force-stop the target app, or reboot). Watch it work:

```bash
logcat -s PIF GameProps TrickyStoreService SpoofBridge
```

**Config formats** (parsed by the engine):
- `spoof_pif_config` — JSON object, or `KEY=VALUE` lines. Keys are `android.os.Build` /
  `Build.VERSION` field names (`FINGERPRINT`, `MODEL`, `SECURITY_PATCH`, `SDK_INT`, …).
- `spoof_pif_photos` — `1` / `true` to enable.
- `spoof_gameprops_config` — `{"enabled":bool,"games":{"<pkg>":{<field>:<value>,…}}}`.
- `spoof_trickystore_target` — one package per line; `!pkg` = GENERATE mode, `pkg` = leaf-hack, `#` comment.
- `spoof_trickystore_keybox` — full `keybox.xml` contents.
- `spoof_trickystore_patch` — JSON/text with `all` / `boot` / `system` / `vendor` dates.

---

## What's reliable vs. best-effort

**Reliable (default):** PIF + Google Photos + signature + GameProps + **TrickyStore leaf-hack**.
Everything ships as new classes, and the only edits to existing classes are two *additive,
dynamically-located* ones — a call after `.locals` in `handleBindApplication`, and a wrap around
each `return` in `engineGetCertificateChain`. No register remapping, no transaction IDs, works
across Android versions (12+, since TrickyStore uses the keystore2 AIDL).

**Best-effort (`--generate-mode`):** TrickyStore's broken-TEE **GENERATE** sub-mode (make an app
that has *no* usable hardware key still attest) can't be spliced generically — it's woven into
`generateKeyPair()`. This flag instead replaces the two `keystore2` SPI classes wholesale with
the patched copies in `payload/smali_generate_mode/`, which only fit the **same/similar keystore2
version**. Most devices with a working TEE don't need it — leaf-hack (default) is enough. If you
use it, **verify the build succeeds and test on-device**.

## Notes & safety

- The patcher never signs anything; `framework.jar` isn't APK-signed. Getting a modified
  framework to load is a ROM/verity concern you handle separately.
- Modifying integrity/attestation signals can violate app terms of service, and leaked
  keyboxes get revoked. Use keys you're entitled to, on ROMs you're allowed to modify.
- Always keep a backup of the original `framework.jar`; a bad framework can bootloop the device.
