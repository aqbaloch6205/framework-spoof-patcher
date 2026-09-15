.class public Landroid/security/keystore2/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;
    }
.end annotation


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "AndroidKeyStore"

.field public static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreSpi"

.field private static final blacklist sInHack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mKeyStore:Landroid/security/KeyStore2;

.field private blacklist mNamespace:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAliasesBatch(Landroid/security/keystore2/AndroidKeyStoreSpi;Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getAliasesBatch(Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    return-void
.end method

.method private static blacklist assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 717
    iget-object v0, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget v0, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v0, p1, :cond_1

    iget v0, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v0, v1, :cond_0

    iget-wide v2, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    int-to-long v4, p2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    return-void

    .line 720
    :cond_1
    :goto_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only replace keys with same alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " != "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v3, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " in the same target domain: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v3, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 723
    if-ne p1, v1, :cond_2

    .line 724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in the same target namespace: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getAliasesBatch(Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .locals 4

    .line 1152
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1153
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1154
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1153
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/security/KeyStore2;->listBatch(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1158
    :catch_0
    move-exception p1

    .line 1159
    const-string v0, "AndroidKeyStoreSpi"

    const-string v1, "Failed to list keystore entries."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1160
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/system/keystore2/KeyDescriptor;

    return-object p1
.end method

.method private blacklist getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;
    .locals 2

    .line 167
    if-eqz p1, :cond_1

    .line 171
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 174
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 175
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 176
    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 178
    const-string v0, "AndroidKeyStoreSpi"

    const-string v1, "Could not get key metadata from Keystore."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist getKeymasterEcCurve(Ljava/security/PrivateKey;)I
    .locals 3

    .line 681
    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_1

    .line 682
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 683
    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getKeymasterEcCurve(Ljava/lang/String;)I

    move-result v0

    .line 684
    if-ltz v0, :cond_0

    .line 685
    return v0

    .line 687
    :cond_0
    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/XECKey;

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 688
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/XECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/XECPrivateKey;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 689
    sget-object v2, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-interface {v0, v2}, Ljava/security/spec/AlgorithmParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    return v1

    .line 692
    :cond_2
    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XDH"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    return v1

    .line 696
    :cond_4
    instance-of v0, p1, Ljava/security/interfaces/EdECKey;

    if-eqz v0, :cond_5

    .line 697
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/EdECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/EdECPrivateKey;->getParams()Ljava/security/spec/NamedParameterSpec;

    move-result-object v0

    .line 698
    sget-object v2, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-interface {v0, v2}, Ljava/security/spec/AlgorithmParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 699
    return v1

    .line 702
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/PrivateKey;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 339
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    .line 341
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 347
    const-string v6, "SHA-384"

    const-string v7, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "SHA-1"

    const-string v4, "SHA-224"

    const-string v5, "SHA-256"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_0

    .line 354
    :cond_0
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 362
    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "MD5"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 372
    const-string v0, "PKCS1Padding"

    const-string v2, "OAEPPadding"

    const-string v3, "NoPadding"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 376
    const-string v0, "PKCS1"

    const-string v2, "PSS"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 381
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 385
    :goto_0
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 387
    invoke-virtual {p0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    return-object p0

    .line 383
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getMgf1DigestSetterFlag()Z
    .locals 3

    .line 267
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->mgf1DigestSetterV2()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "AndroidKeyStore"

    const-string v2, "Cannot read MGF1 Digest setter flag value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getTargetDomain()I
    .locals 2

    .line 162
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 163
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x2

    .line 162
    :goto_0
    return v0
.end method

.method private static blacklist hackCertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    .locals 5

    .line 275
    const-string v0, "AndroidKeyStoreSpi"

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    return-object p0

    .line 281
    :cond_1
    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 283
    :try_start_0
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService;->getInstance()Landroid/security/trickystore/TrickyStoreService;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Landroid/security/trickystore/TrickyStoreService;->hasKeyboxes()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 285
    nop

    .line 302
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 285
    return-object p0

    .line 288
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 289
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 290
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-virtual {v1, v2, v3}, Landroid/security/trickystore/TrickyStoreService;->needHack(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    invoke-static {p0}, Landroid/security/trickystore/CertificateHacker;->hackCertificateChain([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_3

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrickyStore: Hacked certificate chain for uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    nop

    .line 302
    sget-object p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 296
    return-object v1

    .line 299
    :catch_0
    move-exception v1

    .line 300
    :try_start_2
    const-string v2, "TrickyStore: Failed to hack certificate chain"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :cond_3
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 303
    nop

    .line 304
    return-object p0

    .line 302
    :catchall_0
    move-exception p0

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->sInHack:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 303
    throw p0

    .line 276
    :cond_4
    :goto_0
    return-object p0
.end method

.method private blacklist isKeyEntry(Ljava/lang/String;)Z
    .locals 1

    .line 1196
    if-eqz p1, :cond_1

    .line 1200
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 1203
    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1197
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic blacklist lambda$setPrivateKeyEntry$1(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 534
    nop

    .line 536
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result p1

    .line 534
    const v0, 0x20000001

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method static synthetic blacklist lambda$setSecretKeyEntry$2(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1

    .line 843
    nop

    .line 845
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result p1

    .line 843
    const v0, 0x20000001

    invoke-static {v0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    return-void
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/Boolean;
    .locals 1

    .line 122
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private blacklist makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 3

    .line 153
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 154
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 155
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 156
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 157
    const/4 p1, 0x0

    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 158
    return-object v0
.end method

.method private blacklist setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 392
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "SHA-1"

    .line 393
    nop

    .line 395
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_0

    .line 396
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v3

    move v8, v6

    move v12, v7

    goto :goto_1

    .line 397
    :cond_0
    instance-of v8, v3, Landroid/security/KeyStoreParameter;

    if-eqz v8, :cond_1

    .line 398
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v8

    .line 399
    check-cast v3, Landroid/security/KeyStoreParameter;

    .line 400
    move v12, v7

    move-object v3, v8

    move v8, v6

    goto :goto_1

    :cond_1
    instance-of v8, v3, Landroid/security/keystore/KeyProtection;

    if-eqz v8, :cond_1e

    .line 401
    check-cast v3, Landroid/security/keystore/KeyProtection;

    .line 402
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 408
    move v8, v6

    goto :goto_0

    .line 402
    :cond_2
    move v8, v7

    .line 412
    :goto_0
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 413
    move v12, v8

    const/4 v8, 0x2

    goto :goto_1

    .line 412
    :cond_3
    move v12, v8

    move v8, v6

    .line 423
    :goto_1
    if-eqz v2, :cond_1d

    array-length v9, v2

    if-eqz v9, :cond_1d

    .line 428
    array-length v9, v2

    new-array v10, v9, [Ljava/security/cert/X509Certificate;

    .line 429
    move v11, v7

    :goto_2
    array-length v13, v2

    if-ge v11, v13, :cond_6

    .line 430
    aget-object v13, v2, v11

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v13

    const-string v14, "X.509"

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "Certificates must be in X.509 format: invalid cert #"

    if-eqz v13, :cond_5

    .line 435
    aget-object v13, v2, v11

    instance-of v13, v13, Ljava/security/cert/X509Certificate;

    if-eqz v13, :cond_4

    .line 440
    aget-object v13, v2, v11

    check-cast v13, Ljava/security/cert/X509Certificate;

    aput-object v13, v10, v11

    .line 429
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 436
    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_5
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_6
    :try_start_0
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v14
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 448
    nop

    .line 456
    array-length v2, v2

    if-le v2, v6, :cond_9

    .line 461
    sub-int/2addr v9, v6

    new-array v2, v9, [[B

    .line 462
    nop

    .line 463
    move v13, v7

    move v15, v13

    :goto_3
    if-ge v13, v9, :cond_7

    .line 465
    add-int/lit8 v16, v13, 0x1

    :try_start_1
    aget-object v17, v10, v16

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v17

    aput-object v17, v2, v13

    .line 466
    move/from16 v17, v6

    aget-object v6, v2, v13

    array-length v6, v6
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v15, v6

    .line 469
    nop

    .line 463
    move/from16 v13, v16

    move/from16 v6, v17

    goto :goto_3

    .line 467
    :catch_0
    move-exception v0

    .line 468
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to encode certificate #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 476
    :cond_7
    move/from16 v17, v6

    new-array v6, v15, [B

    .line 477
    nop

    .line 478
    move v10, v7

    move v13, v10

    :goto_4
    if-ge v10, v9, :cond_8

    .line 479
    aget-object v15, v2, v10

    array-length v15, v15

    .line 480
    const/16 p3, 0x0

    aget-object v11, v2, v10

    invoke-static {v11, v7, v6, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    add-int/2addr v13, v15

    .line 482
    aput-object p3, v2, v10

    .line 478
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 484
    :cond_8
    goto :goto_5

    .line 485
    :cond_9
    move/from16 v17, v6

    const/16 p3, 0x0

    move-object/from16 v6, p3

    .line 488
    :goto_5
    invoke-direct {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v2

    .line 492
    instance-of v9, v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const-string v15, "Failed to store certificate and certificate chain"

    if-eqz v9, :cond_a

    .line 493
    move-object v3, v0

    check-cast v3, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 494
    invoke-virtual {v3}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v3

    .line 497
    iget v4, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v9, p1

    invoke-static {v9, v2, v4, v3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 500
    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 501
    iget-object v1, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    check-cast v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 502
    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 501
    invoke-virtual {v1, v0, v14, v6}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_2
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    .line 506
    nop

    .line 507
    return-void

    .line 504
    :catch_1
    move-exception v0

    .line 505
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v15, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 511
    :cond_a
    move-object/from16 v9, p1

    invoke-interface {v0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 512
    if-eqz v2, :cond_1c

    const-string v10, "PKCS#8"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 520
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v13

    .line 521
    if-eqz v13, :cond_1b

    .line 525
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 528
    nop

    .line 531
    :try_start_3
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v2

    .line 528
    const v10, 0x10000002

    invoke-static {v10, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v2

    new-instance v10, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;

    invoke-direct {v10, v11}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 539
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 540
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v2

    array-length v10, v2

    :goto_6
    if-ge v7, v10, :cond_b

    aget-object v18, v2, v7

    .line 541
    nop

    .line 543
    invoke-static/range {v18 .. v18}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 541
    move-object/from16 p3, v2

    const v2, 0x20000005

    invoke-static {v2, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    goto :goto_6

    .line 547
    :cond_b
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v5, :cond_c

    aget-object v10, v2, v7

    .line 548
    nop

    .line 550
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v10

    .line 548
    move-object/from16 p3, v2

    const v2, 0x20000004

    invoke-static {v2, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    goto :goto_7

    .line 553
    :cond_c
    nop

    .line 555
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    .line 556
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    .line 557
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 558
    array-length v5, v2

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v5, :cond_e

    aget v10, v2, v7

    .line 559
    nop

    .line 560
    invoke-static {v10}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 558
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 562
    :cond_d
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 565
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". See KeyProtection documentation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_e
    array-length v5, v2

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v5, :cond_14

    aget v10, v2, v7

    .line 572
    move-object/from16 p4, v2

    const v2, 0x20000006

    invoke-static {v2, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    const/4 v2, 0x2

    if-ne v10, v2, :cond_12

    .line 577
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isMgf1DigestsSpecified()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 578
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMgf1Digests()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 579
    nop

    .line 581
    invoke-static/range {v17 .. v17}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 579
    move-object/from16 v17, v4

    const v4, 0x200000cb

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    move-object/from16 v4, v17

    goto :goto_a

    :cond_f
    move-object/from16 v17, v4

    goto :goto_d

    .line 594
    :cond_10
    move-object/from16 v17, v4

    .line 596
    invoke-static/range {v17 .. v17}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 594
    const v4, 0x200000cb

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getMgf1DigestSetterFlag()Z

    move-result v2

    if-nez v2, :cond_13

    .line 599
    invoke-static/range {v17 .. v17}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 601
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v4

    array-length v10, v4

    move-object/from16 v18, v4

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v10, :cond_13

    aget-object v19, v18, v4

    .line 602
    move/from16 v20, v4

    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 605
    if-eq v4, v2, :cond_11

    .line 606
    move/from16 v19, v2

    const v2, 0x200000cb

    invoke-static {v2, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 605
    :cond_11
    move/from16 v19, v2

    const v2, 0x200000cb

    .line 601
    :goto_c
    add-int/lit8 v4, v20, 0x1

    move/from16 v2, v19

    goto :goto_b

    .line 576
    :cond_12
    move-object/from16 v17, v4

    .line 571
    :cond_13
    :goto_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    move-object/from16 v4, v17

    goto/16 :goto_9

    .line 616
    :cond_14
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v4, :cond_15

    aget-object v5, v2, v7

    .line 617
    nop

    .line 619
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 617
    const v10, 0x20000006

    invoke-static {v10, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 622
    :cond_15
    invoke-static {v11, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 623
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 624
    nop

    .line 625
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    .line 624
    const v4, 0x60000190

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_16
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 629
    nop

    .line 631
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    .line 629
    const v4, 0x60000191

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_17
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 635
    nop

    .line 637
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    .line 635
    const v4, 0x60000192

    invoke-static {v4, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_18
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_19

    .line 641
    nop

    .line 643
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v2

    .line 641
    const v3, 0x30000195

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_19
    nop

    .line 648
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_1a

    .line 649
    nop

    .line 651
    invoke-direct {v1, v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeymasterEcCurve(Ljava/security/PrivateKey;)I

    move-result v0

    .line 649
    const v2, 0x1000000a

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 656
    :cond_1a
    nop

    .line 659
    :try_start_4
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v8}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v8

    .line 662
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v9

    .line 664
    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v2
    :try_end_4
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_3

    .line 668
    :try_start_5
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 669
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v3, v2, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v0, v3, v14, v6}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_5
    .catch Landroid/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_2

    .line 673
    nop

    .line 677
    nop

    .line 678
    return-void

    .line 670
    :catch_2
    move-exception v0

    .line 671
    :try_start_6
    iget-object v1, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v1, v2}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 672
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v15, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Landroid/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_3

    .line 675
    :catch_3
    move-exception v0

    .line 676
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Failed to store private key"

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 654
    :catch_4
    move-exception v0

    .line 655
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 522
    :cond_1b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Private key did not export any key material"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_1c
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported private key export format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only private keys which export their key material in PKCS#8 format are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :catch_5
    move-exception v0

    .line 447
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Failed to encode certificate #0"

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 424
    :cond_1d
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1e
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported protection parameter class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 417
    invoke-interface {v3}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyProtection;

    .line 418
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/KeyStoreParameter;

    .line 419
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 732
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/security/keystore/KeyProtection;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported protection parameter class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 734
    invoke-interface {v2}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyProtection;

    .line 735
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_1
    :goto_0
    move-object v3, v2

    check-cast v3, Landroid/security/keystore/KeyProtection;

    .line 739
    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v4

    .line 741
    instance-of v5, v1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v5, :cond_3

    .line 742
    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 743
    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    iget-object v2, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 745
    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    .line 748
    iget v0, v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v5, p1

    invoke-static {v5, v4, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 751
    if-nez v3, :cond_2

    .line 755
    return-void

    .line 752
    :cond_2
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_3
    move-object/from16 v5, p1

    if-eqz v3, :cond_1c

    .line 764
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v4

    .line 765
    if-eqz v4, :cond_1b

    .line 768
    const-string v6, "RAW"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 772
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    .line 773
    if-eqz v12, :cond_19

    .line 778
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 781
    nop

    .line 783
    :try_start_0
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 782
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v4

    .line 785
    const v6, 0x10000002

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    const/16 v6, 0x80

    const v7, 0x30000008

    const v8, 0x20000005

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x1

    if-ne v4, v6, :cond_8

    .line 796
    nop

    .line 797
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v6

    .line 798
    if-eq v6, v9, :cond_7

    .line 804
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 807
    nop

    .line 808
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v14

    .line 809
    array-length v15, v14

    if-ne v15, v13, :cond_4

    aget v14, v14, v11

    if-ne v14, v6, :cond_4

    goto :goto_1

    .line 811
    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported digests specification: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 813
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 814
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supported for HMAC key algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 816
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_5
    :goto_1
    invoke-static {v6}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v1

    .line 820
    if-eq v1, v9, :cond_6

    .line 825
    invoke-static {v8, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-static {v7, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    goto :goto_3

    .line 821
    :cond_6
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 823
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_7
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 801
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_8
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 833
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    move v14, v11

    :goto_2
    if-ge v14, v6, :cond_9

    aget-object v15, v1, v14

    .line 834
    nop

    .line 836
    invoke-static {v15}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v15

    .line 834
    invoke-static {v8, v15}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 842
    :cond_9
    :goto_3
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v1

    new-instance v6, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda2;

    invoke-direct {v6, v10}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-static {v1, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 849
    nop

    .line 850
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v1

    and-int/2addr v1, v13

    if-eqz v1, :cond_b

    .line 851
    move-object v1, v2

    check-cast v1, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 852
    move v1, v13

    goto :goto_4

    .line 854
    :cond_a
    const v1, 0x70000007

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_b
    move v1, v11

    :goto_4
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v8, v11

    :goto_5
    if-ge v8, v6, :cond_f

    aget-object v14, v2, v8

    .line 861
    invoke-static {v14}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v15

    .line 862
    if-eqz v1, :cond_d

    .line 863
    invoke-static {v15}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v16

    if-eqz v16, :cond_c

    goto :goto_6

    .line 865
    :cond_c
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". See KeyProtection documentation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_d
    :goto_6
    const/16 v14, 0x20

    if-ne v4, v14, :cond_e

    if-ne v15, v14, :cond_e

    .line 873
    const/16 v14, 0x60

    invoke-static {v7, v14}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_e
    const v14, 0x20000004

    invoke-static {v14, v15}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 885
    :cond_f
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_18

    .line 889
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v11

    :goto_7
    if-ge v4, v2, :cond_10

    aget-object v6, v1, v4

    .line 890
    nop

    .line 892
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v6

    .line 890
    const v7, 0x20000006

    invoke-static {v7, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 896
    :cond_10
    invoke-static {v10, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 898
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 899
    nop

    .line 900
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    .line 899
    const v2, 0x60000190

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_11
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 904
    nop

    .line 906
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    .line 904
    const v2, 0x60000191

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_12
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 910
    nop

    .line 912
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    .line 910
    const v2, 0x60000192

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_13
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v1

    if-eq v1, v9, :cond_14

    .line 916
    nop

    .line 918
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v1

    .line 916
    const v2, 0x30000195

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    :cond_14
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isRollbackResistant()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 923
    const v1, 0x7000012f

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 929
    :cond_15
    nop

    .line 931
    nop

    .line 932
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 933
    move v11, v13

    .line 936
    :cond_16
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v13, 0x2

    goto :goto_8

    .line 937
    :cond_17
    nop

    :goto_8
    nop

    .line 940
    :try_start_1
    iget-object v1, v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v13}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v7

    .line 943
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v8

    .line 945
    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 949
    nop

    .line 950
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Failed to import secret key."

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 886
    :cond_18
    :try_start_2
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Signature paddings not supported for symmetric keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 927
    :catch_1
    move-exception v0

    .line 928
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 774
    :cond_19
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_1a
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported secret key material export format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_1b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only secret keys that export their key material are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_1c
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 954
    move-object/from16 v0, p0

    const-string v1, "Failed to import wrapped key. Keystore error code: "

    if-nez p3, :cond_7

    .line 958
    nop

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getTransformation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 962
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 964
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 965
    const-string v5, "RSA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 966
    const v4, 0x10000002

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    array-length v4, v2

    if-le v4, v5, :cond_0

    .line 976
    aget-object v4, v2, v5

    .line 977
    nop

    .line 979
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 977
    const v6, 0x20000004

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_0
    array-length v4, v2

    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 984
    aget-object v4, v2, v6

    .line 985
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 986
    if-eq v4, v5, :cond_1

    .line 987
    const v7, 0x20000006

    invoke-static {v7, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    check-cast v4, Landroid/security/keystore/KeyGenParameterSpec;

    .line 995
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 996
    nop

    .line 997
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 998
    if-eqz v4, :cond_2

    .line 999
    const v7, 0x20000005

    invoke-static {v7, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappingKeyAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v4

    .line 1008
    nop

    .line 1010
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1011
    iget-object v7, v0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v7, v4}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v7
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1015
    nop

    .line 1017
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 1019
    new-instance v9, Landroid/security/KeyStoreSecurityLevel;

    iget-object v10, v7, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v9, v10}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 1021
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v10

    const-class v11, Landroid/hardware/biometrics/BiometricManager;

    .line 1022
    invoke-virtual {v10, v11}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/biometrics/BiometricManager;

    .line 1024
    invoke-virtual {v10}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v10

    .line 1026
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    new-instance v12, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct {v12}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    .line 1029
    iput v5, v12, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 1030
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v13

    iput-wide v13, v12, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 1031
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    array-length v5, v10

    move v12, v3

    :goto_0
    if-ge v12, v5, :cond_3

    aget-wide v13, v10, v12

    .line 1034
    new-instance v15, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct {v15}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    .line 1035
    iput v6, v15, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 1036
    iput-wide v13, v15, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 1037
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1040
    :cond_3
    array-length v5, v2

    if-le v5, v6, :cond_5

    .line 1041
    aget-object v2, v2, v6

    .line 1042
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 1043
    if-ne v2, v6, :cond_5

    iget-object v2, v7, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v2, :cond_5

    iget-object v2, v7, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    if-eqz v2, :cond_5

    .line 1046
    iget-object v2, v7, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    .line 1048
    array-length v5, v2

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v2, v6

    .line 1051
    iget-object v7, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v10, 0x200000cb

    if-ne v7, v10, :cond_4

    .line 1056
    nop

    .line 1058
    const-string v2, "SHA-1"

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    .line 1056
    invoke-static {v10, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    goto :goto_2

    .line 1048
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1067
    :cond_5
    :goto_2
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1068
    nop

    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappedKeyBytes()[B

    move-result-object v6

    new-array v2, v3, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 1073
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 1068
    const/4 v7, 0x0

    move-object v5, v4

    move-object v3, v9

    move-object v4, v0

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Landroid/security/KeyStoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1083
    nop

    .line 1084
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1080
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1081
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1077
    :pswitch_0
    new-instance v0, Landroid/security/keystore/SecureKeyImportUnavailableException;

    const-string v1, "Could not import wrapped key"

    invoke-direct {v0, v1}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :catch_1
    move-exception v0

    .line 1013
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1014
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 971
    :cond_6
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Algorithm \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not supported for wrapping. Only RSA wrapping keys are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_7
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters are specified inside wrapped keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 2

    .line 244
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 247
    :catch_0
    move-exception p0

    .line 248
    const-string v0, "AndroidKeyStore"

    const-string v1, "Couldn\'t parse certificate in keystore"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist toCertificates([B)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 256
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 259
    :catch_0
    move-exception p0

    .line 260
    const-string v0, "AndroidKeyStore"

    const-string v1, "Couldn\'t parse certificates in keystore"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1166
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;-><init>(Landroid/security/keystore2/AndroidKeyStoreSpi;Landroid/security/keystore2/AndroidKeyStoreSpi-IA;)V

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    .line 1171
    if-eqz p1, :cond_1

    .line 1175
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1172
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1139
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 1141
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1142
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    goto :goto_0

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1145
    :cond_0
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2

    .line 222
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 224
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 225
    return-object v0

    .line 228
    :cond_0
    iget-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 229
    if-eqz v1, :cond_1

    .line 230
    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1

    .line 233
    :cond_1
    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object p1, p1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 234
    if-eqz p1, :cond_2

    .line 235
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1

    .line 239
    :cond_2
    return-object v0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 7

    .line 1224
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1225
    return-object v0

    .line 1227
    :cond_0
    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AndroidKeyStoreSpi"

    if-nez v1, :cond_1

    .line 1228
    const-string p1, "In engineGetCertificateAlias: only X.509 certificates are supported."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return-object v0

    .line 1233
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1237
    nop

    .line 1238
    if-nez p1, :cond_2

    .line 1239
    return-object v0

    .line 1242
    :cond_2
    nop

    .line 1244
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1245
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1246
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v4, v4

    .line 1245
    invoke-virtual {v1, v3, v4, v5}, Landroid/security/KeyStore2;->list(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1251
    goto :goto_0

    .line 1249
    :catch_0
    move-exception v1

    .line 1250
    const-string v3, "Failed to get list of keystore entries."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    .line 1253
    :goto_0
    nop

    .line 1254
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 1255
    iget-object v5, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v5

    .line 1256
    if-nez v5, :cond_3

    .line 1257
    goto :goto_2

    .line 1267
    :cond_3
    iget-object v6, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v6, v6, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v6, :cond_4

    .line 1268
    iget-object v5, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v5, v5, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1269
    iget-object p1, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    return-object p1

    .line 1271
    :cond_4
    iget-object v6, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v6, v6, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    .line 1272
    iget-object v5, v5, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v5, v5, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1273
    iget-object v0, v4, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 1254
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1277
    :cond_6
    return-object v0

    .line 1234
    :catch_1
    move-exception p1

    .line 1235
    const-string v1, "While trying to get the alias for a certificate."

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    return-object v0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 5

    .line 186
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 188
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v1, :cond_0

    goto :goto_2

    .line 192
    :cond_0
    iget-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 193
    if-nez v1, :cond_1

    .line 194
    return-object v0

    .line 199
    :cond_1
    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object p1, p1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 201
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 202
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object p1

    .line 204
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 206
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 207
    nop

    .line 208
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    aput-object v4, v2, v0

    move v0, v3

    goto :goto_0

    .line 211
    :cond_2
    goto :goto_1

    .line 212
    :cond_3
    new-array v2, v0, [Ljava/security/cert/Certificate;

    .line 215
    :goto_1
    const/4 p1, 0x0

    aput-object v1, v2, p1

    .line 217
    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->hackCertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    .line 189
    :cond_4
    :goto_2
    return-object v0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 309
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 311
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 312
    return-object v0

    .line 315
    :cond_0
    iget-object v1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v1, v1, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 316
    return-object v0

    .line 318
    :cond_1
    new-instance v0, Ljava/util/Date;

    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v1, p1, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 128
    :try_start_0
    iget-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    invoke-static {p2, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object p1
    :try_end_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 133
    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 135
    instance-of v0, p2, Landroid/security/KeyStoreException;

    if-eqz v0, :cond_0

    .line 136
    check-cast p2, Landroid/security/KeyStoreException;

    invoke-virtual {p2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 138
    const/4 p1, 0x0

    return-object p1

    .line 141
    :cond_0
    throw p1

    .line 131
    :catch_1
    move-exception p1

    .line 132
    new-instance p2, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {p1}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    .line 1209
    if-eqz p1, :cond_1

    .line 1212
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 1217
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1210
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 0

    .line 1192
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1300
    if-nez p1, :cond_1

    .line 1304
    if-nez p2, :cond_0

    .line 1309
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1310
    const/4 p1, -0x1

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1311
    return-void

    .line 1305
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "password not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1301
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputStream not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1316
    nop

    .line 1317
    if-eqz p1, :cond_1

    .line 1318
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    if-eqz v0, :cond_0

    .line 1319
    check-cast p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->getNamespace()I

    move-result p1

    goto :goto_0

    .line 1321
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1322
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :cond_1
    const/4 p1, -0x1

    .line 1325
    :goto_0
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1326
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1327
    return-void
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1111
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    if-eqz p2, :cond_0

    .line 1122
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1125
    nop

    .line 1128
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1129
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1134
    nop

    .line 1135
    return-void

    .line 1132
    :catch_0
    move-exception p1

    .line 1133
    new-instance p2, Ljava/security/KeyStoreException;

    const-string v0, "Couldn\'t insert certificate."

    invoke-direct {p2, v0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1123
    :catch_1
    move-exception p1

    .line 1124
    new-instance p2, Ljava/security/KeyStoreException;

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1117
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cert == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1112
    :cond_1
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Entry exists and is not a trusted certificate"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1332
    if-eqz p2, :cond_4

    .line 1336
    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v0, :cond_0

    .line 1337
    check-cast p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 1343
    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1345
    return-void

    .line 1348
    :cond_0
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_1

    .line 1349
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1350
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1351
    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_2

    .line 1352
    check-cast p2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 1353
    invoke-virtual {p2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1354
    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/security/keystore/WrappedKeyEntry;

    if-eqz v0, :cond_3

    .line 1355
    check-cast p2, Landroid/security/keystore/WrappedKeyEntry;

    .line 1356
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1357
    nop

    .line 1362
    :goto_0
    return-void

    .line 1358
    :cond_3
    new-instance p1, Ljava/security/KeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Entry must be a PrivateKeyEntry, SecretKeyEntry, WrappedKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1333
    :cond_4
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "entry == null"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 324
    if-eqz p3, :cond_1

    array-length p3, p3

    if-gtz p3, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "entries cannot be protected with passwords"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_1
    :goto_0
    instance-of p3, p2, Ljava/security/PrivateKey;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 329
    check-cast p2, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, p2, p4, v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_1

    .line 330
    :cond_2
    instance-of p3, p2, Ljavax/crypto/SecretKey;

    if-eqz p3, :cond_3

    .line 331
    check-cast p2, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 335
    :goto_1
    return-void

    .line 333
    :cond_3
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Only PrivateKey and SecretKey are supported"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1089
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Operation not supported because key encoding is unknown"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSize()I
    .locals 4

    .line 1180
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1181
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1182
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1181
    invoke-virtual {v0, v1, v2, v3}, Landroid/security/KeyStore2;->getNumberOfEntries(IJ)I

    move-result v0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to get the number of keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1294
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist initForTesting(Landroid/security/KeyStore2;)V
    .locals 0

    .line 1287
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1288
    const/4 p1, -0x1

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1289
    return-void
.end method
