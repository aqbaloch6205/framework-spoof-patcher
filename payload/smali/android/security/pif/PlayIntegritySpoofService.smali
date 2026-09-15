.class public final Landroid/security/pif/PlayIntegritySpoofService;
.super Ljava/lang/Object;
.source "PlayIntegritySpoofService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;
    }
.end annotation


# static fields
.field private static final blacklist DROIDGUARD_PACKAGE:Ljava/lang/String; = "com.google.android.gms.unstable"

.field private static final blacklist FEATURES_NEXUS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FEATURES_PIXEL:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FEATURES_TENSOR:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GMS_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field private static final blacklist GPHOTOS_PACKAGE:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final blacklist PIXEL_XL_PROPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PRIV_PKGS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ROM_SIGNATURE_DATA:Ljava/lang/String; = "MIIFyTCCA7GgAwIBAgIVALyxxl+zDS9SL68SzOr48309eAZyMA0GCSqGSIb3DQEBCwUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAgFw0yMjExMDExODExMzVaGA8yMDUyMTEwMTE4MTEzNVowdDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC0dvb2dsZSBJbmMuMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsqtalIy/nctKlrhd1UVoDffFGnDf9GLi0QQhsVoJkfF16vDDydZJOycG7/kQziRZhFdcoMrIYZzzw0ppBjsSe1AiWMuKXwTBaEtxN99S1xsJiW4/QMI6N6kMunydWRMsbJ6aAxi1lVq0bxSwr8Sg/8u9HGVivfdG8OpUM+qjuV5gey5xttNLK3BZDrAlco8RkJZryAD40flmJZrWXJmcr2HhJJUnqG4Z3MSziEgW1u1JnnY3f/BFdgYsA54SgdUGdQP3aqzSjIpGK01/vjrXvifHazSANjvl0AUE5i6AarMw2biEKB2ySUDp8idC5w12GpqDrhZ/QkW8yBSa87KbkMYXuRA2Gq1fYbQx3YJraw0UgZ4M3fFKpt6raxxM5j0sWHlULD7dAZMERvNESVrKG3tQ7B39WAD8QLGYc45DFEGOhKv5Fv8510h5sXK502IvGpI4FDwz2rbtAgJ0j+16db5wCSW5ThvNPhCheyciajc8dU1B5tJzZN/ksBpzne4Xf9gOLZ9ZU0+3Z5gHVvTS/YpxBFwiFpmL7dvGxew0cXGSsG5UTBlgr7i0SX0WhY4Djjo8IfPwrvvA0QaCFamdYXKqBsSHgEyXS9zgGIFPt2jWdhaS+sAa//5SXcWro0OdiKPuwEzLgj759ke1sHRnvO735dYn5whVbzlGyLBh3L0CAwEAAaNQME4wDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wHwYDVR0jBBgwFoAUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wDQYJKoZIhvcNAQELBQADggIBAHFIazRLs3itnZKllPnboSd6sHbzeJURKehx8GJPvIC+xWlwWyFO5+GHmgc3yh/SVd3Xja/k8Ud59WEYTjyJJWTw0Jygx37rHW7VGn2HDuy/x0D+els+S8HeLD1toPFMepjIXJn7nHLhtmzTPlDWDrhiaYsls/k5Izf89xYnI4euuOY2+1gsweJqFGfbznqyqy8xLyzoZ6bvBJtgeY+G3i/9Be14HseSNa4FvI1Oze/l2gUu1IXzN6DGWR/lxEyt+TncJfBGKbjafYrfSh3zsE4N3TU7BeOL5INirOMjre/jVgB1YQG5qLVaPoz6mdn75AbBBm5a5ahApLiKqzy/hP+1rWgw8Ikb7vbUqov/bnY3IlIU6XcPJTCDb9aRZQkStvYpQd82XTyxD/T0GgRLnUj5Uv6iZlikFx1KNj0YNS2T3gyvL++J9B0Y6gAkiG0EtNplz7Pomsv5pVdmHVdKMjqWw5/6zYzVmu5cXFtR384Ti1qwML1xkD6TC3VIv88rKIEjrkY2c+v1frh9fRJ2OmzXmML9NgHTjEiJR2Ib2iNrMKxkuTIs9oxKZgrJtJKvdU9qJJKM5PnZuNuHhGs6A/9gt9OccetYeQvVSqeEmQluWfcunQn9C9Vwi2BJIiVJh4IdWZf5/e2PlSSQ9CJjz2bKI17pzdxOmjQfE0JSF7Xt"

