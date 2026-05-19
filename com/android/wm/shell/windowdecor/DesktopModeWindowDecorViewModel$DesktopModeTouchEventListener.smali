.class Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DesktopModeTouchEventListener"
.end annotation


# instance fields
.field private final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field private mDragPointerId:I

.field private final mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field private mIsDragging:Z

.field private final mTaskId:I

.field private final mTaskToken:Landroid/window/WindowContainerToken;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$onClick$0(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;)Lcom/android/wm/shell/windowdecor/DragDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$onClick$2(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$onClick$4(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic d(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$handleMotionEvent$7(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$onClick$3(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$onClick$1(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic g(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$handleMotionEvent$8(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic h(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$moveTaskToFront$6(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method public static synthetic i(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->lambda$moveTaskToFront$5(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method private static synthetic lambda$handleMotionEvent$7(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 5

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    invoke-virtual {p4, p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->onDragPositioningMove(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;F)V

    return-void
.end method

.method private static synthetic lambda$handleMotionEvent$8(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->onDragPositioningEnd(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V

    return-void
.end method

.method private static synthetic lambda$moveTaskToFront$5(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$moveTaskToFront$6(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$onClick$0(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->setDesktopModeActive(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$1(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToDesktop(I)V

    return-void
.end method

.method private static synthetic lambda$onClick$2(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->setDesktopModeActive(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$3(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToFullscreen(I)V

    return-void
.end method

.method private synthetic lambda$onClick$4(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToNextDisplay(I)V

    return-void
.end method

.method private moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/e;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/windowdecor/e;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$600(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/windowdecor/d;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/windowdecor/d;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$500(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_1b

    return v3

    :cond_1b
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto1Enabled()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$600(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$600(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->getDisplayAreaWindowingMode(I)I

    move-result v1

    if-ne v1, v2, :cond_42

    return v3

    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_c2

    if-eq v1, v2, :cond_83

    const/4 v4, 0x2

    if-eq v1, v4, :cond_51

    const/4 v4, 0x3

    if-eq v1, v4, :cond_83

    return v2

    :cond_51
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$200(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/wm/shell/windowdecor/f;

    invoke-direct {v5, v0, v1, p1, v3}, Lcom/android/wm/shell/windowdecor/f;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)V

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    return v2

    :cond_83
    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v4, v5, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/windowdecor/c;

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/windowdecor/c;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    return p1

    :cond_c2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPointerId:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v0, v3, v1, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(IFF)V

    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mIsDragging:Z

    return v3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$200(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/android/wm/shell/R$id;->close_window:I

    if-eq p1, v1, :cond_b9

    sget v1, Lcom/android/wm/shell/R$id;->close_button:I

    if-ne p1, v1, :cond_1c

    goto/16 :goto_b9

    :cond_1c
    sget v1, Lcom/android/wm/shell/R$id;->back_button:I

    if-ne p1, v1, :cond_2b

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$300(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Lcom/android/wm/shell/windowdecor/TaskOperations;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->injectBackKey()V

    goto/16 :goto_11b

    :cond_2b
    sget v1, Lcom/android/wm/shell/R$id;->caption_handle:I

    if-eq p1, v1, :cond_9c

    sget v1, Lcom/android/wm/shell/R$id;->open_menu_button:I

    if-ne p1, v1, :cond_34

    goto :goto_9c

    :cond_34
    sget v1, Lcom/android/wm/shell/R$id;->desktop_button:I

    if-ne p1, v1, :cond_56

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$600(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/windowdecor/j;->a:Lcom/android/wm/shell/windowdecor/j;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/windowdecor/i;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/i;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    goto/16 :goto_11b

    :cond_56
    sget v1, Lcom/android/wm/shell/R$id;->fullscreen_button:I

    if-ne p1, v1, :cond_78

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$600(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/windowdecor/k;->a:Lcom/android/wm/shell/windowdecor/k;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/windowdecor/h;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/h;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    goto/16 :goto_11b

    :cond_78
    sget v1, Lcom/android/wm/shell/R$id;->collapse_menu_button:I

    if-ne p1, v1, :cond_81

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    goto/16 :goto_11b

    :cond_81
    sget v1, Lcom/android/wm/shell/R$id;->select_button:I

    if-ne p1, v1, :cond_11b

    sget-boolean p1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_DISPLAY_CHANGE_ENABLED:Z

    if-eqz p1, :cond_11b

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/windowdecor/g;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/g;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    goto/16 :goto_11b

    :cond_9c
    :goto_9c
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result p1

    if-nez p1, :cond_b5

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$500(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p1

    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->createHandleMenu()V

    goto :goto_11b

    :cond_b5
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    goto :goto_11b

    :cond_b9
    :goto_b9
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$300(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Lcom/android/wm/shell/windowdecor/TaskOperations;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->closeTask(Landroid/window/WindowContainerToken;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$400(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_11b

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$400(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_11b

    iget p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$400(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v0, :cond_fa

    const/4 v1, 0x1

    :cond_fa
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$400(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$400(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTaskToFullscreen(I)V

    :cond_11b
    :goto_11b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/wm/shell/R$id;->caption_handle:I

    if-eq p1, v0, :cond_16

    sget v0, Lcom/android/wm/shell/R$id;->desktop_mode_caption:I

    if-eq p1, v0, :cond_16

    sget v0, Lcom/android/wm/shell/R$id;->open_menu_button:I

    if-eq p1, v0, :cond_16

    sget v0, Lcom/android/wm/shell/R$id;->close_window:I

    if-eq p1, v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$500(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
