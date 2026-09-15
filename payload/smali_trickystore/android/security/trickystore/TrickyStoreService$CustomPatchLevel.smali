.class public Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;
.super Ljava/lang/Object;
.source "TrickyStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/trickystore/TrickyStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPatchLevel"
.end annotation


# instance fields
.field public final blacklist all:Ljava/lang/String;

.field public final blacklist boot:Ljava/lang/String;

.field public final blacklist system:Ljava/lang/String;

.field public final blacklist vendor:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->system:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->vendor:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->boot:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;->all:Ljava/lang/String;

    .line 77
    return-void
.end method
