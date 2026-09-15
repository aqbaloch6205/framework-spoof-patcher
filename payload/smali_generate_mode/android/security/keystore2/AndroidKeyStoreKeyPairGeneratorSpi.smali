.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$ED25519;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$XDH;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$EC;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$RSA;
    }
.end annotation


# static fields
.field private static final blacklist ALGORITHM_ED25519:I = 0x4b4

.field private static final blacklist ALGORITHM_XDH:I = 0x4b3

.field private static final blacklist CURVE_ED_25519:Ljava/lang/String;

.field private static final blacklist CURVE_X_25519:Ljava/lang/String;

.field private static final blacklist EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final blacklist RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final blacklist RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final blacklist RSA_MIN_KEY_SIZE:I = 0x200

.field private static final blacklist SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreKeyPairGeneratorSpi"


# instance fields
.field private blacklist mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

.field private blacklist mEcCurveName:Ljava/lang/String;

.field private blacklist mEntryAlias:Ljava/lang/String;

.field private blacklist mEntryNamespace:I

.field private blacklist mJcaKeyAlgorithm:Ljava/lang/String;

.field private blacklist mKeySizeBits:I

.field private blacklist mKeyStore:Landroid/security/KeyStore2;

.field private blacklist mKeymasterAlgorithm:I

