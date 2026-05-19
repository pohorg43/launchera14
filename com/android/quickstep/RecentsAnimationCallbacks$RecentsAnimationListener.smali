.class public interface abstract Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RecentsAnimationCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentsAnimationListener"
.end annotation


# virtual methods
.method public notifyInterceptKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .registers 2
    .param p1  # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 2
    .param p1  # Lcom/android/quickstep/RecentsAnimationController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 3

    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)Z
    .registers 3
    .param p1  # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;Z)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 2
    .param p1  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)Z
    .registers 3
    .param p1  # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)Z

    const/4 p0, 0x0

    return p0
.end method
