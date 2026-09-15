.class public Landroid/security/trickystore/KeyBoxManager$KeyBox;
.super Ljava/lang/Object;
.source "KeyBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/trickystore/KeyBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyBox"
.end annotation


# instance fields
.field public final blacklist certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist keyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor blacklist <init>(Ljava/security/KeyPair;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyPair;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/security/trickystore/KeyBoxManager$KeyBox;->keyPair:Ljava/security/KeyPair;

    .line 59
    iput-object p2, p0, Landroid/security/trickystore/KeyBoxManager$KeyBox;->certificates:Ljava/util/List;

    .line 60
    return-void
.end method