.field private static final blacklist TAG:Ljava/lang/String; = "PIF"

.field private static final blacklist VENDING_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static blacklist sInstance:Landroid/security/pif/PlayIntegritySpoofService;


# instance fields
.field private final blacklist mBuildFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mConfigLoaded:Z

.field private volatile blacklist mDebug:Z

.field private final blacklist mLoadLock:Ljava/lang/Object;

.field private volatile blacklist mSignatureSpoofed:Z

.field private volatile blacklist mSpoofBuild:Z

.field private volatile blacklist mSpoofPhotos:Z

.field private volatile blacklist mSpoofProps:Z

.field private volatile blacklist mSpoofProvider:Z

.field private volatile blacklist mSpoofSignature:Z

.field private volatile blacklist mSpoofVendingBuild:Z

.field private volatile blacklist mSpoofVendingSdk:Z

.field private final blacklist mSystemProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mVerboseLogs:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 17

    .line 38
    const-string v15, "FINGERPRINT"

    const-string v16, "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"

    const-string v1, "BRAND"

    const-string v2, "google"

    const-string v3, "MANUFACTURER"

    const-string v4, "Google"

    const-string v5, "DEVICE"

    const-string v6, "marlin"

    const-string v7, "PRODUCT"

    const-string v8, "marlin"

    const-string v9, "HARDWARE"

    const-string v10, "marlin"

    const-string v11, "ID"

    const-string v12, "QP1A.191005.007.A3"

    const-string v13, "MODEL"

    const-string v14, "Pixel XL"

    invoke-static/range {v1 .. v16}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->PIXEL_XL_PROPS:Ljava/util/Map;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->PRIV_PKGS:Landroid/util/ArraySet;

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_TENSOR:Landroid/util/ArraySet;

    .line 53
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_NEXUS:Landroid/util/ArraySet;

    .line 56
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    const-string v13, "com.google.android.feature.GOOGLE_BUILD"

    const-string v14, "com.google.android.feature.GOOGLE_EXPERIENCE"

    const-string v1, "com.google.android.apps.photos.PIXEL_2019_PRELOAD"

    const-string v2, "com.google.android.apps.photos.PIXEL_2019_MIDYEAR_PRELOAD"

    const-string v3, "com.google.android.apps.photos.PIXEL_2018_PRELOAD"

    const-string v4, "com.google.android.apps.photos.PIXEL_2017_PRELOAD"

    const-string v5, "com.google.android.feature.PIXEL_2021_MIDYEAR_EXPERIENCE"

    const-string v6, "com.google.android.feature.PIXEL_2020_EXPERIENCE"

    const-string v7, "com.google.android.feature.PIXEL_2020_MIDYEAR_EXPERIENCE"

    const-string v8, "com.google.android.feature.PIXEL_2019_EXPERIENCE"

    const-string v9, "com.google.android.feature.PIXEL_2019_MIDYEAR_EXPERIENCE"

    const-string v10, "com.google.android.feature.PIXEL_2018_EXPERIENCE"

    const-string v11, "com.google.android.feature.PIXEL_2017_EXPERIENCE"

    const-string v12, "com.google.android.feature.PIXEL_EXPERIENCE"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    const-string v14, "com.google.android.apps.dialer.call_recording_audio"

    const-string v15, "com.google.android.apps.dialer.SUPPORTED"

    const-string v1, "com.google.android.feature.ASI"

    const-string v2, "com.google.android.feature.ANDROID_ONE_EXPERIENCE"

    const-string v3, "com.google.android.feature.GOOGLE_FI_BUNDLED"

    const-string v4, "com.google.android.feature.LILY_EXPERIENCE"

    const-string v5, "com.google.android.feature.TURBO_PRELOAD"

    const-string v6, "com.google.android.feature.WELLBEING"

    const-string v7, "com.google.lens.feature.IMAGE_INTEGRATION"

    const-string v8, "com.google.lens.feature.CAMERA_INTEGRATION"

    const-string v9, "com.google.photos.trust_debug_certs"

    const-string v10, "com.google.android.feature.AER_OPTIMIZED"

    const-string v11, "com.google.android.feature.NEXT_GENERATION_ASSISTANT"

    const-string v12, "android.software.game_service"

    const-string v13, "com.google.android.feature.EXCHANGE_6_2"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_TENSOR:Landroid/util/ArraySet;

    const-string v10, "com.google.android.feature.PIXEL_2022_MIDYEAR_EXPERIENCE"

    const-string v11, "com.google.android.feature.PIXEL_2021_EXPERIENCE"

    const-string v1, "com.google.android.feature.PIXEL_2026_EXPERIENCE"

    const-string v2, "com.google.android.feature.PIXEL_2026_MIDYEAR_EXPERIENCE"

    const-string v3, "com.google.android.feature.PIXEL_2025_EXPERIENCE"

    const-string v4, "com.google.android.feature.PIXEL_2025_MIDYEAR_EXPERIENCE"

    const-string v5, "com.google.android.feature.PIXEL_2024_EXPERIENCE"

    const-string v6, "com.google.android.feature.PIXEL_2024_MIDYEAR_EXPERIENCE"

    const-string v7, "com.google.android.feature.PIXEL_2023_EXPERIENCE"

    const-string v8, "com.google.android.feature.PIXEL_2023_MIDYEAR_EXPERIENCE"

    const-string v9, "com.google.android.feature.PIXEL_2022_EXPERIENCE"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_NEXUS:Landroid/util/ArraySet;

    const-string v1, "com.google.android.feature.GOOGLE_BUILD"

    const-string v2, "com.google.android.feature.GOOGLE_EXPERIENCE"

    const-string v3, "com.google.android.apps.photos.NEXUS_PRELOAD"

    const-string v4, "com.google.android.apps.photos.nexus_preload"

    const-string v5, "com.google.android.feature.PIXEL_EXPERIENCE"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->PRIV_PKGS:Landroid/util/ArraySet;

    const-string v1, "com.google.android.apps.pixel.agent"

    const-string v2, "com.google.android.apps.pixel.creativeassistant"

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.apps.photos"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofBuild:Z

    .line 153
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProps:Z

    .line 154
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProvider:Z

    .line 155
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    .line 156
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingBuild:Z

    .line 157
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingSdk:Z

    .line 158
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofPhotos:Z

    .line 159
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    .line 161
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    .line 162
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    .line 164
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    .line 165
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSignatureSpoofed:Z

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mLoadLock:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method private blacklist ensureLoaded()V
    .locals 2

    .line 181
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mLoadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 184
    :cond_1
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->loadConfigInternal()V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 465
    nop

    .line 466
    :goto_0
    if-eqz p1, :cond_0

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 471
    goto :goto_0

    .line 473
    :cond_0
    new-instance p1, Ljava/lang/NoSuchFieldException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' not found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/security/pif/PlayIntegritySpoofService;
    .locals 2

    const-class v0, Landroid/security/pif/PlayIntegritySpoofService;

    monitor-enter v0

    .line 172
    :try_start_0
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Landroid/security/pif/PlayIntegritySpoofService;

    invoke-direct {v1}, Landroid/security/pif/PlayIntegritySpoofService;-><init>()V

    sput-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;

    .line 174
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;

    invoke-direct {v1}, Landroid/security/pif/PlayIntegritySpoofService;->loadConfig()V

    .line 176
    :cond_0
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;

    invoke-direct {v1}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 177
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 171
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 557
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 558
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 557
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    :cond_1
    return v1
