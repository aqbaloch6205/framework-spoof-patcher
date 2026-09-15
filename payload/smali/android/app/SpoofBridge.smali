.class public Landroid/app/SpoofBridge;
.super Ljava/lang/Object;
.source "SpoofBridge.java"

# Injected by framework-spoof-patcher.
#
# Two jobs:
#  1) apply()  - called once per app process from ActivityThread.handleBindApplication,
#                triggers the GameProps / PIF / Photos spoofs. Lives in android.app so it
#                can read the package-private fields of ActivityThread$AppBindData.
#  2) get*()   - supply runtime config to the spoof engine from Settings.Secure, so NO
#                services.jar / IActivityManager change is needed. Configure on device with:
#                   settings put secure spoof_pif_config        '<json>'
#                   settings put secure spoof_pif_photos        1
#                   settings put secure spoof_gameprops_config  '<json>'
#                   settings put secure spoof_trickystore_target '<text>'
#                   settings put secure spoof_trickystore_keybox '<keybox.xml>'
#                   settings put secure spoof_trickystore_patch  '<json-or-text>'


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# ---------------------------------------------------------------------------
# Trigger: run the spoofs for this process. p0 = ActivityThread$AppBindData.
# ---------------------------------------------------------------------------
.method public static apply(Landroid/app/ActivityThread$AppBindData;)V
    .locals 3

    :try_start_0
    # ---- GameProps ----
    invoke-static {}, Landroid/security/gameprops/GamePropsSpoofService;->getInstance()Landroid/security/gameprops/GamePropsSpoofService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/gameprops/GamePropsSpoofService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_gp

    iget-object v1, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/security/gameprops/GamePropsSpoofService;->spoofForPackage(Ljava/lang/String;)V

    :cond_gp
    # ---- PIF build fields + signature ----
    invoke-static {}, Landroid/security/pif/PlayIntegritySpoofService;->getInstance()Landroid/security/pif/PlayIntegritySpoofService;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/security/pif/PlayIntegritySpoofService;->shouldSpoof(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_photos

    iget-object v1, p0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/security/pif/PlayIntegritySpoofService;->spoofBuildFields(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/security/pif/PlayIntegritySpoofService;->isSpoofSignatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_photos

    invoke-virtual {v0}, Landroid/security/pif/PlayIntegritySpoofService;->spoofSignature()V

    :cond_photos
    # ---- Google Photos (Pixel XL) ----
    iget-object v1, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/security/pif/PlayIntegritySpoofService;->shouldSpoofPhotos(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_end

    invoke-virtual {v0}, Landroid/security/pif/PlayIntegritySpoofService;->spoofPhotosProps()V

    :cond_end
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_out

    :catch_0
    move-exception v0

    const-string v1, "SpoofBridge"

    const-string v2, "apply failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_out
    return-void
.end method


# ---------------------------------------------------------------------------
# Config source: read a value from Settings.Secure (null on any error).
# ---------------------------------------------------------------------------
.method private static readSecure(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_null

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    if-eqz v0, :cond_null

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_null

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_null
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method


.method public static getPifConfig()Ljava/lang/String;
    .locals 1

    const-string v0, "spoof_pif_config"

    invoke-static {v0}, Landroid/app/SpoofBridge;->readSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public static getPifPhotos()Ljava/lang/String;
    .locals 1

    const-string v0, "spoof_pif_photos"

    invoke-static {v0}, Landroid/app/SpoofBridge;->readSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public static getGamePropsConfig()Ljava/lang/String;
    .locals 1

    const-string v0, "spoof_gameprops_config"

    invoke-static {v0}, Landroid/app/SpoofBridge;->readSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public static getTrickyStoreTarget()Ljava/lang/String;
    .locals 1

    const-string v0, "spoof_trickystore_target"

    invoke-static {v0}, Landroid/app/SpoofBridge;->readSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public static getTrickyStoreKeyBox()Ljava/lang/String;
    .locals 1

    const-string v0, "spoof_trickystore_keybox"

    invoke-static {v0}, Landroid/app/SpoofBridge;->readSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public static getTrickyStorePatch()Ljava/lang/String;
    .locals 1

    const-string v0, "spoof_trickystore_patch"

    invoke-static {v0}, Landroid/app/SpoofBridge;->readSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
