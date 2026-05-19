.class public interface abstract Lcom/android/wm/shell/sysui/ShellInterface;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public createExternalInterfaces(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public handleCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onInit()V
    .registers 1

    return-void
.end method

.method public onKeyguardDismissAnimationFinished()V
    .registers 1

    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .registers 4

    return-void
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .registers 3
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onUserProfilesChanged(Ljava/util/List;)V
    .registers 2
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
