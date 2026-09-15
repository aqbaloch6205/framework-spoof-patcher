.class public final Landroid/security/trickystore/CertificateGenerator;
.super Ljava/lang/Object;
.source "CertificateGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;
    }
.end annotation


# static fields
.field public static final blacklist ATTESTATION_OID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final blacklist TAG:Ljava/lang/String; = "CertificateGenerator"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/trickystore/CertificateGenerator;->ATTESTATION_OID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist buildAttestExtension(Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;II)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 13

    .line 199
    const-string v0, "CertificateGenerator"

    :try_start_0
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getBootKey()[B

    move-result-object v1

    .line 200
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getBootHash()[B

    move-result-object v2

    .line 202
    const/4 v3, 0x4

    new-array v4, v3, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x3

    aput-object v5, v4, v2

    .line 208
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 210
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 212
    iget-object v8, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 213
    move v9, v1

    :goto_0
    iget-object v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 214
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v11, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-direct {v10, v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    aput-object v10, v8, v9

    .line 213
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 216
    :cond_0
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v9, v6, v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 217
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->algorithm:I

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v8, v6, v7, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 218
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->keySize:I

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v8, v6, v2, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 220
    iget-object v8, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->digest:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 221
    move v9, v1

    :goto_1
    iget-object v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->digest:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 222
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v11, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->digest:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-direct {v10, v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    aput-object v10, v8, v9

    .line 221
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 224
    :cond_1
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v8, 0x5

    invoke-direct {v9, v6, v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 226
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget v11, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->ecCurve:I

    int-to-long v11, v11

    invoke-direct {v10, v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v11, 0xa

    invoke-direct {v9, v6, v11, v10}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 227
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    const/16 v11, 0x1f7

    invoke-direct {v9, v6, v11, v10}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 228
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v11, 0x0

    invoke-direct {v10, v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v11, 0x2be

    invoke-direct {v9, v6, v11, v10}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 229
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v10, 0x2c0

    invoke-direct {v9, v6, v10, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 230
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getOsVersion()I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v10, 0x2c1

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 231
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {v1}, Landroid/security/trickystore/AttestationUtils;->getPatchLevel(Z)I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v10, 0x2c2

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 232
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {v6}, Landroid/security/trickystore/AttestationUtils;->getVendorPatchLevel(Z)I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v10, 0x2ce

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 233
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {v6}, Landroid/security/trickystore/AttestationUtils;->getBootPatchLevel(Z)I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v10, 0x2cf

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 235
    iget-object v5, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->brand:[B

    if-eqz v5, :cond_2

    .line 236
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->brand:[B

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/16 v10, 0x2c6

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 238
    :cond_2
    iget-object v5, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->device:[B

    if-eqz v5, :cond_3

    .line 239
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->device:[B

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/16 v10, 0x2c7

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 241
    :cond_3
    iget-object v5, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->product:[B

    if-eqz v5, :cond_4

    .line 242
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->product:[B

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/16 v10, 0x2c8

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 244
    :cond_4
    iget-object v5, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->manufacturer:[B

    if-eqz v5, :cond_5

    .line 245
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->manufacturer:[B

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/16 v10, 0x2cc

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 247
    :cond_5
    iget-object v5, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->model:[B

    if-eqz v5, :cond_6

    .line 248
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v10, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->model:[B

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/16 v10, 0x2cd

    invoke-direct {v5, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 251
    :cond_6
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :try_start_1
    invoke-static {p2}, Landroid/security/trickystore/CertificateGenerator;->createApplicationId(I)Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    move-result-object p2

    .line 254
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/16 v10, 0x2c5

    invoke-direct {v9, v6, v10, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    goto :goto_2

    .line 255
    :catchall_0
    move-exception p2

    .line 256
    :try_start_2
    const-string v9, "Failed to create application ID"

    invoke-static {v0, v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :goto_2
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/16 v10, 0x2bd

    invoke-direct {p2, v6, v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 260
    const/16 p2, 0x8

    new-array p2, p2, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 261
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getAttestVersion()I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    aput-object v9, p2, v1

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v9, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    aput-object v9, p2, v6

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 263
    invoke-static {}, Landroid/security/trickystore/AttestationUtils;->getKeymasterVersion()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v6, v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    aput-object v6, p2, v7

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v6, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    aput-object v6, p2, v2

    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 265
    iget-object v2, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->attestationChallenge:[B

    if-eqz v2, :cond_7

    iget-object p0, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->attestationChallenge:[B

    goto :goto_3

    :cond_7
    new-array p0, v1, [B

    :goto_3
    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object p1, p2, v3

    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    new-array p1, v1, [B

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object p0, p2, v8

    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 p1, 0x6

    aput-object p0, p2, p1

    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 p1, 0x7

    aput-object p0, p2, p1

    .line 271
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 274
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    sget-object p2, Landroid/security/trickystore/CertificateGenerator;->ATTESTATION_OID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p2, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 275
    :catch_0
    move-exception p0

    .line 276
    const-string p1, "Failed to build attestation extension"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist buildCertificate(Ljava/security/KeyPair;Landroid/security/trickystore/KeyBoxManager$KeyBox;Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;II)Ljava/security/cert/X509Certificate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iget-object v0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateSerial:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateSerial:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    :goto_0
    move-object v3, v0

    .line 161
    iget-object v0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateNotBefore:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateNotBefore:Ljava/util/Date;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_1
    move-object v4, v0

    .line 163
    iget-object v0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateNotAfter:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateNotAfter:Ljava/util/Date;

    move-object v5, v0

    goto :goto_2

    .line 165
    :cond_2
    iget-object v0, p1, Landroid/security/trickystore/KeyBoxManager$KeyBox;->certificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    move-object v5, v0

    .line 166
    :goto_2
    iget-object v0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateSubject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->certificateSubject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const-string v1, "CN=Android Keystore Key"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    :goto_3
    move-object v6, v0

    .line 169
    nop

    .line 170
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    .line 169
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    .line 172
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    move-object v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 181
    sget-object p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance p3, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    const/4 v0, 0x4

    invoke-direct {p3, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0, p3}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 182
    invoke-static {p2, p4, p5}, Landroid/security/trickystore/CertificateGenerator;->buildAttestExtension(Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;II)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;

    .line 184
    iget p0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->algorithm:I

    const/4 p3, 0x3

    if-ne p0, p3, :cond_4

    const-string p0, "SHA256withECDSA"

    goto :goto_4

    :cond_4
    const-string p0, "SHA256withRSA"

    .line 185
    :goto_4
    new-instance p4, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    invoke-direct {p4, p0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    iget p0, p2, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->algorithm:I

    if-ne p0, p3, :cond_5

    .line 187
    new-instance p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-virtual {p4, p0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->setProvider(Ljava/security/Provider;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    .line 189
    :cond_5
    iget-object p0, p1, Landroid/security/trickystore/KeyBoxManager$KeyBox;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    move-result-object p0

    .line 191
    invoke-virtual {v1, p0}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object p0

    .line 192
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 193
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private static blacklist createApplicationId(I)Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_7

    .line 287
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_6

    .line 292
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_5

    array-length v2, v1

    if-eqz v2, :cond_5

    .line 297
    new-instance p0, Ljava/util/ArrayList;

    array-length v2, v1

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 299
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 301
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v4, :cond_3

    aget-object v9, v1, v6

    .line 304
    const/high16 v10, 0x8000000

    :try_start_0
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    nop

    .line 309
    if-nez v10, :cond_0

    goto :goto_3

    .line 311
    :cond_0
    new-array v7, v7, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 312
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-direct {v11, v9}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object v11, v7, v5

    .line 313
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    invoke-direct {v9, v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    aput-object v9, v7, v8

    .line 314
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v7, v10, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v7, :cond_2

    .line 317
    iget-object v7, v10, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 318
    iget-object v7, v10, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v7

    goto :goto_1

    .line 319
    :cond_1
    iget-object v7, v10, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 320
    :goto_1
    if-eqz v7, :cond_2

    .line 321
    array-length v8, v7

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 322
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 305
    :catch_0
    move-exception v7

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CertificateGenerator"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    nop

    .line 301
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 328
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 329
    nop

    .line 330
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v5

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 331
    add-int/lit8 v4, v2, 0x1

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    aput-object v6, v0, v2

    .line 332
    move v2, v4

    goto :goto_4

    .line 334
    :cond_4
    new-array v1, v7, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 335
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-array v3, v5, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v2, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v1, v5

    .line 336
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object p0, v1, v8

    .line 338
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object p0

    .line 294
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No packages found for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "createApplicationId: PackageManager not found!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "createApplicationId: context not available from ActivityThread!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist generateCertificateChain(Ljava/security/KeyPair;Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyPair;",
            "Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;",
            "II)",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService;->getInstance()Landroid/security/trickystore/TrickyStoreService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/trickystore/TrickyStoreService;->getKeyBoxManager()Landroid/security/trickystore/KeyBoxManager;

    move-result-object v0

    .line 126
    iget v1, p1, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->algorithm:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "EC"

    goto :goto_0

    :cond_0
    const-string v1, "RSA"

    .line 127
    :goto_0
    invoke-virtual {v0, v1}, Landroid/security/trickystore/KeyBoxManager;->getKeybox(Ljava/lang/String;)Landroid/security/trickystore/KeyBoxManager$KeyBox;

    move-result-object v3

    .line 129
    const/4 v8, 0x0

    const-string v9, "CertificateGenerator"

    if-nez v3, :cond_1

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No keybox found for algorithm: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v8

    .line 135
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    iget-object v1, v3, Landroid/security/trickystore/KeyBoxManager$KeyBox;->certificates:Ljava/util/List;

    .line 136
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    .line 137
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 139
    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Landroid/security/trickystore/CertificateGenerator;->buildCertificate(Ljava/security/KeyPair;Landroid/security/trickystore/KeyBoxManager$KeyBox;Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;II)Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object p0, v3, Landroid/security/trickystore/KeyBoxManager$KeyBox;->certificates:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-object p1

    .line 145
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 146
    const-string p1, "Failed to generate certificate chain"

    invoke-static {v9, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    return-object v8
.end method

.method public static blacklist generateKeyPair(Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;)Ljava/security/KeyPair;
    .locals 6

    .line 99
    const-string v0, "CertificateGenerator"

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->algorithm:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 100
    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0}, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->getEcCurveName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    .line 102
    :cond_0
    iget v2, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->algorithm:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 103
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/security/spec/RSAKeyGenParameterSpec;

    iget v4, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->keySize:I

    .line 106
    iget-object v5, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    if-eqz v5, :cond_1

    iget-object p0, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    :goto_0
    invoke-direct {v3, v4, p0}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 104
    invoke-virtual {v2, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 112
    :goto_1
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    return-object p0

    .line 109
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p0, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->algorithm:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v1

    .line 113
    :catch_0
    move-exception p0

    .line 114
    const-string v2, "Failed to generate key pair"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return-object v1
.end method
