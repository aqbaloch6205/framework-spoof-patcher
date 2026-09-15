.class public final enum Landroid/security/trickystore/TrickyStoreService$Mode;
.super Ljava/lang/Enum;
.source "TrickyStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/trickystore/TrickyStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/security/trickystore/TrickyStoreService$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/security/trickystore/TrickyStoreService$Mode;

.field public static final enum blacklist AUTO:Landroid/security/trickystore/TrickyStoreService$Mode;

.field public static final enum blacklist GENERATE:Landroid/security/trickystore/TrickyStoreService$Mode;

.field public static final enum blacklist LEAF_HACK:Landroid/security/trickystore/TrickyStoreService$Mode;


# direct methods
.method private static synthetic blacklist $values()[Landroid/security/trickystore/TrickyStoreService$Mode;
    .locals 3

    .line 61
    sget-object v0, Landroid/security/trickystore/TrickyStoreService$Mode;->AUTO:Landroid/security/trickystore/TrickyStoreService$Mode;

    sget-object v1, Landroid/security/trickystore/TrickyStoreService$Mode;->LEAF_HACK:Landroid/security/trickystore/TrickyStoreService$Mode;

    sget-object v2, Landroid/security/trickystore/TrickyStoreService$Mode;->GENERATE:Landroid/security/trickystore/TrickyStoreService$Mode;

    filled-new-array {v0, v1, v2}, [Landroid/security/trickystore/TrickyStoreService$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Landroid/security/trickystore/TrickyStoreService$Mode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/trickystore/TrickyStoreService$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/trickystore/TrickyStoreService$Mode;->AUTO:Landroid/security/trickystore/TrickyStoreService$Mode;

    new-instance v0, Landroid/security/trickystore/TrickyStoreService$Mode;

    const-string v1, "LEAF_HACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/security/trickystore/TrickyStoreService$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/trickystore/TrickyStoreService$Mode;->LEAF_HACK:Landroid/security/trickystore/TrickyStoreService$Mode;

    new-instance v0, Landroid/security/trickystore/TrickyStoreService$Mode;

    const-string v1, "GENERATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/security/trickystore/TrickyStoreService$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/trickystore/TrickyStoreService$Mode;->GENERATE:Landroid/security/trickystore/TrickyStoreService$Mode;

    .line 61
    invoke-static {}, Landroid/security/trickystore/TrickyStoreService$Mode;->$values()[Landroid/security/trickystore/TrickyStoreService$Mode;

    move-result-object v0

    sput-object v0, Landroid/security/trickystore/TrickyStoreService$Mode;->$VALUES:[Landroid/security/trickystore/TrickyStoreService$Mode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/security/trickystore/TrickyStoreService$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    const-class v0, Landroid/security/trickystore/TrickyStoreService$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/security/trickystore/TrickyStoreService$Mode;

    return-object p0
.end method

.method public static blacklist values()[Landroid/security/trickystore/TrickyStoreService$Mode;
    .locals 1

    .line 61
    sget-object v0, Landroid/security/trickystore/TrickyStoreService$Mode;->$VALUES:[Landroid/security/trickystore/TrickyStoreService$Mode;

    invoke-virtual {v0}, [Landroid/security/trickystore/TrickyStoreService$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/security/trickystore/TrickyStoreService$Mode;

    return-object v0
.end method
