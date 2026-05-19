.class public Lcom/oplus/zoom/ZoomRootTaskController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;
.implements Lcom/oplus/zoom/common/ZoomInsetsController$ImePositionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomController"

.field private static final TIME_OUT_FOR_CLEAR_FIX_ROTATION:I = 0xbb8


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mCallbackListener:Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

.field private final mContext:Landroid/content/Context;

.field private final mFloatTaskManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/ZoomRootTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mFloatZoomTasksInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoomwindow/OplusZoomTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mManagersLock:Ljava/lang/Object;

.field private final mRootTaskManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/ZoomRootTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

.field private final mZoomController:Lcom/oplus/zoom/ZoomController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/zoom/ui/IZoomUiManager;Lcom/oplus/zoom/ZoomController;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mRootTaskManagers:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mManagersLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mFloatTaskManagers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mFloatZoomTasksInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    new-instance v0, Lcom/oplus/zoom/ZoomRootTaskController$1;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/ZoomRootTaskController$1;-><init>(Lcom/oplus/zoom/ZoomRootTaskController;)V

    iput-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mCallbackListener:Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    iput-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p6, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    iput-object p5, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->registerDisplayChangedListener(Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomInsetsController;->getInstance()Lcom/oplus/zoom/common/ZoomInsetsController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomInsetsController;->addImePositionListener(Lcom/oplus/zoom/common/ZoomInsetsController$ImePositionListener;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->getInstance()Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mCallbackListener:Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->addCallbackListener(Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;)V

    return-void
.end method

.method public static synthetic a(IIZZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$requestChangeZoomState$15(IIZZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/ZoomRootTaskController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/ZoomRootTaskController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addFixRotationRunnable(ILjava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static synthetic b(ZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onSplitDragAnimationEnd$20(ZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic c(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onTaskVanished$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method private clearFixRotationFlag(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->getFixRotationRunnable(I)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-interface {v1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->removeFixRotationRunnable(I)V

    new-instance v0, Lcom/android/launcher3/iconrender/a;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/iconrender/a;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    :cond_17
    return-void
.end method

.method private clearFixRotationRunnable()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static synthetic d(ILcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onZoomTaskEvent$13(ILcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic e(IIZZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$requestChangeZoomState$14(IIZZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/zoom/ZoomRootTaskController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onTaskVanished$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onZoomTaskChanged$11(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method private getFixRotationRunnable(I)Ljava/lang/Runnable;
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static synthetic h(ZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onSplitDragAnimationStart$19(ZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic i(IILandroid/content/res/Configuration;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onDisplayChanged$4(IILandroid/content/res/Configuration;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic j(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onRotateDisplay$5(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic k(IZIZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onImePositionChanged$9(IZIZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic l(Lcom/oplus/zoom/ZoomRootTaskController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onTaskInfoChanged$3(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method private static synthetic lambda$clearFixRotationFlag$8(ILcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onFixedRotationFinished(I)V

    return-void
.end method

.method private static synthetic lambda$getCurrentZoomTaskInfo$16(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-virtual {p1}, Lcom/oplus/zoom/ZoomRootTaskManager;->getCurrentZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->copy(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$getCurrentZoomTaskInfo$17(ILcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forSpecifiedRootTaskManager taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomController"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/zoom/ZoomRootTaskManager;->getCurrentZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->copy(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$onConfigChanged$10(Landroid/content/res/Configuration;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private static synthetic lambda$onDisplayChanged$4(IILandroid/content/res/Configuration;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 4

    invoke-virtual {p3, p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskManager;->onDisplayChanged(IILandroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onFixedRotationStarted$6(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->clearFixRotationFlag(I)V

    return-void
.end method

.method private static synthetic lambda$onFixedRotationStarted$7(IILcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/oplus/zoom/ZoomRootTaskManager;->onFixedRotationStarted(II)V

    return-void
.end method

.method private static synthetic lambda$onImePositionChanged$9(IZIZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 5

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskManager;->onImePositionChanged(IZIZ)V

    return-void
.end method

.method private static synthetic lambda$onRecentHomeClicked$18(Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onRecentHomeClicked()V

    return-void
.end method

.method private static synthetic lambda$onRotateDisplay$5(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 12

    move-object v0, p5

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/zoom/ZoomRootTaskManager;->onRotateDisplay(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private static synthetic lambda$onSplitDragAnimationEnd$20(ZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onSplitDragAnimationEnd(Z)V

    return-void
.end method

.method private static synthetic lambda$onSplitDragAnimationStart$19(ZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onSplitDragAnimationStart(Z)V

    return-void
.end method

.method private static synthetic lambda$onTaskAppeared$0(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/oplus/zoom/ZoomRootTaskManager;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private synthetic lambda$onTaskInfoChanged$3(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomController;->getLeash(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private static synthetic lambda$onTaskVanished$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onTaskVanished$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 3

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->onZoomExit(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onZoomExit$12(Landroid/app/ActivityManager$RunningTaskInfo;ILcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 4

    invoke-virtual {p3, p1}, Lcom/oplus/zoom/ZoomRootTaskManager;->onZoomExit(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/ZoomController;->unRegisterTransitionListener(I)V

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mRootTaskManagers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private static synthetic lambda$onZoomTaskChanged$11(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onZoomTaskChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$onZoomTaskEvent$13(ILcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->onZoomTaskEvent(I)V

    return-void
.end method

.method private static synthetic lambda$requestChangeZoomState$14(IIZZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestChangeZoomState  taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomController"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskManager;->requestChangeZoomState(IZZ)V

    return-void
.end method

.method private static synthetic lambda$requestChangeZoomState$15(IIZZLcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestChangeZoomState  taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomController"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskManager;->requestChangeZoomState(IZZ)V

    return-void
.end method

.method public static synthetic m(Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onRecentHomeClicked$18(Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic n(ILcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$getCurrentZoomTaskInfo$17(ILcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic o(ILcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$clearFixRotationFlag$8(ILcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic p(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onTaskAppeared$0(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic q(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$getCurrentZoomTaskInfo$16(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic r(Lcom/oplus/zoom/ZoomRootTaskController;Landroid/app/ActivityManager$RunningTaskInfo;ILcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onZoomExit$12(Landroid/app/ActivityManager$RunningTaskInfo;ILcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method private removeFixRotationRunnable(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mTimeoutClearFixRotationRunnables:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static synthetic s(Landroid/content/res/Configuration;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onConfigChanged$10(Landroid/content/res/Configuration;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic t(IILcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onFixedRotationStarted$7(IILcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method public static synthetic u(Lcom/oplus/zoom/ZoomRootTaskController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->lambda$onFixedRotationStarted$6(I)V

    return-void
.end method


# virtual methods
.method public forAllRootTaskManagers(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/oplus/zoom/ZoomRootTaskManager;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mManagersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ZoomController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forAllRootTaskManagers  managerSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mRootTaskManagers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_20
    iget-object v2, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mRootTaskManagers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    iget-object v2, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mRootTaskManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/zoom/ZoomRootTaskManager;

    if-eqz v2, :cond_35

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/oplus/zoom/ZoomRootTaskManager;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mManagersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mRootTaskManagers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/ZoomRootTaskManager;

    if-eqz p0, :cond_10

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getCurrentZoomTaskInfo(ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V
    .registers 6

    const-string v0, "ZoomController"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentZoomTaskInfo taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    invoke-direct {v1}, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;-><init>()V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_27

    new-instance p1, Lcom/android/wm/shell/bubbles/j;

    invoke-direct {p1, v1}, Lcom/android/wm/shell/bubbles/j;-><init>(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    goto :goto_2f

    :cond_27
    new-instance v2, Lcom/android/quickstep/o1;

    invoke-direct {v2, p1, v1}, Lcom/android/quickstep/o1;-><init>(ILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    invoke-virtual {p0, p1, v2}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    :goto_2f
    invoke-interface {p2, v1}, Lcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;->onZoomInfoCallback(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_32} :catch_33

    goto :goto_48

    :catch_33
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public isWaitForFixRotationEnd(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->getFixRotationRunnable(I)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public notifyZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomController;->notifyZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method public notifyZoomStateChange(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ZoomController;->notifyZoomStateChange(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    new-instance v0, Lcom/android/launcher/g;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/g;-><init>(Landroid/content/res/Configuration;I)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDisplayChanged(IILandroid/content/res/Configuration;)V
    .registers 5

    new-instance v0, Lcom/android/launcher3/iconrender/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/iconrender/b;-><init>(IILandroid/content/res/Configuration;)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->clearFixRotationFlag(I)V

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->getFixRotationRunnable(I)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-interface {v1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    new-instance v0, Lcom/oplus/zoom/b;

    invoke-direct {v0, p0, p1}, Lcom/oplus/zoom/b;-><init>(Lcom/oplus/zoom/ZoomRootTaskController;I)V

    iget-object v1, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-wide/16 v2, 0xbb8

    invoke-interface {v1, v0, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->addFixRotationRunnable(ILjava/lang/Runnable;)V

    new-instance v0, Lcom/android/launcher3/s;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/s;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onImePositionChanged(IZIZ)V
    .registers 6

    new-instance v0, Lcom/oplus/zoom/j;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oplus/zoom/j;-><init>(IZIZ)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRecentHomeClicked()V
    .registers 3

    const-string v0, "ZoomController"

    const-string v1, "onRecentHomeClicked"

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/pm/b;->c:Lcom/android/launcher3/pm/b;

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRotateDisplay(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 13

    new-instance v6, Lcom/oplus/zoom/k;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/zoom/k;-><init>(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, v6}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSplitDragAnimationEnd(Z)V
    .registers 4

    new-instance v0, Lcom/android/launcher/i;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSplitDragAnimationStart(Z)V
    .registers 4

    new-instance v0, Lcom/android/launcher/i;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    goto :goto_b

    :cond_9
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_b
    new-instance v1, Lcom/android/launcher/model/b;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher/model/b;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskInfoChanged taskInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomController"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    goto :goto_21

    :cond_1f
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_21
    new-instance v1, Lcom/android/launcher/model/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/model/c;-><init>(Lcom/oplus/zoom/ZoomRootTaskController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskVanished taskInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomController"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/wm/shell/b;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/b;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-nez v0, :cond_2f

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v1, Lcom/android/launcher/model/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/model/b;-><init>(Lcom/oplus/zoom/ZoomRootTaskController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    :cond_2f
    return-void
.end method

.method public onZoomEnter(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 14

    const-string v0, "ZoomController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomEnter zoomTaskInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_be

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_be

    :cond_20
    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mManagersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mRootTaskManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/zoom/ZoomRootTaskManager;

    if-nez v2, :cond_45

    new-instance v2, Lcom/oplus/zoom/ZoomRootTaskManager;

    iget-object v4, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v6, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v7, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v8, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

    move-object v3, v2

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/oplus/zoom/ZoomRootTaskManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/zoom/ui/IZoomUiManager;Lcom/oplus/zoom/ZoomRootTaskController;)V

    iget-object v3, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mRootTaskManagers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_45
    invoke-virtual {v2, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskManager;->onZoomEnter(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    iget-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p2, v1, v2}, Lcom/oplus/zoom/ZoomController;->registerTransitionListener(ILcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;)V

    iget-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p2}, Lcom/oplus/zoom/ZoomController;->getAllAppearedTasks()Landroid/util/SparseArray;

    move-result-object p2

    if-eqz p2, :cond_b9

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-eqz p3, :cond_b9

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_61
    if-ltz p3, :cond_b9

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v4, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    if-ne v3, v4, :cond_b6

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_b6

    iget-object v3, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Lcom/oplus/zoom/ZoomController;->getLeash(I)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/oplus/zoom/ZoomRootTaskManager;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    const-string v4, "ZoomController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trigger taskInfoChanged for child task : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " leash : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    add-int/lit8 p3, p3, -0x1

    goto :goto_61

    :cond_b9
    monitor-exit v0

    return-void

    :catchall_bb
    move-exception p0

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_23 .. :try_end_bd} :catchall_bb

    throw p0

    :cond_be
    :goto_be
    const-string p0, "ZoomController"

    const-string p1, "onZoomEnter leash is null or not valid"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomExit(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onZoomExit zoomTaskInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomController"

    invoke-static {v0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v0, Lcom/android/launcher3/allapps/q;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/allapps/q;-><init>(Lcom/oplus/zoom/ZoomRootTaskController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onZoomTaskChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onZoomTaskChanged zoomTaskInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomController"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    new-instance v1, Lcom/android/wm/shell/pip/f;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/pip/f;-><init>(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onZoomTaskEvent(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyZoomTaskEvent taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomController"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/iconrender/a;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1}, Lcom/android/launcher3/iconrender/a;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public requestAnimationStart()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p0}, Lcom/oplus/zoom/ZoomController;->onTransitionStart()V

    return-void
.end method

.method public requestChangeZoomState(IIZZ)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestChangeZoomState taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomController"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_30

    new-instance v6, Lcom/oplus/zoom/j;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/zoom/j;-><init>(IIZZI)V

    invoke-virtual {p0, v6}, Lcom/oplus/zoom/ZoomRootTaskController;->forAllRootTaskManagers(Ljava/util/function/Consumer;)V

    goto :goto_3e

    :cond_30
    new-instance v6, Lcom/oplus/zoom/j;

    const/4 v5, 0x1

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/zoom/j;-><init>(IIZZI)V

    invoke-virtual {p0, p1, v6}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    :goto_3e
    return-void
.end method

.method public requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomController;->requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V

    return-void
.end method

.method public setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ZoomController;->setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V

    return-void
.end method