.end method

.method private blacklist loadConfig()V
    .locals 2

    .line 189
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mLoadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->loadConfigInternal()V

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist loadConfigInternal()V
    .locals 6

    .line 195
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 196
    const-string v1, "PIF"

    if-nez v0, :cond_1

    .line 197
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez v0, :cond_0

    const-string v0, "ActivityManager not ready, skipping PIF config load"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void

    .line 203
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/SpoofBridge;->getPifConfig()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {}, Landroid/app/SpoofBridge;->getPifPhotos()Ljava/lang/String;

    move-result-object v0

    .line 205
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "true"

    .line 206
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofPhotos:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    nop

    .line 212
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 213
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 215
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 223
    :cond_4
    iput v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    .line 224
    iput-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofBuild:Z

    .line 225
    iput-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProps:Z

    .line 226
    iput-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProvider:Z

    .line 227
    iput-boolean v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    .line 228
    iput-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingBuild:Z

    .line 229
    iput-boolean v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingSdk:Z

    .line 230
    iput-boolean v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    .line 233
    :try_start_1
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 236
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string/jumbo v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    invoke-direct {p0, v2}, Landroid/security/pif/PlayIntegritySpoofService;->parseJson(Ljava/lang/String;)V

    goto :goto_2

    .line 240
    :cond_5
    invoke-direct {p0, v2}, Landroid/security/pif/PlayIntegritySpoofService;->parseProp(Ljava/lang/String;)V

    .line 243
    :goto_2
    iput-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIF config loaded, fields="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", props="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    .line 245
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    const-string v2, "SECURITY_PATCH"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 251
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    const-string/jumbo v3, "ro.build.version.security_patch"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    const-string/jumbo v3, "ro.vendor.build.security_patch"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    const-string/jumbo v3, "ro.system.build.version.security_patch"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    const-string/jumbo v3, "ro.product.build.version.security_patch"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :cond_6
    goto :goto_3

    .line 256
    :catchall_0
    move-exception v0

    .line 257
    const-string v2, "Failed to load PIF config"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    :goto_3
    return-void

    .line 216
    :cond_7
    :goto_4
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 217
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 218
    iput-boolean v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    .line 219
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez v0, :cond_8

    const-string v0, "No PIF config in Settings.Secure"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_8
    return-void

    .line 207
    :catchall_1
    move-exception v0

    .line 208
    const-string v2, "Failed to fetch PIF config from system_server"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    return-void
