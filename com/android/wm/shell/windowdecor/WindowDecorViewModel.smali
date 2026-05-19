.class public interface abstract Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public onTransitionFinished(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)V
    .registers 4

    return-void
.end method

.method public abstract setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
.end method
