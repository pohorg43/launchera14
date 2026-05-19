.class public interface abstract Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public applyAnimationProgress(FLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    return-void
.end method

.method public clearTasks()V
    .registers 1

    return-void
.end method

.method public hasActiveTasks()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public isApplicableTask(Landroid/app/TaskInfo;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V
    .registers 3

    return-void
.end method

.method public onTaskChanged(Landroid/app/TaskInfo;)V
    .registers 2

    return-void
.end method

.method public onTaskVanished(Landroid/app/TaskInfo;)V
    .registers 2

    return-void
.end method

.method public prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    return-void
.end method

.method public prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    return-void
.end method

.method public resetAllSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    return-void
.end method

.method public resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method