.end method

.method private blacklist parseJson(Ljava/lang/String;)V
    .locals 3

    .line 285
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 287
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 290
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 301
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 298
    :pswitch_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextNull()V

    .line 299
    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 296
    goto :goto_1

    .line 292
    :pswitch_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 293
    nop

    .line 304
    :goto_1
    invoke-direct {p0, p1, v1}, Landroid/security/pif/PlayIntegritySpoofService;->processKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 309
    goto :goto_3

    .line 285
    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 307
    :catch_0
    move-exception p1

    .line 308
    const-string v0, "PIF"

    const-string v1, "Failed to parse JSON config"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist parseProp(Ljava/lang/String;)V
    .locals 6

    .line 262
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 263
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    .line 264
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 268
    if-gtz v4, :cond_1

    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 271
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 273
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 274
    if-ltz v4, :cond_2

    .line 275
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 278
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 280
    :cond_3
    invoke-direct {p0, v5, v3}, Landroid/security/pif/PlayIntegritySpoofService;->processKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_5
    return-void
.end method

.method private blacklist processKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "spoofProps"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "spoofBuild"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "spoofVendingBuild"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "DEBUG"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "VERBOSE_LOGS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "spoofProvider"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "spoofVendingSdk"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "spoofSignature"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "verboseLogs"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string/jumbo v3, "true"

    const-string v4, "1"

    packed-switch v0, :pswitch_data_0

    .line 344
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_9

    .line 341
    :pswitch_0
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :cond_2
    :goto_2
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    .line 342
    goto/16 :goto_a

    .line 338
    :pswitch_1
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingSdk:Z

    .line 339
    goto/16 :goto_a

    .line 335
    :pswitch_2
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingBuild:Z

    .line 336
    goto/16 :goto_a

    .line 332
    :pswitch_3
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :cond_8
    :goto_5
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    .line 333
    goto :goto_a

    .line 329
    :pswitch_4
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    move v1, v2

    :cond_a
    :goto_6
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProvider:Z

    .line 330
    goto :goto_a

    .line 326
    :pswitch_5
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    move v1, v2

    :cond_c
    :goto_7
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProps:Z

    .line 327
    goto :goto_a

    .line 323
    :pswitch_6
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    :cond_e
    :goto_8
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofBuild:Z

    .line 324
    goto :goto_a

    .line 317
    :pswitch_7
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_a

    .line 318
    :catch_0
    move-exception p1

    .line 319
    iput v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    .line 321
    goto :goto_a

    .line 347
    :cond_f
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 345
    :cond_10
    :goto_9
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x792addaf -> :sswitch_8
        -0x3e289451 -> :sswitch_7
        -0x27aa0e3a -> :sswitch_6
        -0x262787e6 -> :sswitch_5
        -0x1f448194 -> :sswitch_4
        0x3de9e33 -> :sswitch_3
        0x19b8c8fa -> :sswitch_2
        0x474bace5 -> :sswitch_1
        0x480fafe7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 502
    const-string v0, "PIF"

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 511
    :cond_0
    :try_start_0
    const-class v1, Landroid/os/Build;

    invoke-direct {p0, v1, p1}, Landroid/security/pif/PlayIntegritySpoofService;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 512
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0

    .line 513
    :cond_1
    const-class v1, Landroid/os/Build$VERSION;

    invoke-direct {p0, v1, p1}, Landroid/security/pif/PlayIntegritySpoofService;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 514
    const-class v1, Landroid/os/Build$VERSION;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 520
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "]: "

    const-string v6, "["

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 524
    :try_start_1
    iget p3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    const/4 v2, 0x2

    if-le p3, v2, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " (unchanged)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 526
    return-void

    .line 529
    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 532
    const-class v8, Ljava/lang/String;

    if-ne v4, v8, :cond_4

    .line 533
    move-object v4, p2

    goto :goto_1

    .line 534
    :cond_4
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_5

    .line 535
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 536
    :cond_5
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_6

    .line 537
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    .line 538
    :cond_6
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_7

    .line 539
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 546
    :goto_1
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIF/Java:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    goto :goto_2

    .line 541
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported field type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 543
    return-void

    .line 516
    :cond_8
    iget p2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-le p2, v2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Field not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 517
    :cond_9
    return-void

    .line 551
    :catch_0
    move-exception p2

    .line 552
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to spoof "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    :goto_2
    return-void

    .line 503
    :cond_a
    :goto_3
    iget p2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is empty, skipping"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_b
    return-void
