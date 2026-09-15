.class public final synthetic Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/trickystore/TrickyStoreService$Fetcher;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist fetch(Landroid/app/IActivityManager;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p1}, Landroid/security/trickystore/TrickyStoreService;->lambda$refreshPatchLevel$3(Landroid/app/IActivityManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
