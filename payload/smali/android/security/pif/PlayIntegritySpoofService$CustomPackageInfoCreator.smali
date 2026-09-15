.class Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;
.super Ljava/lang/Object;
.source "PlayIntegritySpoofService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/pif/PlayIntegritySpoofService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomPackageInfoCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist originalCreator:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist spoofedSignature:Landroid/content/pm/Signature;


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcelable$Creator;Landroid/content/pm/Signature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p1, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->originalCreator:Landroid/os/Parcelable$Creator;

    .line 668
    iput-object p2, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->spoofedSignature:Landroid/content/pm/Signature;

    .line 669
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 674
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->originalCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 675
    const-string v0, "android"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 677
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->spoofedSignature:Landroid/content/pm/Signature;

    aput-object v2, v0, v1

    .line 679
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 682
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->spoofedSignature:Landroid/content/pm/Signature;

    aput-object v2, v0, v1

    .line 686
    :cond_1
    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 662
    invoke-virtual {p0, p1}, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/PackageInfo;
    .locals 1

    .line 691
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->originalCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/PackageInfo;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 662
    invoke-virtual {p0, p1}, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->newArray(I)[Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
