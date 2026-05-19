.class public interface abstract Lcom/android/wm/shell/transition/ShellTransitions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation


# virtual methods
.method public forceCancelRecentsTransition()V
    .registers 1

    return-void
.end method

.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 3

    return-void
.end method

.method public registerRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 2

    return-void
.end method

.method public unregisterRemote(Landroid/window/RemoteTransition;)V
    .registers 2

    return-void
.end method

.method public unregisterRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 2

    return-void
.end method