.field private blacklist mKeymasterBlockModes:[I

.field private blacklist mKeymasterDigests:[I

.field private blacklist mKeymasterEncryptionPaddings:[I

.field private blacklist mKeymasterMgf1Digests:[I

.field private blacklist mKeymasterPurposes:[I

.field private blacklist mKeymasterSignaturePaddings:[I

.field private final blacklist mOriginalKeymasterAlgorithm:I

.field private blacklist mRSAPublicExponent:Ljava/lang/Long;

.field private blacklist mRng:Ljava/security/SecureRandom;

.field private blacklist mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method public static synthetic blacklist $r8$lambda$Uq-ej-_uP9op_zzRJcYZYnWQBFU(Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->lambda$constructKeyGenerationArguments$5(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    .line 164
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    .line 165
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    .line 170
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp224r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp256r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "prime256v1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp384r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-521"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp521r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    .line 194
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    .line 223
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    .line 224
    return-void
.end method

.method private blacklist addAlgorithmSpecificParameters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 1163
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v0, :pswitch_data_0

    .line 1172
    :pswitch_0
    new-instance p1, Ljava/security/ProviderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1170
    :pswitch_1
    goto :goto_0

    .line 1165
    :pswitch_2
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1165
    const v2, 0x500000c8

    invoke-static {v2, v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    nop

    .line 1174
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist addAttestationParameters(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 859
    const-string v0, "Unable to retrieve MEID"

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v1

    .line 861
    if-eqz v1, :cond_e

    .line 862
    const v2, -0x6ffffd3c

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 868
    sget-object v1, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    .line 870
    :goto_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 872
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 870
    const v2, -0x6ffffd3a

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    sget-object v1, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    .line 877
    :goto_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 879
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 877
    const v2, -0x6ffffd39

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    sget-object v1, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 883
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object v1, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    .line 884
    :goto_2
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 886
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 884
    const v2, -0x6ffffd38

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    sget-object v1, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 890
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object v1, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    .line 891
    :goto_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 893
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 891
    const v2, -0x6ffffd34

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    sget-object v1, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 897
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_4

    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    .line 898
    :goto_4
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 900
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 898
    const v2, -0x6ffffd33

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    :cond_5
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationIds()[I

    move-result-object v1

    .line 905
    array-length v2, v1

    if-nez v2, :cond_6

    .line 906
    return-void

    .line 908
    :cond_6
    new-instance v2, Landroid/util/ArraySet;

    array-length v3, v1

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 909
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_5
    if-ge v5, v3, :cond_7

    aget v6, v1, v5

    .line 910
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 909
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 912
    :cond_7
    nop

    .line 913
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_9

    .line 914
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v1, v3

    goto :goto_7

    .line 916
    :cond_9
    :goto_6
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 917
    const-string/jumbo v5, "phone"

    invoke-virtual {v1, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 918
    if-eqz v1, :cond_d

    .line 922
    :goto_7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 923
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 971
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown device ID type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 966
    :pswitch_0
    const v5, 0x700002d0

    invoke-static {v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    goto/16 :goto_a

    .line 951
    :pswitch_1
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    goto :goto_9

    .line 952
    :catch_0
    move-exception v5

    .line 953
    const-string v6, "AndroidKeyStoreKeyPairGeneratorSpi"

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    move-object v5, v3

    .line 956
    :goto_9
    if-eqz v5, :cond_a

    .line 959
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 961
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 959
    const v6, -0x6ffffd35

    invoke-static {v6, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    goto :goto_a

    .line 957
    :cond_a
    new-instance p1, Landroid/security/keystore/DeviceIdAttestationException;

    invoke-direct {p1, v0}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 931
    :pswitch_2
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    .line 932
    if-eqz v5, :cond_b

    .line 935
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 937
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 935
    const v6, -0x6ffffd36

    invoke-static {v6, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    .line 940
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 941
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 943
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 941
    const v6, -0x6ffffd2d

    invoke-static {v6, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 933
    :cond_b
    new-instance p1, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v0, "Unable to retrieve IMEI"

    invoke-direct {p1, v0}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 925
    :pswitch_3
    nop

    .line 927
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 925
    const v6, -0x6ffffd37

    invoke-static {v6, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    nop

    .line 973
    :cond_c
    :goto_a
    goto/16 :goto_8

    .line 919
    :cond_d
    new-instance p1, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v0, "Unable to access telephony service"

    invoke-direct {p1, v0}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 975
    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist buildAndCheckAttestKeyDescriptor(Landroid/security/keystore/KeyGenParameterSpec;)Landroid/system/keystore2/KeyDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 445
    const/4 v1, 0x0

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 446
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1

    .line 449
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyChallenge(Landroid/security/keystore/KeyGenParameterSpec;)V

    .line 450
    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-direct {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyPurpose([Landroid/system/keystore2/Authorization;)V

    .line 451
    invoke-direct {p0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeySecurityLevel(Landroid/security/keystore/KeyGenParameterSpec;Landroid/system/keystore2/KeyEntryResponse;)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    nop

    .line 455
    return-object v0

    .line 452
    :catch_0
    move-exception p1

    .line 453
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Invalid attestKeyAlias"

    invoke-direct {v0, v1, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 457
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist buildKeyGenParameterSpecFromLegacy(Landroid/security/KeyPairGeneratorSpec;I)Landroid/security/keystore/KeyGenParameterSpec;
    .locals 10

    .line 516
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 562
    :pswitch_0
    new-instance p1, Ljava/security/ProviderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported algorithm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 518
    :pswitch_1
    new-instance p2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 519
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {p2, v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 524
    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    const-string v3, "NONE"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 531
    goto :goto_0

    .line 533
    :pswitch_2
    new-instance p2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 534
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {p2, v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 540
    const-string v8, "SHA-384"

    const-string v9, "SHA-512"

    const-string v3, "NONE"

    const-string v4, "MD5"

    const-string v5, "SHA-1"

    const-string v6, "SHA-224"

    const-string v7, "SHA-256"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 550
    const-string v1, "PKCS1Padding"

    const-string v2, "OAEPPadding"

    const-string v3, "NoPadding"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 554
    const-string v1, "PKCS1"

    const-string v2, "PSS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 559
    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 560
    nop

    .line 566
    :goto_0
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 567
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 569
    :cond_0
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 570
    nop

    .line 571
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 570
    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 573
    :cond_1
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 574
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 575
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 576
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 577
    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 579
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist checkAttestKeyChallenge(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 462
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 466
    return-void

    .line 463
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "AttestKey specified but no attestation challenge provided"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist checkAttestKeyPurpose(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 398
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "PURPOSE_ATTEST_KEY may not be specified with any other purposes"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkAttestKeyPurpose([Landroid/system/keystore2/Authorization;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 470
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda2;-><init>()V

    .line 473
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 477
    return-void

    .line 474
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Invalid attestKey, does not have PURPOSE_ATTEST_KEY"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist checkAttestKeySecurityLevel(Landroid/security/keystore/KeyGenParameterSpec;Landroid/system/keystore2/KeyEntryResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 481
    iget-object p2, p2, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget p2, p2, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 482
    :goto_0
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result p1

    if-eq p1, p2, :cond_2

    .line 483
    if-eqz p2, :cond_1

    .line 484
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Invalid security level: Cannot sign non-StrongBox key with StrongBox attestKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 489
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Invalid security level: Cannot sign StrongBox key with non-StrongBox attestKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 494
    :cond_2
    return-void
.end method

.method private blacklist checkCorrectKeyPurposeForCurve(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v0, "x25519 may only be used for key agreement."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 419
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result p1

    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->hasOnlyAllowedPurposeForEd25519(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 420
    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "ed25519 may not be used for key agreement."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_4
    :goto_1
    return-void
.end method

.method private static blacklist checkValidKeySize(IIZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1193
    packed-switch p0, :pswitch_data_0

    .line 1216
    :pswitch_0
    new-instance p1, Ljava/security/ProviderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1195
    :pswitch_1
    if-eqz p2, :cond_1

    const/16 p0, 0x100

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1196
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported StrongBox EC key size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bits. Supported: 256"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1200
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 1201
    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported StrongBox EC: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1204
    :cond_3
    :goto_1
    sget-object p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    .line 1205
    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported EC key size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bits. Supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1210
    :pswitch_2
    const/16 p0, 0x200

    if-lt p1, p0, :cond_5

    const/16 p0, 0x2000

    if-gt p1, p0, :cond_5

    .line 1218
    :goto_2
    return-void

    .line 1211
    :cond_5
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist constructKeyGenerationArguments()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    const v1, 0x30000003

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    const v1, 0x10000002

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 987
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 988
    invoke-static {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->keySizeAndNameToEcCurve(ILjava/lang/String;)I

    move-result v1

    .line 987
    const v2, 0x1000000a

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 997
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1002
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda5;-><init>(Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1030
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1035
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1041
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 1043
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1044
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 1045
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    .line 1044
    const v2, 0x60000190

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_1
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1049
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 1051
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    .line 1049
    const v2, 0x60000191

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_2
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1055
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 1057
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    .line 1055
    const v2, 0x60000192

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    :cond_3
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1061
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 1063
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    .line 1061
    const v2, 0x600003f1

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_4
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1067
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 1069
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    .line 1067
    const v2, 0x600003f0

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_5
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1073
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 1075
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    .line 1073
    const v2, -0x7ffffc12

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBignum(ILjava/math/BigInteger;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    :cond_6
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1079
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 1081
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    .line 1079
    const v2, -0x6ffffc11

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_7
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 1086
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 1088
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v1

    .line 1086
    const v2, 0x30000195

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_8
    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->addAlgorithmSpecificParameters(Ljava/util/List;)V

    .line 1094
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1095
    const v1, 0x700000ca

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    :cond_9
    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->addAttestationParameters(Ljava/util/List;)V

    .line 1100
    return-object v0
.end method

.method private blacklist constructKeyImportArguments()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    const v1, 0x30000003

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    const v1, 0x10000002

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1112
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 1113
    invoke-static {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->keySizeAndNameToEcCurve(ILjava/lang/String;)I

    move-result v1

    .line 1112
    const v2, 0x1000000a

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1122
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1127
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1132
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1137
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1143
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 1145
    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->addAlgorithmSpecificParameters(Ljava/util/List;)V

    .line 1147
    const v1, 0x700001f7

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    return-object v0
.end method

.method private blacklist encodeCertificateChain(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 844
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 845
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 847
    :try_start_0
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    nop

    .line 851
    goto :goto_0

    .line 848
    :catch_0
    move-exception p1

    .line 849
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to encode certificate"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 852
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private static blacklist getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1356
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1357
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p0, v3

    .line 1358
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1357
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1360
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1362
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 1363
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1362
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1365
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1366
    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1367
    return-object p1
.end method

.method private static blacklist getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .locals 5

    .line 1237
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1239
    return-object v1

    .line 1241
    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    return-object v1

    .line 1245
    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1247
    return-object v1

    .line 1249
    :cond_2
    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    .line 1349
    :pswitch_0
    new-instance p1, Ljava/security/ProviderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported algorithm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1251
    :pswitch_1
    nop

    .line 1252
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object p0

    .line 1253
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object p2

    .line 1251
    invoke-static {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 1255
    nop

    .line 1256
    nop

    .line 1257
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p2, v0

    move v2, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1258
    invoke-static {v3}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v4

    .line 1259
    if-ne v4, p1, :cond_3

    .line 1261
    nop

    .line 1262
    nop

    .line 1263
    move p2, v3

    goto :goto_2

    .line 1266
    :cond_3
    if-ne p2, v0, :cond_4

    .line 1268
    nop

    .line 1269
    goto :goto_1

    .line 1273
    :cond_4
    if-ge v2, p1, :cond_5

    .line 1276
    if-le v4, v2, :cond_6

    .line 1277
    nop

    .line 1278
    goto :goto_1

    .line 1283
    :cond_5
    if-ge v4, v2, :cond_6

    if-lt v4, p1, :cond_6

    .line 1285
    nop

    .line 1286
    nop

    .line 1290
    :goto_1
    move p2, v3

    move v2, v4

    :cond_6
    goto :goto_0

    .line 1291
    :cond_7
    :goto_2
    if-ne p2, v0, :cond_8

    .line 1292
    return-object v1

    .line 1294
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "WithECDSA"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1302
    :pswitch_2
    nop

    .line 1305
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object p0

    .line 1304
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object p0

    .line 1303
    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    .line 1307
    if-nez p0, :cond_9

    .line 1309
    return-object v1

    .line 1312
    :cond_9
    nop

    .line 1313
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object p0

    .line 1314
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object p2

    .line 1312
    invoke-static {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 1321
    add-int/lit16 p1, p1, -0xf0

    .line 1322
    nop

    .line 1323
    nop

    .line 1324
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p2, v0

    move v2, p2

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1325
    invoke-static {v3}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v4

    .line 1326
    if-le v4, p1, :cond_a

    .line 1328
    goto :goto_3

    .line 1330
    :cond_a
    if-ne p2, v0, :cond_b

    .line 1332
    nop

    .line 1333
    goto :goto_4

    .line 1336
    :cond_b
    if-le v4, v2, :cond_c

    .line 1337
    nop

    .line 1338
    nop

    .line 1341
    :goto_4
    move p2, v3

    move v2, v4

    :cond_c
    goto :goto_3

    .line 1342
    :cond_d
    if-ne p2, v0, :cond_e

    .line 1343
    return-object v1

    .line 1345
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "WithRSA"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getDefaultKeySize(I)I
    .locals 3

    .line 1177
    packed-switch p0, :pswitch_data_0

    .line 1183
    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :pswitch_1
    const/16 p0, 0x100

    return p0

    .line 1181
    :pswitch_2
    const/16 p0, 0x800

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getKeymasterAlgorithmFromLegacy(ILandroid/security/KeyPairGeneratorSpec;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 498
    invoke-virtual {p2}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object p2

    .line 499
    if-eqz p2, :cond_0

    .line 502
    nop

    .line 503
    :try_start_0
    invoke-static {p2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    goto :goto_0

    .line 505
    :catch_0
    move-exception p1

    .line 506
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Invalid key type in parameters"

    invoke-direct {p2, v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 510
    :cond_0
    :goto_0
    return p1
.end method

.method private static blacklist getMgf1DigestSetterFlag()Z
    .locals 3

    .line 1154
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->mgf1DigestSetterV2()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    const-string v1, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v2, "Cannot read MGF1 Digest setter flag value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist hasOnlyAllowedPurposeForEd25519(I)Z
    .locals 3

    .line 436
    and-int/lit16 v0, p0, 0x8c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 437
    :goto_0
    and-int/lit16 p0, p0, -0x8d

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    .line 438
    :goto_1
    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private blacklist initAlgorithmSpecificParameters()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 603
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const-string v2, " vs "

    const-string v3, ": "

    const-string v4, " and "

    const/4 v5, -0x1

    packed-switch v1, :pswitch_data_0

    .line 670
    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :pswitch_1
    instance-of v1, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v1, :cond_7

    .line 639
    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    .line 640
    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 641
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v6, 0x4b3

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 642
    const-string/jumbo v6, "x25519"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "XDH algorithm only supports x25519 curve."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    :goto_0
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v6, 0x4b4

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 646
    const-string v6, "ed25519"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 647
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Ed25519 algorithm only supports ed25519 curve."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_3
    :goto_1
    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 651
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 650
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 652
    if-eqz v1, :cond_6

    .line 657
    iget v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v6, v5, :cond_4

    .line 658
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_2

    .line 659
    :cond_4
    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_5

    goto :goto_2

    .line 660
    :cond_5
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EC key size must match  between "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 653
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC curve name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_7
    if-nez v0, :cond_8

    :goto_2
    goto/16 :goto_5

    .line 665
    :cond_8
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "EC may only use ECGenParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :pswitch_2
    nop

    .line 606
    instance-of v1, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v1, :cond_b

    .line 607
    move-object v1, v0

    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 608
    iget v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v6, v5, :cond_9

    .line 609
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_3

    .line 610
    :cond_9
    iget v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v7

    if-ne v6, v7, :cond_a

    .line 615
    :goto_3
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 616
    goto :goto_4

    .line 611
    :cond_a
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA key size must match  between "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 613
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 616
    :cond_b
    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 620
    :goto_4
    if-nez v0, :cond_c

    .line 621
    sget-object v0, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    .line 623
    :cond_c
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_e

    .line 627
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eq v1, v5, :cond_d

    sget-object v1, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 628
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_d

    .line 634
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    .line 635
    nop

    .line 672
    :goto_5
    return-void

    .line 629
    :cond_d
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported RSA public exponent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Maximum supported value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_e
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA public exponent must be positive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    :cond_f
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RSA may only use RSAKeyGenParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist isCurve25519(Ljava/lang/String;)Z
    .locals 2

    .line 426
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 427
    return v0

    .line 429
    :cond_0
    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    .line 430
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 429
    :cond_2
    return v0
.end method

.method private blacklist isPropertyEmptyOrUnknown(Ljava/lang/String;)Z
    .locals 1

    .line 1371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static blacklist keySizeAndNameToEcCurve(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 228
    sparse-switch p0, :sswitch_data_0

    .line 241
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported EC curve keysize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :sswitch_0
    const/4 p0, 0x3

    return p0

    .line 237
    :sswitch_1
    const/4 p0, 0x2

    return p0

    .line 232
    :sswitch_2
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 233
    const/4 p0, 0x4

    return p0

    .line 235
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 230
    :sswitch_3
    const/4 p0, 0x0

    return p0

    :sswitch_data_0
    .sparse-switch
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_2
        0x180 -> :sswitch_1
        0x209 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$checkAttestKeyPurpose$0(Landroid/system/keystore2/Authorization;)Z
    .locals 2

    .line 470
    iget-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v1, 0x20000001

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object p0, p0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 471
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 470
    :goto_0
    return p0
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$1(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 993
    nop

    .line 994
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 993
    const v0, 0x20000001

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$2(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 998
    nop

    .line 999
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 998
    const v0, 0x20000004

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$3(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1008
    nop

    .line 1009
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1008
    const v0, 0x200000cb

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$4(ILjava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1022
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 1023
    nop

    .line 1024
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1023
    const p2, 0x200000cb

    invoke-static {p2, p0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$constructKeyGenerationArguments$5(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2

    .line 1003
    nop

    .line 1004
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1003
    const v1, 0x20000006

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1007
    iget-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {p2, v0}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1018
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getMgf1DigestSetterFlag()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1019
    const-string p2, "SHA-1"

    invoke-static {p2}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result p2

    .line 1021
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    invoke-static {v0, v1}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 1029
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$6(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1031
    nop

    .line 1032
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1031
    const v0, 0x20000006

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$7(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1036
    nop

    .line 1037
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1036
    const v0, 0x20000005

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyImportArguments$10(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1128
    nop

    .line 1129
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1128
    const v0, 0x20000006

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyImportArguments$11(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1133
    nop

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1133
    const v0, 0x20000006

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyImportArguments$12(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1138
    nop

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1138
    const v0, 0x20000005

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyImportArguments$8(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1118
    nop

    .line 1119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1118
    const v0, 0x20000001

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyImportArguments$9(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 1123
    nop

    .line 1124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1123
    const v0, 0x20000004

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    return-void
.end method

.method private blacklist resetAll()V
    .locals 2

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 584
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    .line 585
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 586
    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    .line 587
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    .line 588
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    .line 589
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 590
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 591
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    .line 592
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    .line 593
    const/4 v1, 0x0

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    .line 594
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 595
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    .line 596
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 597
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 598
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    .line 599
    return-void
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .locals 15

    .line 676
    const-string v1, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v0, "generateKeyPair"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_15

    .line 682
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 683
    move v4, v2

    goto :goto_0

    .line 684
    :cond_0
    move v4, v3

    .line 687
    :goto_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 689
    move v10, v3

    goto :goto_1

    .line 690
    :cond_1
    move v10, v5

    .line 692
    :goto_1
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    const/4 v12, 0x7

    add-int/2addr v6, v12

    div-int/lit8 v6, v6, 0x8

    .line 693
    invoke-static {v0, v6}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v11

    .line 696
    new-instance v7, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v7}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 697
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iput-object v0, v7, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 698
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 699
    move v2, v5

    goto :goto_2

    .line 700
    :cond_2
    nop

    :goto_2
    iput v2, v7, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 701
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    int-to-long v8, v0

    iput-wide v8, v7, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 702
    const/4 v2, 0x0

    iput-object v2, v7, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 704
    nop

    .line 706
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v4}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    .line 709
    nop

    .line 710
    nop

    .line 711
    const-string v0, "TrickyStoreTeeCheck"

    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "trickystore_attestation_key"

    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 712
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 714
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-interface {v0, v8}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService;->getInstance()Landroid/security/trickystore/TrickyStoreService;

    move-result-object v8

    .line 716
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-virtual {v8, v9, v0}, Landroid/security/trickystore/TrickyStoreService;->needGenerate(I[Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 717
    move v0, v3

    goto :goto_3

    .line 716
    :cond_3
    move v0, v5

    .line 721
    :goto_3
    goto :goto_4

    .line 719
    :catch_0
    move-exception v0

    .line 720
    :try_start_2
    const-string v8, "Failed to check TrickyStore needGenerate"

    invoke-static {v1, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    :cond_4
    move v0, v5

    :goto_4
    if-eqz v0, :cond_12

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generating software key for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;

    invoke-direct {v8}, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;-><init>()V

    .line 728
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iput v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->keySize:I

    .line 729
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iput v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->algorithm:I

    .line 730
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 731
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateSerial:Ljava/math/BigInteger;

    .line 732
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateNotBefore:Ljava/util/Date;

    .line 733
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateNotAfter:Ljava/util/Date;

    .line 734
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_5
    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    .line 735
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->ecCurveName:Ljava/lang/String;

    .line 736
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->attestationChallenge:[B

    .line 738
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    if-eqz v0, :cond_6

    .line 739
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    array-length v9, v0

    move v11, v5

    :goto_6
    if-ge v11, v9, :cond_6

    aget v13, v0, v11

    iget-object v14, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 741
    :cond_6
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    if-eqz v0, :cond_7

    .line 742
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    array-length v9, v0

    move v11, v5

    :goto_7
    if-ge v11, v9, :cond_7

    aget v13, v0, v11

    iget-object v14, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->digest:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 745
    :cond_7
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v0
    :try_end_2
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_d

    .line 747
    :try_start_3
    sget-object v0, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 748
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_8

    :cond_8
    sget-object v0, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    .line 749
    :goto_8
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->brand:[B

    .line 751
    sget-object v0, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 752
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_9

    :cond_9
    sget-object v0, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    .line 753
    :goto_9
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->device:[B

    .line 755
    sget-object v0, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 756
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_a

    :cond_a
    sget-object v0, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    .line 757
    :goto_a
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->product:[B

    .line 759
    sget-object v0, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 760
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_b

    :cond_b
    sget-object v0, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    .line 761
    :goto_b
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->manufacturer:[B

    .line 763
    sget-object v0, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 764
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_c

    :cond_c
    sget-object v0, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    .line 765
    :goto_c
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, v8, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->model:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 768
    goto :goto_d

    .line 766
    :catch_1
    move-exception v0

    .line 767
    :try_start_4
    const-string v9, "Failed to set device properties for attestation"

    invoke-static {v1, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    :cond_d
    :goto_d
    invoke-static {v8}, Landroid/security/trickystore/CertificateGenerator;->generateKeyPair(Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;)Ljava/security/KeyPair;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_11

    .line 774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 775
    nop

    .line 776
    invoke-static {v0, v8, v4, v9}, Landroid/security/trickystore/CertificateGenerator;->generateCertificateChain(Ljava/security/KeyPair;Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;II)Ljava/util/List;

    move-result-object v4

    .line 778
    if-eqz v4, :cond_10

    .line 780
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v11

    .line 782
    nop

    .line 783
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->constructKeyImportArguments()Ljava/util/Collection;

    move-result-object v9

    .line 782
    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    .line 785
    nop

    .line 786
    nop

    .line 788
    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8
    :try_end_4
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v8, :cond_f

    .line 790
    :try_start_5
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    .line 791
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v3, :cond_e

    .line 792
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->encodeCertificateChain(Ljava/util/List;)[B

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 796
    :cond_e
    move-object v4, v2

    move-object v2, v8

    goto :goto_e

    .line 794
    :catch_2
    move-exception v0

    .line 795
    :try_start_6
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to encode certificate chain"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 799
    :cond_f
    move-object v4, v2

    :goto_e
    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v8, v7, v2, v4}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    .line 801
    goto :goto_f

    .line 778
    :cond_10
    new-instance v0, Ljava/security/ProviderException;

    const-string v2, "Failed to generate software certificate chain"

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_11
    new-instance v0, Ljava/security/ProviderException;

    const-string v2, "Failed to generate software key"

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_12
    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

    .line 803
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->constructKeyGenerationArguments()Ljava/util/Collection;

    move-result-object v9

    .line 802
    invoke-virtual/range {v6 .. v11}, Landroid/security/KeyStoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    .line 806
    :goto_f
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    .line 807
    invoke-static {v7, v0, v6, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;

    move-result-object v0
    :try_end_6
    .catch Landroid/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 809
    nop

    .line 810
    :try_start_7
    new-instance v2, Ljava/security/KeyPair;

    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_7
    .catch Landroid/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 829
    nop

    .line 810
    return-object v2

    .line 826
    :catch_3
    move-exception v0

    goto :goto_10

    .line 822
    :catch_4
    move-exception v0

    goto :goto_11

    .line 811
    :catch_5
    move-exception v0

    goto :goto_12

    .line 829
    :catchall_0
    move-exception v0

    move-object v2, v0

    move v3, v5

    goto :goto_14

    .line 826
    :catch_6
    move-exception v0

    move v3, v5

    .line 827
    :goto_10
    :try_start_8
    new-instance v2, Ljava/security/ProviderException;

    const-string v4, "Failed to generate key pair via TrickyStore"

    invoke-direct {v2, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 822
    :catch_7
    move-exception v0

    move v3, v5

    .line 824
    :goto_11
    new-instance v2, Ljava/security/ProviderException;

    const-string v4, "Failed to construct key object from newly generated key pair."

    invoke-direct {v2, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 811
    :catch_8
    move-exception v0

    move v3, v5

    .line 812
    :goto_12
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 816
    new-instance v2, Ljava/security/ProviderException;

    goto :goto_13

    .line 814
    :pswitch_0
    new-instance v2, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v4, "Failed to generated key pair."

    invoke-direct {v2, v4, v0}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 816
    :goto_13
    const-string v4, "Failed to generate key pair."

    invoke-direct {v2, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 817
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_13

    .line 818
    new-instance v0, Landroid/security/keystore/SecureKeyImportUnavailableException;

    invoke-direct {v0, v2}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 820
    :cond_13
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 829
    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_14
    if-nez v3, :cond_14

    .line 831
    :try_start_9
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v7}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_9
    .catch Landroid/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_9

    .line 837
    goto :goto_15

    .line 832
    :catch_9
    move-exception v0

    .line 833
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    if-eq v3, v12, :cond_14

    .line 834
    const-string v3, "Failed to delete newly generated key after generation failed unexpectedly."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    :cond_14
    :goto_15
    throw v2

    .line 678
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x44
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .locals 1

    .line 249
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/security/keystore/KeyGenParameterSpec;

    .line 250
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " or "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v0, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " required to initialize this KeyPairGenerator"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    .line 260
    nop

    .line 262
    const-string v0, " or "

    if-eqz p1, :cond_e

    .line 269
    nop

    .line 270
    :try_start_0
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v2, 0x4b3

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v2, 0x4b4

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x3

    .line 273
    :goto_1
    instance-of v2, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v2, :cond_2

    .line 274
    check-cast p1, Landroid/security/keystore/KeyGenParameterSpec;

    goto :goto_2

    .line 275
    :cond_2
    instance-of v2, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz v2, :cond_a

    .line 277
    check-cast p1, Landroid/security/KeyPairGeneratorSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :try_start_1
    invoke-direct {p0, v1, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getKeymasterAlgorithmFromLegacy(ILandroid/security/KeyPairGeneratorSpec;)I

    move-result v1

    .line 281
    invoke-direct {p0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->buildKeyGenParameterSpecFromLegacy(Landroid/security/KeyPairGeneratorSpec;I)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    nop

    .line 285
    nop

    .line 309
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    .line 311
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 312
    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    .line 313
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    .line 314
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->initAlgorithmSpecificParameters()V

    .line 315
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 316
    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getDefaultKeySize(I)I

    move-result v0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    .line 318
    :cond_3
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v2

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkValidKeySize(IIZLjava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_9

    .line 327
    :try_start_3
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v1

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    .line 330
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    .line 331
    nop

    .line 332
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 333
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 334
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    array-length v3, v1

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_5

    aget v5, v1, v4

    .line 336
    nop

    .line 337
    invoke-static {v5}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 339
    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 342
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ". See "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v0, Landroid/security/keystore/KeyGenParameterSpec;

    .line 344
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " documentation."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_5
    nop

    .line 350
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 351
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_4

    .line 354
    :cond_6
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    .line 356
    :goto_4
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 359
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object v1

    .line 360
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    .line 361
    nop

    .line 362
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 363
    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v2

    .line 364
    add-int/lit8 v2, v2, 0x1

    .line 365
    goto :goto_5

    .line 366
    :cond_7
    goto :goto_6

    .line 368
    :cond_8
    const-string v1, "SHA-1"

    .line 369
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    .line 375
    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    nop

    .line 380
    :try_start_4
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 381
    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 382
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object p2

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 384
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->buildAndCheckAttestKeyDescriptor(Landroid/security/keystore/KeyGenParameterSpec;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p2

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

    .line 385
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyPurpose(Landroid/security/keystore/KeyGenParameterSpec;)V

    .line 386
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkCorrectKeyPurposeForCurve(Landroid/security/keystore/KeyGenParameterSpec;)V

    .line 388
    nop

    .line 390
    nop

    .line 394
    return-void

    .line 376
    :catch_0
    move-exception p1

    .line 377
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 322
    :cond_9
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "KeyStore entry alias not provided"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :catch_1
    move-exception p1

    .line 283
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 285
    :cond_a
    instance-of p2, p1, Ljava/security/spec/NamedParameterSpec;

    if-eqz p2, :cond_d

    .line 286
    check-cast p1, Ljava/security/spec/NamedParameterSpec;

    .line 290
    invoke-virtual {p1}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 291
    invoke-virtual {p1}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    .line 292
    invoke-virtual {v1}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_7

    .line 298
    :cond_b
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported algorithm specified via NamedParameterSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {p1}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 293
    :cond_c
    :goto_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This KeyPairGenerator cannot be initialized using NamedParameterSpec. use "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 295
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v0, Landroid/security/KeyPairGeneratorSpec;

    .line 296
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_d
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported params class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    invoke-interface {p1}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Supported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Landroid/security/keystore/KeyGenParameterSpec;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Landroid/security/KeyPairGeneratorSpec;

    .line 306
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 390
    :catchall_0
    move-exception p1

    goto :goto_8

    .line 263
    :cond_e
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must supply params of type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 264
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v0, Landroid/security/KeyPairGeneratorSpec;

    .line 265
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 391
    :goto_8
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    .line 393
    throw p1
.end method
