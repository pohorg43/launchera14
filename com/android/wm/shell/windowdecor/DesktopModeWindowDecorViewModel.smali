.class public Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;,
        Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;,
        Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;,
        Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;,
        Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DesktopModeWindowDecorViewModel"


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private final mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;

.field private final mDesktopModeController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

.field private final mDesktopTasksController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

.field private final mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

.field private mDragToDesktopAnimationStarted:Z

.field private mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

.field private mEventReceiversByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

.field private final mMainChoreographer:Landroid/view/Choreographer;

.field private final mMainHandler:Landroid/os/Handler;

.field private mSplitScreenController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionDragActive:Z

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mWindowDecorByTaskId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)V"
        }
    .end annotation

    new-instance v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

    invoke-direct {v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;-><init>()V

    new-instance v12, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

    invoke-direct {v12}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;-><init>()V

    sget-object v13, Lcom/android/quickstep/l2;->c:Lcom/android/quickstep/l2;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;Ljava/util/function/Supplier;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;",
            "Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    const-class p2, Landroid/app/ActivityTaskManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityTaskManager;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p10, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    iput-object p9, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    iput-object p11, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

    iput-object p12, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

    iput-object p13, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/graphics/Point;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->lambda$handleCaptionThroughStatusBar$1(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/graphics/Point;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;IF)Landroid/graphics/Rect;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->calculateFreeformBounds(IF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Lcom/android/wm/shell/windowdecor/TaskOperations;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/MotionEvent;Landroid/view/InputMonitor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->handleReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)V

    return-void
.end method

.method private animateToDesktop(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->incrementRelayoutBlock()V

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->centerAndMoveToDesktopWithAnimation(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->lambda$handleCaptionThroughStatusBar$3(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->lambda$handleCaptionThroughStatusBar$0(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method private calculateFreeformBounds(IF)Landroid/graphics/Rect;
    .registers 7

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p2

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/Rect;

    int-to-float p1, p1

    mul-float v2, p1, v0

    float-to-int v2, v2

    int-to-float p0, p0

    mul-float v3, p0, v0

    float-to-int v3, v3

    add-float/2addr v0, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-direct {v1, v2, v3, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private centerAndMoveToDesktopWithAnimation(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_60

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v9, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    const v2, 0x3ecccccd  # 0.4f

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->calculateFreeformBounds(IF)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v5, v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v7, v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    invoke-static {v3, v2, v4, v1}, Landroidx/constraintlayout/core/motion/b;->a(FFFF)F

    move-result v4

    new-instance v1, Lcom/android/wm/shell/windowdecor/a;

    move-object v3, v1

    move-object v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/windowdecor/a;-><init>(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_60
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private createDragPositioningCallback(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/windowdecor/DragPositioningCallback;
    .registers 11
    .param p1  # Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/app/ActivityManager$RunningTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-direct {p0, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getStatusBarHeight(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v5, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isVeiledResizeEnabled()Z

    move-result p2

    if-nez p2, :cond_2e

    new-instance p2, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;)V

    return-object p2

    :cond_2e
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->createResizeVeil()V

    new-instance p2, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Lcom/android/wm/shell/transition/Transitions;)V

    return-object p2
.end method

.method private createInputChannel(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;->create(Landroid/hardware/input/InputManager;Landroid/content/Context;)Landroid/view/InputMonitor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->close()V

    :cond_f
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;->create(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;)Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->createDragPositioningCallback(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;)V

    invoke-virtual {p2, v1, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->setCaptionListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mCornersListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->setCornersListener(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;)V

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->setDragPositioningCallback(Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->access$1400(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;)Lcom/android/wm/shell/windowdecor/DragDetector;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->setDragDetector(Lcom/android/wm/shell/windowdecor/DragDetector;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->incrementEventReceiverTasks(I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->lambda$handleCaptionThroughStatusBar$2(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method private disposeInputChannel(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->dispose()V

    :cond_d
    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->lambda$startAnimation$5(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->lambda$centerAndMoveToDesktopWithAnimation$4(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getFocusedDecor()Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return-object v2
.end method

.method private getRelevantWindowDecor(Landroid/view/MotionEvent;)Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getSplitScreenDecor(Landroid/view/MotionEvent;)Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getFocusedDecor()Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-result-object p0

    return-object p0
.end method

.method private getSplitScreenDecor(Landroid/view/MotionEvent;)Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    return-object p0

    :cond_41
    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    return-object p0

    :cond_7d
    const/4 p0, 0x0

    return-object p0
.end method

.method private getStatusBarHeight(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private handleCaptionThroughStatusBar(Landroid/view/MotionEvent;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_83

    if-eq v0, v3, :cond_18

    const/4 p1, 0x3

    if-eq v0, p1, :cond_12

    goto/16 :goto_10a

    :cond_12
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    goto/16 :goto_10a

    :cond_18
    if-nez p2, :cond_1b

    return-void

    :cond_1b
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/windowdecor/c;

    invoke-direct {v2, p2, p1}, Lcom/android/wm/shell/windowdecor/c;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getStatusBarHeight(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    if-nez v0, :cond_4d

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    new-instance v1, Lcom/android/launcher/model/b;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher/model/b;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->startAnimation(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    :cond_4d
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p0, v1

    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto/16 :goto_10a

    :cond_83
    if-nez p2, :cond_8a

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    return-void

    :cond_8a
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz v0, :cond_dc

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    iget-object v0, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getStatusBarHeight(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_bc

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->animateToDesktop(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V

    goto :goto_b9

    :cond_ac
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto1Enabled()Z

    move-result p1

    if-eqz p1, :cond_b9

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    sget-object p2, Lcom/android/launcher/k;->d:Lcom/android/launcher/k;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b9
    :goto_b9
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    return-void

    :cond_bc
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    if-eqz v0, :cond_dc

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    new-instance v1, Lcom/android/launcher/model/b;

    invoke-direct {v1, p2, v0}, Lcom/android/launcher/model/b;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/graphics/Point;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    return-void

    :cond_dc
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkClickEvent(Landroid/view/MotionEvent;)V

    goto :goto_10a

    :cond_e0
    if-eqz p2, :cond_10a

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    iget-object v3, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_100

    move v2, v1

    :cond_100
    if-eqz v2, :cond_10a

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkTouchEventInHandle(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_10a

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    :cond_10a
    :goto_10a
    return-void
.end method

.method private handleEventOutsideFocusedCaption(Landroid/view/MotionEvent;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    :cond_a
    if-nez p2, :cond_d

    return-void

    :cond_d
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-nez p0, :cond_14

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenuIfNeeded(Landroid/view/MotionEvent;)V

    :cond_14
    return-void
.end method

.method private handleReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->getRelevantWindowDecor(Landroid/view/MotionEvent;)Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    move-result-object v0

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_19

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz v1, :cond_1c

    :cond_19
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->handleCaptionThroughStatusBar(Landroid/view/MotionEvent;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    :cond_1c
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->handleEventOutsideFocusedCaption(Landroid/view/MotionEvent;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz p0, :cond_42

    invoke-virtual {p2}, Landroid/view/InputMonitor;->pilferPointers()V

    goto :goto_42

    :cond_2d
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto1Enabled()Z

    move-result p1

    if-eqz p1, :cond_42

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    if-eqz p1, :cond_42

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_42

    invoke-virtual {p2}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_42
    :goto_42
    return-void
.end method

.method private incrementEventReceiverTasks(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->access$900(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;)V

    goto :goto_17

    :cond_14
    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->createInputChannel(I)V

    :goto_17
    return-void
.end method

.method private static synthetic lambda$centerAndMoveToDesktopWithAnimation$4(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    mul-float/2addr p1, p6

    add-float/2addr p1, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    mul-float/2addr p3, p6

    add-float/2addr p3, p0

    invoke-virtual {p4, p5, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$handleCaptionThroughStatusBar$0(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->setDesktopModeActive(Z)V

    return-void
.end method

.method private static synthetic lambda$handleCaptionThroughStatusBar$1(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/graphics/Point;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->cancelMoveToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V

    return-void
.end method

.method private static synthetic lambda$handleCaptionThroughStatusBar$2(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->onDragPositioningMoveThroughStatusBar(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;F)V

    return-void
.end method

.method private synthetic lambda$handleCaptionThroughStatusBar$3(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$5(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private removeTaskFromEventReceiver(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->access$1000(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;)V

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->access$1100(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;)I

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->disposeInputChannel(I)V

    :cond_20
    return-void
.end method

.method private shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskRootOrStageRoot(I)Z

    move-result v0

    if-eqz v0, :cond_23

    return v2

    :cond_23
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    if-ne v0, v1, :cond_46

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p1, 0x258

    if-lt p0, p1, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    return v1
.end method

.method private startAnimation(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V
    .registers 5
    .param p1  # Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguardservice/c;

    invoke-direct {v2, p1, v0}, Lcom/android/keyguardservice/c;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_2a
    .array-data 4
        0x3f800000  # 1.0f
        0x3ecccccd  # 0.4f
    .end array-data
.end method


# virtual methods
.method public destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->close()V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->removeTaskFromEventReceiver(I)V

    :cond_1d
    return-void
.end method

.method public onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_15
    return-void

    :cond_16
    if-nez v0, :cond_1c

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_20

    :cond_1c
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p3, p4, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    :goto_20
    return-void
.end method

.method public onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez p0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq v2, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->removeTaskFromEventReceiver(I)V

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->incrementEventReceiverTasks(I)V

    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onTransitionFinished(Landroid/os/IBinder;)V
    .registers 4
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->removeTransitionPausingRelayout(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mergeTransitionPausingRelayout(Landroid/os/IBinder;Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)V
    .registers 6
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_20

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p2

    const/16 v0, 0x3f3

    if-ne p2, v0, :cond_20

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->addTransitionPausingRelayout(Landroid/os/IBinder;)V

    :cond_20
    return-void
.end method

.method public setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
    .registers 5

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    return-void
.end method
