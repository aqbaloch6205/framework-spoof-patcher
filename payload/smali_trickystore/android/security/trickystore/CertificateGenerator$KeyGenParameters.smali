.class public Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;
.super Ljava/lang/Object;
.source "CertificateGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/trickystore/CertificateGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenParameters"
.end annotation


# instance fields
.field public blacklist algorithm:I

.field public blacklist attestationChallenge:[B

.field public blacklist brand:[B

.field public blacklist certificateNotAfter:Ljava/util/Date;

.field public blacklist certificateNotBefore:Ljava/util/Date;

.field public blacklist certificateSerial:Ljava/math/BigInteger;

.field public blacklist certificateSubject:Ljavax/security/auth/x500/X500Principal;

.field public blacklist device:[B

.field public blacklist digest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist ecCurve:I

.field public blacklist ecCurveName:Ljava/lang/String;

.field public blacklist keySize:I

.field public blacklist manufacturer:[B

.field public blacklist model:[B

.field public blacklist product:[B

.field public blacklist purpose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist rsaPublicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->purpose:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->digest:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getEcCurveName()Ljava/lang/String;
    .locals 2

    .line 85
    iget-object v0, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->ecCurveName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->ecCurveName:Ljava/lang/String;

    return-object v0

    .line 86
    :cond_0
    iget v0, p0, Landroid/security/trickystore/CertificateGenerator$KeyGenParameters;->keySize:I

    const-string/jumbo v1, "secp256r1"

    sparse-switch v0, :sswitch_data_0

    .line 91
    return-object v1

    .line 90
    :sswitch_0
    const-string/jumbo v0, "secp521r1"

    return-object v0

    .line 89
    :sswitch_1
    const-string/jumbo v0, "secp384r1"

    return-object v0

    .line 88
    :sswitch_2
    return-object v1

    .line 87
    :sswitch_3
    const-string/jumbo v0, "secp224r1"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_2
        0x180 -> :sswitch_1
        0x209 -> :sswitch_0
    .end sparse-switch
.end method
