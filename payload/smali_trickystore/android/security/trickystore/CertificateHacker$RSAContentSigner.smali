.class Landroid/security/trickystore/CertificateHacker$RSAContentSigner;
.super Ljava/lang/Object;
.source "CertificateHacker.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/trickystore/CertificateHacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RSAContentSigner"
.end annotation


# instance fields
.field private final blacklist algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

.field private final blacklist stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 226
    iput-object p2, p0, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 227
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;->stream:Ljava/io/ByteArrayOutputStream;

    .line 228
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 237
    iget-object v0, p0, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;->stream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public blacklist getSignature()[B
    .locals 4

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 244
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 245
    iget-object v2, p0, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 246
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->update([BII)V

    .line 247
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->generateSignature()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to generate RSA signature"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
