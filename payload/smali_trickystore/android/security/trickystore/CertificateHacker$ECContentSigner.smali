.class Landroid/security/trickystore/CertificateHacker$ECContentSigner;
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
    name = "ECContentSigner"
.end annotation


# instance fields
.field private final blacklist algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private final blacklist stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Landroid/security/trickystore/CertificateHacker$ECContentSigner;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 184
    iput-object p2, p0, Landroid/security/trickystore/CertificateHacker$ECContentSigner;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 185
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Landroid/security/trickystore/CertificateHacker$ECContentSigner;->stream:Ljava/io/ByteArrayOutputStream;

    .line 186
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/security/trickystore/CertificateHacker$ECContentSigner;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/security/trickystore/CertificateHacker$ECContentSigner;->stream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public blacklist getSignature()[B
    .locals 5

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/security/trickystore/CertificateHacker$ECContentSigner;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 202
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 205
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    .line 206
    iget-object v2, p0, Landroid/security/trickystore/CertificateHacker$ECContentSigner;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 207
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 210
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-direct {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 212
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to generate ECDSA signature"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
