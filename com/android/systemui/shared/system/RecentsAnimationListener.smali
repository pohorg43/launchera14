.class public interface abstract Lcom/android/systemui/shared/system/RecentsAnimationListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public notifyInterceptKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onAnimationCanceled(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
.end method

.method public onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, v0, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_8

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    return-void

    :catch_8
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
