.class public interface abstract Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomSettingDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallbackListener"
.end annotation


# virtual methods
.method public onBroadCastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public onPackageRemove(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onSettingChanged(ZLandroid/net/Uri;I)V
    .registers 4

    return-void
.end method

.method public onUserSwitched(I)V
    .registers 2

    return-void
.end method
