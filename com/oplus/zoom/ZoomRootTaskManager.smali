.class public Lcom/oplus/zoom/ZoomRootTaskManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/ZoomRootTaskManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomController"


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mChildTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/ZoomRootTaskManager$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHasFocus:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

.field private mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

.field private mVisible:Z

.field private mVisibleTask:I

.field private mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/zoom/ui/IZoomUiManager;Lcom/oplus/zoom/ZoomRootTaskController;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p5, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

    iput-object p6, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ZoomRootTaskManager;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskManager;->lambda$initChildTask$0(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/ZoomRootTaskManager$State;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskManager;->lambda$onChildTaskInfoChanged$1(Lcom/oplus/zoom/ZoomRootTaskManager$State;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private initChildTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initChildTask taskInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomController"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/zoom/ZoomRootTaskManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/zoom/ZoomRootTaskManager$State;-><init>(Lcom/oplus/zoom/ZoomRootTaskManager$1;)V

    iput-object p1, v0, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, v0, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/m0;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/splitscreen/m0;-><init>(Lcom/oplus/zoom/ZoomRootTaskManager;Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private synthetic lambda$initChildTask$0(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p0, :cond_28

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_28
    return-void
.end method

.method private static synthetic lambda$onChildTaskInfoChanged$1(Lcom/oplus/zoom/ZoomRootTaskManager$State;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    return-void
.end method

.method private onChildTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/ZoomRootTaskManager$State;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/oplus/zoom/o;

    invoke-direct {v1, v0}, Lcom/oplus/zoom/o;-><init>(Lcom/oplus/zoom/ZoomRootTaskManager$State;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iput-object p1, v0, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChildTaskChanged taskInfo = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomController"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateChildTaskFocusStateIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v2, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/zoom/ZoomRootTaskManager$State;

    iget-object v2, v2, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v2, :cond_19

    goto :goto_1d

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    iget-boolean v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mHasFocus:Z

    if-eq v0, v1, :cond_28

    iput-boolean v1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mHasFocus:Z

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, v1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onChildTaskFocusChanged(Z)V

    :cond_28
    return-void
.end method

.method private updateChildTaskVisibilityIfNeed()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1e

    iget-object v2, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/zoom/ZoomRootTaskManager$State;

    iget-object v2, v2, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v3, :cond_1b

    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_20

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_20
    iget-boolean v2, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mVisible:Z

    if-ne v2, v1, :cond_28

    iget v2, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mVisibleTask:I

    if-eq v0, v2, :cond_31

    :cond_28
    iput-boolean v1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mVisible:Z

    iput v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mVisibleTask:I

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, v1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onChildTaskVisibilityChanged(Z)V

    :cond_31
    return-void
.end method


# virtual methods
.method public getChildTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/ZoomRootTaskManager$State;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getChildTaskLeash(I)Landroid/view/SurfaceControl;
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/ZoomRootTaskManager$State;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getCurrentZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTopVisibleZoomTask()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_31

    iget-object v1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/zoom/ZoomRootTaskManager$State;

    iget-object v2, v1, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v2, :cond_6

    const-string p0, "getTopZoomVisibleTaskLeash mTaskInfo = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, v1, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomController"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v1, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    return p0

    :cond_31
    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/ZoomRootTaskManager$State;

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_4d

    :cond_4c
    const/4 p0, -0x1

    :goto_4d
    return p0
.end method

.method public isWaitForFixRotationEnd()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ZoomRootTaskController;->isWaitForFixRotationEnd(I)Z

    move-result p0

    return p0
.end method

.method public notifyZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskController;->notifyZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method public notifyZoomStateChange(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->notifyZoomStateChange(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    sput-object p1, Lcom/oplus/zoom/common/ZoomUtil;->sCurrentZoomTaskInfo:Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method public onDisplayChanged(IILandroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq p1, v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p2, p3}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onDisplayChanged(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq p1, v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onFixedRotationFinished()V

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq p1, v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p2}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onFixedRotationStarted(I)V

    return-void
.end method

.method public onImePositionChanged(IZIZ)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq p1, v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p2, p3, p4}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onImePositionChanged(ZIZ)V

    return-void
.end method

.method public onRecentHomeClicked()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onRecentHomeClicked()V

    return-void
.end method

.method public onRotateDisplay(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    iget-object p4, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq p1, p4, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p2, p3, p5}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onRotateDisplay(IILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public onSplitDragAnimationEnd(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onSplitDragAnimationEnd(Z)V

    return-void
.end method

.method public onSplitDragAnimationStart(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onSplitDragAnimationStart(Z)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v0, v1, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskManager;->initChildTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-direct {p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->updateChildTaskVisibilityIfNeed()V

    invoke-direct {p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->updateChildTaskFocusStateIfNeed()V

    :cond_11
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v1, :cond_10

    iput-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p2, p1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_1f

    :cond_10
    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskManager;->initChildTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskManager;->onChildTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :goto_1f
    invoke-direct {p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->updateChildTaskVisibilityIfNeed()V

    invoke-direct {p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->updateChildTaskFocusStateIfNeed()V

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mChildTasks:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->updateChildTaskVisibilityIfNeed()V

    invoke-direct {p0}, Lcom/oplus/zoom/ZoomRootTaskManager;->updateChildTaskFocusStateIfNeed()V

    :cond_17
    return-void
.end method

.method public onTransitionCancel(II)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v0, p2, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->cancelRemoteTransition(I)V

    return-void
.end method

.method public onTransitionStart(II[Landroid/view/RemoteAnimationTarget;Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v0, p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1, p3, p4}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->startRemoteTransition(I[Landroid/view/RemoteAnimationTarget;Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;)Z

    move-result p0

    return p0
.end method

.method public onZoomEnter(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 12

    iput-object p2, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v7, Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget-object v1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v3, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v4, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v5, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/zoom/ui/IZoomUiManager;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    iput-object v7, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {v7, p1, p2, p3}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onZoomEnter(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public onZoomExit(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {v0, p1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onZoomExit(Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    return-void
.end method

.method public onZoomTaskChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onZoomInfoChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method public onZoomTaskEvent(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->onZoomTaskEvent(I)V

    return-void
.end method

.method public requestAnimationStart()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-virtual {p0}, Lcom/oplus/zoom/ZoomRootTaskController;->requestAnimationStart()V

    return-void
.end method

.method public requestChangeZoomState(IZZ)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->requestChangeZoomStateFromOutside(IZZ)V

    return-void
.end method

.method public requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskController;->requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V

    return-void
.end method

.method public setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomRootTaskManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/IZoomStateManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/zoom/zoomstate/IZoomStateManager;->startTransition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0
.end method
