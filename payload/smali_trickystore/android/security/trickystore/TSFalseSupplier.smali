.class public Landroid/security/trickystore/TSFalseSupplier;
.super Ljava/lang/Object;
.implements Ljava/util/function/Supplier;

# Initial value supplier for TSKeystoreHook.sInHack (returns Boolean.FALSE).


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public get()Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
