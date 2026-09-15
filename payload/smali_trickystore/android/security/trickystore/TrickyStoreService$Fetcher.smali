.class interface abstract Landroid/security/trickystore/TrickyStoreService$Fetcher;
.super Ljava/lang/Object;
.source "TrickyStoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/trickystore/TrickyStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Fetcher"
.end annotation


# virtual methods
.method public abstract blacklist fetch(Landroid/app/IActivityManager;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
