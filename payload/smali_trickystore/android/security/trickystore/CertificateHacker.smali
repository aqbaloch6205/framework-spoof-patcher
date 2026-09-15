.class public final Landroid/security/trickystore/CertificateHacker;
.super Ljava/lang/Object;
.source "CertificateHacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/trickystore/CertificateHacker$ECContentSigner;,
        Landroid/security/trickystore/CertificateHacker$RSAContentSigner;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CertificateHacker"

.field private static final blacklist sLeafAlgorithms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/security/trickystore/CertificateHacker;->sLeafAlgorithms:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearLeafAlgorithms()V
    .locals 1

    .line 61
    sget-object v0, Landroid/security/trickystore/CertificateHacker;->sLeafAlgorithms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    return-void
.end method

.method private static blacklist createBCSigner(Ljava/lang/String;Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    .line 150
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    if-eqz v0, :cond_1

    .line 151
    check-cast p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 152
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 155
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 156
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 157
    new-instance p1, Landroid/security/trickystore/CertificateHacker$ECContentSigner;

    invoke-direct {p1, p0, v0}, Landroid/security/trickystore/CertificateHacker$ECContentSigner;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    return-object p1

    .line 159
    :cond_0
    const-string/jumbo v0, "secp256r1"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 162
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 163
    new-instance p1, Landroid/security/trickystore/CertificateHacker$ECContentSigner;

    invoke-direct {p1, p0, v0}, Landroid/security/trickystore/CertificateHacker$ECContentSigner;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    return-object p1

    .line 165
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    .line 166
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 167
    new-instance v0, Landroid/security/trickystore/CertificateHacker$ECContentSigner;

    invoke-direct {v0, p0, p1}, Landroid/security/trickystore/CertificateHacker$ECContentSigner;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    return-object v0

    .line 168
    :cond_2
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_3

    .line 169
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 170
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 171
    new-instance p1, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;

    invoke-direct {p1, p0, v0}, Landroid/security/trickystore/CertificateHacker$RSAContentSigner;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    return-object p1

    .line 174
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported key type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/PrivateKey;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getLeafAlgorithm(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 309
    sget-object v0, Landroid/security/trickystore/CertificateHacker;->sLeafAlgorithms:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static blacklist hackAttestExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getBootKey()[B

    move-result-object v0

    .line 260
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getBootHash()[B

    move-result-object v1

    .line 262
    const/4 v2, 0x3

    if-nez v1, :cond_1

    instance-of v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_1

    .line 264
    :try_start_0
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 265
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    .line 266
    instance-of v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    if-eqz v3, :cond_0

    .line 267
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 271
    :cond_0
    goto :goto_0

    .line 269
    :catch_0
    move-exception p0

    .line 270
    const-string v3, "CertificateHacker"

    const-string v4, "Failed to extract boot hash from original"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 275
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getBootHash()[B

    move-result-object v1

    .line 278
    :cond_2
    const/4 p0, 0x4

    new-array p0, p0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v0, 0x0

    aput-object v3, p0, v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v4, 0x1

    aput-object v3, p0, v4

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    const/4 v5, 0x2

    aput-object v3, p0, v5

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object v3, p0, v2

    .line 284
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 286
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 287
    invoke-static {v4}, Landroid/security/trickystore/AttestationUtils;->getVendorPatchLevel(Z)I

    move-result v3

    int-to-long v5, v3

    invoke-direct {v2, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v3, 0x2ce

    invoke-direct {p0, v4, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 286
    invoke-virtual {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 288
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 289
    invoke-static {v4}, Landroid/security/trickystore/AttestationUtils;->getBootPatchLevel(Z)I

    move-result v3

    int-to-long v5, v3

    invoke-direct {v2, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v3, 0x2cf

    invoke-direct {p0, v4, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 288
    invoke-virtual {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 290
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 291
    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->getPatchLevel(Z)I

    move-result v3

    int-to-long v5, v3

    invoke-direct {v2, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v3, 0x2c2

    invoke-direct {p0, v4, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 290
    invoke-virtual {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 292
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 293
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getOsVersion()I

    move-result v3

    int-to-long v5, v3

    invoke-direct {v2, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v3, 0x2c1

    invoke-direct {p0, v4, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 292
    invoke-virtual {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 294
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v2, 0x2c0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 296
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 297
    const/4 p1, 0x7

    aput-object p0, p2, p1

    .line 298
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 299
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 301
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    sget-object p2, Landroid/security/trickystore/CertificateGenerator;->ATTESTATION_OID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object p0
.end method

.method public static blacklist hackCertificateChain([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    .locals 20

    .line 65
    move-object/from16 v1, p0

    const-string v2, "CertificateHacker"

    if-eqz v1, :cond_7

    array-length v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 70
    :cond_0
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 71
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    .line 72
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 71
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 74
    sget-object v5, Landroid/security/trickystore/CertificateGenerator;->ATTESTATION_OID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v3, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 76
    if-nez v5, :cond_1

    .line 77
    return-object v1

    .line 80
    :cond_1
    new-instance v5, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    .line 81
    sget-object v6, Landroid/security/trickystore/CertificateGenerator;->ATTESTATION_OID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 83
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 84
    const/4 v7, 0x7

    aget-object v7, v6, v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 86
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    nop

    .line 89
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 90
    check-cast v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 91
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v11

    const/16 v12, 0x2c0

    if-ne v11, v12, :cond_2

    .line 92
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 96
    :goto_1
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService;->getInstance()Landroid/security/trickystore/TrickyStoreService;

    move-result-object v10

    invoke-virtual {v10}, Landroid/security/trickystore/TrickyStoreService;->getKeyBoxManager()Landroid/security/trickystore/KeyBoxManager;

    move-result-object v10

    .line 100
    invoke-virtual {v10, v7}, Landroid/security/trickystore/KeyBoxManager;->getKeybox(Ljava/lang/String;)Landroid/security/trickystore/KeyBoxManager$KeyBox;

    move-result-object v10

    .line 102
    if-nez v10, :cond_4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keybox for algorithm: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object v1

    .line 107
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    iget-object v11, v10, Landroid/security/trickystore/KeyBoxManager$KeyBox;->certificates:Ljava/util/List;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    new-instance v11, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 109
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/Certificate;

    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    .line 111
    new-instance v13, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 112
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v14

    .line 113
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v15

    .line 114
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getNotBefore()Ljava/util/Date;

    move-result-object v16

    .line 115
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    move-result-object v17

    .line 116
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v18

    .line 117
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v19

    invoke-direct/range {v13 .. v19}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 120
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    iget-object v10, v10, Landroid/security/trickystore/KeyBoxManager$KeyBox;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/security/trickystore/CertificateHacker;->createBCSigner(Ljava/lang/String;Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    move-result-object v3

    .line 122
    invoke-static {v9, v8, v6}, Landroid/security/trickystore/CertificateHacker;->hackAttestExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 123
    invoke-virtual {v13, v6}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 125
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    array-length v8, v6

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, v6, v9

    .line 126
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 127
    sget-object v11, Landroid/security/trickystore/CertificateGenerator;->ATTESTATION_OID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 128
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v11, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v10

    invoke-virtual {v13, v10}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 125
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {v13, v3}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v3

    .line 134
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 135
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 134
    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    new-array v0, v4, [Ljava/security/cert/Certificate;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v3, "Failed to hack certificate chain"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    return-object v1

    .line 66
    :cond_7
    :goto_3
    return-object v1
.end method

.method public static blacklist storeLeafAlgorithm(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 305
    sget-object v0, Landroid/security/trickystore/CertificateHacker;->sLeafAlgorithms:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method