.end method

.method private blacklist spoofSdkInt()V
    .locals 6

    .line 479
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    const-string v1, "SDK_INT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    const/16 v2, 0x20

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    goto :goto_1

    .line 485
    :cond_0
    :goto_0
    nop

    .line 488
    :goto_1
    :try_start_1
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 489
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 490
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 491
    if-eq v3, v2, :cond_1

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    const-string v1, "PIF/Java:DG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDK_INT]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    goto :goto_2

    .line 496
    :catch_1
    move-exception v0

    .line 497
    const-string v1, "PIF"

    const-string v2, "Failed to spoof SDK_INT"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist getBuildFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getRomSignatureBytes()[B
    .locals 2

    .line 607
    const-string v0, "MIIFyTCCA7GgAwIBAgIVALyxxl+zDS9SL68SzOr48309eAZyMA0GCSqGSIb3DQEBCwUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAgFw0yMjExMDExODExMzVaGA8yMDUyMTEwMTE4MTEzNVowdDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC0dvb2dsZSBJbmMuMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsqtalIy/nctKlrhd1UVoDffFGnDf9GLi0QQhsVoJkfF16vDDydZJOycG7/kQziRZhFdcoMrIYZzzw0ppBjsSe1AiWMuKXwTBaEtxN99S1xsJiW4/QMI6N6kMunydWRMsbJ6aAxi1lVq0bxSwr8Sg/8u9HGVivfdG8OpUM+qjuV5gey5xttNLK3BZDrAlco8RkJZryAD40flmJZrWXJmcr2HhJJUnqG4Z3MSziEgW1u1JnnY3f/BFdgYsA54SgdUGdQP3aqzSjIpGK01/vjrXvifHazSANjvl0AUE5i6AarMw2biEKB2ySUDp8idC5w12GpqDrhZ/QkW8yBSa87KbkMYXuRA2Gq1fYbQx3YJraw0UgZ4M3fFKpt6raxxM5j0sWHlULD7dAZMERvNESVrKG3tQ7B39WAD8QLGYc45DFEGOhKv5Fv8510h5sXK502IvGpI4FDwz2rbtAgJ0j+16db5wCSW5ThvNPhCheyciajc8dU1B5tJzZN/ksBpzne4Xf9gOLZ9ZU0+3Z5gHVvTS/YpxBFwiFpmL7dvGxew0cXGSsG5UTBlgr7i0SX0WhY4Djjo8IfPwrvvA0QaCFamdYXKqBsSHgEyXS9zgGIFPt2jWdhaS+sAa//5SXcWro0OdiKPuwEzLgj759ke1sHRnvO735dYn5whVbzlGyLBh3L0CAwEAAaNQME4wDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wHwYDVR0jBBgwFoAUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wDQYJKoZIhvcNAQELBQADggIBAHFIazRLs3itnZKllPnboSd6sHbzeJURKehx8GJPvIC+xWlwWyFO5+GHmgc3yh/SVd3Xja/k8Ud59WEYTjyJJWTw0Jygx37rHW7VGn2HDuy/x0D+els+S8HeLD1toPFMepjIXJn7nHLhtmzTPlDWDrhiaYsls/k5Izf89xYnI4euuOY2+1gsweJqFGfbznqyqy8xLyzoZ6bvBJtgeY+G3i/9Be14HseSNa4FvI1Oze/l2gUu1IXzN6DGWR/lxEyt+TncJfBGKbjafYrfSh3zsE4N3TU7BeOL5INirOMjre/jVgB1YQG5qLVaPoz6mdn75AbBBm5a5ahApLiKqzy/hP+1rWgw8Ikb7vbUqov/bnY3IlIU6XcPJTCDb9aRZQkStvYpQd82XTyxD/T0GgRLnUj5Uv6iZlikFx1KNj0YNS2T3gyvL++J9B0Y6gAkiG0EtNplz7Pomsv5pVdmHVdKMjqWw5/6zYzVmu5cXFtR384Ti1qwML1xkD6TC3VIv88rKIEjrkY2c+v1frh9fRJ2OmzXmML9NgHTjEiJR2Ib2iNrMKxkuTIs9oxKZgrJtJKvdU9qJJKM5PnZuNuHhGs6A/9gt9OccetYeQvVSqeEmQluWfcunQn9C9Vwi2BJIiVJh4IdWZf5/e2PlSSQ9CJjz2bKI17pzdxOmjQfE0JSF7Xt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSpoofedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 564
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 565
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProps:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    iget-object v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 568
    if-eqz v1, :cond_1

    return-object v1

    .line 570
    :cond_1
    iget-object v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 571
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 572
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 573
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 575
    :cond_2
    goto :goto_0

    .line 577
    :cond_3
    return-object v0

    .line 565
    :cond_4
    :goto_1
    return-object v0
.end method

.method public blacklist getSystemProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getVerboseLogs()I
    .locals 1

    .line 591
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    return v0
.end method

.method public blacklist hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 3

    .line 623
    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 625
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 626
    const/4 v1, 0x1

    if-eqz v0, :cond_8

    sget-object v2, Landroid/security/pif/PlayIntegritySpoofService;->PRIV_PKGS:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 627
    invoke-virtual {p0, v0}, Landroid/security/pif/PlayIntegritySpoofService;->shouldSpoofPhotos(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 629
    :cond_1
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 630
    :cond_2
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_TENSOR:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 631
    :cond_3
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_NEXUS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 633
    :cond_4
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 634
    :cond_5
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 635
    :cond_6
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_TENSOR:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 636
    :cond_7
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_NEXUS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 640
    :cond_8
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 641
    :cond_9
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 643
    :cond_a
    return-object p2
.end method

.method public blacklist isConfigLoaded()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    return v0
.end method

.method public blacklist isDroidGuard(Ljava/lang/String;)Z
    .locals 1

    .line 365
    const-string v0, "com.google.android.gms.unstable"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist isGmsProcess(Ljava/lang/String;)Z
    .locals 2

    .line 360
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 361
    :cond_0
    const-string v1, "/com.google.android.gms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/com.android.vending"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public blacklist isSpoofProviderEnabled()Z
    .locals 1

    .line 586
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 587
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProvider:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSpoofSignatureEnabled()Z
    .locals 1

    .line 581
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 582
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isVending(Ljava/lang/String;)Z
    .locals 1

    .line 369
    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist logBuildFields()V
    .locals 10

    .line 647
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    return-void

    .line 648
    :cond_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    const-string v5, " = "

    const-string v6, "PIF"

    if-ge v3, v1, :cond_1

    aget-object v7, v0, v3

    .line 650
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Build."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    goto :goto_1

    .line 651
    :catch_0
    move-exception v4

    .line 648
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 654
    :cond_1
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 656
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build.VERSION."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 658
    goto :goto_3

    .line 657
    :catch_1
    move-exception v3

    .line 654
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 660
    :cond_2
    return-void
.end method

.method public blacklist shouldSpoof(Ljava/lang/String;)Z
    .locals 2

    .line 354
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 355
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 356
    :cond_0
    const-string v0, "com.google.android.gms.unstable"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public blacklist shouldSpoofPhotos(Ljava/lang/String;)Z
    .locals 1

    .line 611
    const-string v0, "com.google.android.apps.photos"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 612
    :cond_0
    iget-boolean p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofPhotos:Z

    return p1
.end method

.method public blacklist spoofBuildFields(Ljava/lang/String;)V
    .locals 3

    .line 373
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 374
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/pif/PlayIntegritySpoofService;->isVending(Ljava/lang/String;)Z

    move-result v0

    .line 377
    invoke-virtual {p0, p1}, Landroid/security/pif/PlayIntegritySpoofService;->isDroidGuard(Ljava/lang/String;)Z

    move-result p1

    .line 379
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 381
    :cond_1
    const-string p1, "PIF"

    if-eqz v0, :cond_6

    .line 382
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingBuild:Z

    if-nez v0, :cond_3

    .line 383
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez v0, :cond_2

    const-string v0, "Vending build spoofing disabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_2
    return-void

    .line 386
    :cond_3
    iget-object p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 387
    const-string v1, "SDK_INT"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 388
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "PS"

    invoke-direct {p0, v1, v0, v2}, Landroid/security/pif/PlayIntegritySpoofService;->spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    goto :goto_0

    .line 390
    :cond_5
    return-void

    .line 393
    :cond_6
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofBuild:Z

    if-nez v0, :cond_8

    .line 394
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez v0, :cond_7

    const-string v0, "Build spoofing disabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_7
    return-void

    .line 398
    :cond_8
    iget-object p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "DG"

    invoke-direct {p0, v1, v0, v2}, Landroid/security/pif/PlayIntegritySpoofService;->spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    goto :goto_1

    .line 405
    :cond_9
    iget-boolean p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingSdk:Z

    if-eqz p1, :cond_a

    .line 406
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->spoofSdkInt()V

    .line 408
    :cond_a
    return-void
.end method

.method public blacklist spoofPhotosProps()V
    .locals 4

    .line 616
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->PIXEL_XL_PROPS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 617
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Photos"

    invoke-direct {p0, v2, v1, v3}, Landroid/security/pif/PlayIntegritySpoofService;->spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    goto :goto_0

    .line 619
    :cond_0
    const-string v0, "PIF"

    const-string v1, "Photos spoofing enabled - device appears as Pixel XL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method public blacklist spoofSignature()V
    .locals 9

    .line 411
    const-string v0, "PIF"

    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSignatureSpoofed:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 413
    :cond_0
    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "MIIFyTCCA7GgAwIBAgIVALyxxl+zDS9SL68SzOr48309eAZyMA0GCSqGSIb3DQEBCwUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAgFw0yMjExMDExODExMzVaGA8yMDUyMTEwMTE4MTEzNVowdDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC0dvb2dsZSBJbmMuMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsqtalIy/nctKlrhd1UVoDffFGnDf9GLi0QQhsVoJkfF16vDDydZJOycG7/kQziRZhFdcoMrIYZzzw0ppBjsSe1AiWMuKXwTBaEtxN99S1xsJiW4/QMI6N6kMunydWRMsbJ6aAxi1lVq0bxSwr8Sg/8u9HGVivfdG8OpUM+qjuV5gey5xttNLK3BZDrAlco8RkJZryAD40flmJZrWXJmcr2HhJJUnqG4Z3MSziEgW1u1JnnY3f/BFdgYsA54SgdUGdQP3aqzSjIpGK01/vjrXvifHazSANjvl0AUE5i6AarMw2biEKB2ySUDp8idC5w12GpqDrhZ/QkW8yBSa87KbkMYXuRA2Gq1fYbQx3YJraw0UgZ4M3fFKpt6raxxM5j0sWHlULD7dAZMERvNESVrKG3tQ7B39WAD8QLGYc45DFEGOhKv5Fv8510h5sXK502IvGpI4FDwz2rbtAgJ0j+16db5wCSW5ThvNPhCheyciajc8dU1B5tJzZN/ksBpzne4Xf9gOLZ9ZU0+3Z5gHVvTS/YpxBFwiFpmL7dvGxew0cXGSsG5UTBlgr7i0SX0WhY4Djjo8IfPwrvvA0QaCFamdYXKqBsSHgEyXS9zgGIFPt2jWdhaS+sAa//5SXcWro0OdiKPuwEzLgj759ke1sHRnvO735dYn5whVbzlGyLBh3L0CAwEAAaNQME4wDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wHwYDVR0jBBgwFoAUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wDQYJKoZIhvcNAQELBQADggIBAHFIazRLs3itnZKllPnboSd6sHbzeJURKehx8GJPvIC+xWlwWyFO5+GHmgc3yh/SVd3Xja/k8Ud59WEYTjyJJWTw0Jygx37rHW7VGn2HDuy/x0D+els+S8HeLD1toPFMepjIXJn7nHLhtmzTPlDWDrhiaYsls/k5Izf89xYnI4euuOY2+1gsweJqFGfbznqyqy8xLyzoZ6bvBJtgeY+G3i/9Be14HseSNa4FvI1Oze/l2gUu1IXzN6DGWR/lxEyt+TncJfBGKbjafYrfSh3zsE4N3TU7BeOL5INirOMjre/jVgB1YQG5qLVaPoz6mdn75AbBBm5a5ahApLiKqzy/hP+1rWgw8Ikb7vbUqov/bnY3IlIU6XcPJTCDb9aRZQkStvYpQd82XTyxD/T0GgRLnUj5Uv6iZlikFx1KNj0YNS2T3gyvL++J9B0Y6gAkiG0EtNplz7Pomsv5pVdmHVdKMjqWw5/6zYzVmu5cXFtR384Ti1qwML1xkD6TC3VIv88rKIEjrkY2c+v1frh9fRJ2OmzXmML9NgHTjEiJR2Ib2iNrMKxkuTIs9oxKZgrJtJKvdU9qJJKM5PnZuNuHhGs6A/9gt9OccetYeQvVSqeEmQluWfcunQn9C9Vwi2BJIiVJh4IdWZf5/e2PlSSQ9CJjz2bKI17pzdxOmjQfE0JSF7Xt"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>([B)V

    .line 414
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 415
    new-instance v4, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;

    invoke-direct {v4, v2, v1}, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;-><init>(Landroid/os/Parcelable$Creator;Landroid/content/pm/Signature;)V

    .line 418
    :try_start_0
    const-class v1, Landroid/content/pm/PackageInfo;

    const-string v2, "CREATOR"

    invoke-direct {p0, v1, v2}, Landroid/security/pif/PlayIntegritySpoofService;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 419
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 420
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 421
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 425
    nop

    .line 428
    :try_start_1
    const-class v1, Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "sPackageInfoCache"

    invoke-direct {p0, v1, v4}, Landroid/security/pif/PlayIntegritySpoofService;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 430
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 431
    if-eqz v4, :cond_1

    .line 432
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "clear"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 433
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    iget-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear PackageInfoCache: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    :goto_0
    :try_start_2
    const-class v1, Landroid/os/Parcel;

    const-string v4, "mCreators"

    invoke-direct {p0, v1, v4}, Landroid/security/pif/PlayIntegritySpoofService;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 443
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 444
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 445
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 448
    goto :goto_1

    .line 446
    :catch_1
    move-exception v1

    .line 447
    iget-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear Parcel mCreators: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_4
    :goto_1
    :try_start_3
    const-class v1, Landroid/os/Parcel;

    const-string/jumbo v4, "sPairedCreators"

    invoke-direct {p0, v1, v4}, Landroid/security/pif/PlayIntegritySpoofService;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 453
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 454
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 455
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 458
    goto :goto_2

    .line 456
    :catch_2
    move-exception v1

    .line 457
    iget-boolean v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clear Parcel sPairedCreators: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_6
    :goto_2
    iput-boolean v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSignatureSpoofed:Z

    .line 461
    const-string v1, "Signature spoofing enabled via Parcelable.Creator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void

    .line 422
    :catch_3
    move-exception v1

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t replace PackageInfoCreator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 411
    :cond_7
    :goto_3
    return-void
.end method
