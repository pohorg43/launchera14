.class public interface abstract Lcom/android/wm/shell/desktopmode/DesktopMode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation


# virtual methods
.method public addDesktopGestureExclusionRegionListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Region;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
.end method
