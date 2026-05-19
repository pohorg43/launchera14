.class public Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mMainChoreographer:Landroid/view/Choreographer;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mWindowDecorByTaskId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p2, :cond_22

    new-instance p2, Lcom/android/wm/shell/windowdecor/TaskOperations;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p6}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    :cond_22
    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/windowdecor/TaskOperations;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-object p0
.end method

.method private createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->close()V

    :cond_f
    new-instance v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p2, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v3, 0x0

    invoke-direct {p2, v1, v0, v2, v3}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Rect;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$1;)V

    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->setCaptionListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->setDragPositioningCallback(Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->access$100(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;)Lcom/android/wm/shell/windowdecor/DragDetector;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->setDragDetector(Lcom/android/wm/shell/windowdecor/DragDetector;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->setupCaptionColor(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;)V

    return-void
.end method

.method private setupCaptionColor(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;)V
    .registers 3

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->setCaptionColor(I)V

    return-void
.end method

.method private shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    if-ne p0, v0, :cond_19

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result p0

    if-ne p0, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;

    if-nez p0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->close()V

    return-void
.end method

.method public onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_15
    return-void

    :cond_16
    if-nez v0, :cond_1c

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_20

    :cond_1c
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p3, p4, p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    :goto_20
    return-void
.end method

.method public onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;

    if-nez p0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->setupCaptionColor(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;)V

    return-void
.end method

.method public onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x1

    return p0
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

.method public setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
    .registers 5

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    return-void
.end method
