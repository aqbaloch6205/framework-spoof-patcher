.class public final Landroid/security/trickystore/AttestationUtils;
.super Ljava/lang/Object;
.source "AttestationUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AttestationUtils"

.field private static blacklist sBootHash:[B

.field private static blacklist sBootKey:[B

.field private static volatile blacklist sTeeBroken:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Landroid/security/trickystore/AttestationUtils;->sTeeBroken:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bytesToHex([B)Ljava/lang/String;
    .locals 5

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 296
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist computeModuleHash()[B
    .locals 3

    .line 269
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 270
    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "AttestationUtils"

    const-string v2, "Failed to compute module hash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/16 v0, 0x20

    new-array v0, v0, [B

    return-object v0
.end method

.method public static blacklist convertPatchLevel(Ljava/lang/String;Z)I
    .locals 5

    .line 253
    :try_start_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 254
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    array-length p1, v0

    const/4 v4, 0x3

    if-lt p1, v4, :cond_0

    .line 255
    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x2710

    aget-object v1, v0, v1

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr p1, v1

    aget-object v0, v0, v3

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p1, p0

    .line 255
    return p1

    .line 258
    :cond_0
    array-length p1, v0

    if-lt p1, v3, :cond_1

    .line 259
    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p0

    return p1

    .line 263
    :cond_1
    goto :goto_0

    .line 261
    :catch_0
    move-exception p1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid patch level format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AttestationUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :goto_0
    const p0, 0x316a4

    return p0
.end method

.method private static blacklist extractBootHashFromTee()[B
    .locals 7

    .line 86
    const-string v0, "AndroidKeyStore"

    const-string v1, "AttestationUtils"

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "trickystore_attestation_key"

    .line 88
    const-string v4, "EC"

    invoke-static {v4, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    .line 90
    new-instance v5, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v6, 0xc

    invoke-direct {v5, v3, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v6, "SHA-256"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    const/16 v6, 0x20

    new-array v6, v6, [B

    .line 93
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v5

    .line 95
    invoke-virtual {v4, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 96
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 98
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 100
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_4

    array-length v5, v4

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 108
    :cond_0
    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 109
    const-string v6, "1.3.6.1.4.1.11129.2.1.17"

    invoke-virtual {v4, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 111
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 113
    if-nez v4, :cond_1

    .line 114
    const-string v0, "No attestation extension in certificate"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v2

    .line 118
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 122
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 126
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 128
    nop

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v5, v3, :cond_3

    .line 129
    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 130
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/16 v6, 0x2c0

    if-ne v4, v6, :cond_2

    .line 131
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 132
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v6, 0x4

    if-lt v4, v6, :cond_2

    .line 133
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 134
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extracted boot hash from TEE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-object v0

    .line 128
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    :cond_3
    const-string v0, "RootOfTrust not found in TEE enforced list"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v2

    .line 103
    :cond_4
    :goto_1
    const-string v4, "No certificate chain from AndroidKeyStore"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-object v2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v3, "Failed to extract boot hash from TEE"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-object v2
.end method

.method private static blacklist generateRandomBytes(I)[B
    .locals 1

    .line 278
    new-array p0, p0, [B

    .line 279
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 280
    return-object p0
.end method

.method public static blacklist getAttestVersion()I
    .locals 1

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 189
    const/16 v0, 0x190

    return v0

    .line 187
    :pswitch_0
    const/16 v0, 0x12c

    return v0

    .line 184
    :pswitch_1
    const/16 v0, 0xc8

    return v0

    .line 182
    :pswitch_2
    const/16 v0, 0x64

    return v0

    .line 179
    :pswitch_3
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getBootHash()[B
    .locals 2

    .line 43
    sget-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    if-nez v0, :cond_1

    .line 44
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getBootHashFromProp()[B

    move-result-object v0

    sput-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    .line 45
    sget-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/security/trickystore/AttestationUtils;->sTeeBroken:Z

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->extractBootHashFromTee()[B

    move-result-object v0

    sput-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    .line 48
    :cond_0
    sget-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    if-nez v0, :cond_1

    .line 49
    const-string v0, "AttestationUtils"

    const-string v1, "Failed to get boot hash from prop and TEE, using random bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/16 v0, 0x20

    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->generateRandomBytes(I)[B

    move-result-object v0

    sput-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    .line 53
    :cond_1
    sget-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    return-object v0
.end method

.method public static blacklist getBootHashFromProp()[B
    .locals 4

    .line 150
    const-string/jumbo v0, "ro.boot.vbmeta.digest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v2, "AttestationUtils"

    const-string v3, "Failed to parse vbmeta.digest"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    return-object v1

    .line 152
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static blacklist getBootKey()[B
    .locals 1

    .line 36
    sget-object v0, Landroid/security/trickystore/AttestationUtils;->sBootKey:[B

    if-nez v0, :cond_0

    .line 37
    const/16 v0, 0x20

    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->generateRandomBytes(I)[B

    move-result-object v0

    sput-object v0, Landroid/security/trickystore/AttestationUtils;->sBootKey:[B

    .line 39
    :cond_0
    sget-object v0, Landroid/security/trickystore/AttestationUtils;->sBootKey:[B

    return-object v0
.end method

.method public static blacklist getBootPatchLevel(Z)I
    .locals 2

    .line 220
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService;->getInstance()Landroid/security/trickystore/TrickyStoreService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/trickystore/TrickyStoreService;->getCustomPatchLevel()Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->boot:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 222
    iget-object v0, v0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->boot:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/security/trickystore/AttestationUtils;->parsePatchLevel(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 225
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/security/trickystore/AttestationUtils;->convertPatchLevel(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static blacklist getKeymasterVersion()I
    .locals 2

    .line 194
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getAttestVersion()I

    move-result v0

    .line 195
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x29

    :cond_0
    return v0
.end method

.method public static blacklist getOsVersion()I
    .locals 1

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 171
    const v0, 0x27100

    return v0

    .line 170
    :pswitch_0
    const v0, 0x249f0

    return v0

    .line 169
    :pswitch_1
    const v0, 0x222e0

    return v0

    .line 168
    :pswitch_2
    const v0, 0x1fbd0

    return v0

    .line 167
    :pswitch_3
    const v0, 0x1d524

    return v0

    .line 166
    :pswitch_4
    const v0, 0x1d4c0

    return v0

    .line 165
    :pswitch_5
    const v0, 0x1adb0

    return v0

    .line 164
    :pswitch_6
    const v0, 0x186a0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getPatchLevel(Z)I
    .locals 2

    .line 200
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService;->getInstance()Landroid/security/trickystore/TrickyStoreService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/trickystore/TrickyStoreService;->getCustomPatchLevel()Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->system:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, v0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->system:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/security/trickystore/AttestationUtils;->parsePatchLevel(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 205
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/security/trickystore/AttestationUtils;->convertPatchLevel(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static blacklist getVendorPatchLevel(Z)I
    .locals 2

    .line 210
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService;->getInstance()Landroid/security/trickystore/TrickyStoreService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/trickystore/TrickyStoreService;->getCustomPatchLevel()Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->vendor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 212
    iget-object v0, v0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->vendor:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/security/trickystore/AttestationUtils;->parsePatchLevel(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 215
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/security/trickystore/AttestationUtils;->convertPatchLevel(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static blacklist hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 285
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 286
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 287
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 288
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 286
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 290
    :cond_0
    return-object v1
.end method

.method public static blacklist initBootHash()V
    .locals 4

    .line 57
    const-string v0, "initBootHash: Starting boot hash initialization"

    const-string v1, "AttestationUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getBootHashFromProp()[B

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    sput-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initBootHash: Boot hash already set from prop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 64
    :cond_0
    const-string v0, "initBootHash: No prop set, attempting TEE extraction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->extractBootHashFromTee()[B

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    sput-object v0, Landroid/security/trickystore/AttestationUtils;->sBootHash:[B

    .line 68
    const-string v2, "initBootHash: TEE extraction successful, setting prop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->setVbmetaDigestProp(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "initBootHash: Failed to extract boot hash from TEE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void
.end method

.method public static blacklist isTeeBroken()Z
    .locals 1

    .line 32
    sget-boolean v0, Landroid/security/trickystore/AttestationUtils;->sTeeBroken:Z

    return v0
.end method

.method private static blacklist parsePatchLevel(Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 7

    .line 229
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-string/jumbo v1, "no"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "prop"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 233
    :cond_0
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 235
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-ne v2, v4, :cond_2

    .line 236
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 237
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 238
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 239
    if-eqz p1, :cond_1

    mul-int/lit16 v2, v2, 0x2710

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 240
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 241
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 242
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 243
    if-eqz p1, :cond_3

    mul-int/lit16 v2, v2, 0x2710

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v2, v1

    goto :goto_1

    :cond_3
    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 247
    :cond_4
    goto :goto_2

    .line 245
    :catch_0
    move-exception p1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse patch level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AttestationUtils"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :goto_2
    return-object v0

    .line 230
    :cond_5
    :goto_3
    return-object v0
.end method

.method public static blacklist setTeeBroken(Z)V
    .locals 0

    .line 28
    sput-boolean p0, Landroid/security/trickystore/AttestationUtils;->sTeeBroken:Z

    .line 29
    return-void
.end method

.method private static blacklist setVbmetaDigestProp(Ljava/lang/String;)V
    .locals 2

    .line 77
    const-string v0, "AttestationUtils"

    :try_start_0
    const-string/jumbo v1, "ro.boot.vbmeta.digest"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string p0, "Set ro.boot.vbmeta.digest property to TEE boot hash"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    const-string v1, "Failed to set vbmeta.digest property"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_0
    return-void
.end method
