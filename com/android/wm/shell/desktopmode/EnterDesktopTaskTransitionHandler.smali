.class public Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field public static final DRAG_FREEFORM_SCALE:F = 0.4f

.field public static final FINAL_FREEFORM_SCALE:F = 0.6f

.field public static final FREEFORM_ANIMATION_DURATION:I = 0x150


# instance fields
.field private mOnAnimationFinishedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTransitionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:Landroid/graphics/Point;

.field private final mTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/allapps/h;->c:Lcom/android/launcher3/allapps/h;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;-><init>(Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->lambda$startChangeTransition$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;)Lcom/android/wm/shell/transition/Transitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-object p0
.end method

.method public static synthetic b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->lambda$startChangeTransition$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->lambda$startChangeTransition$2(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static synthetic lambda$startChangeTransition$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private static synthetic lambda$startChangeTransition$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    div-float/2addr v1, v2

    float-to-int v0, v1

    sub-int/2addr p2, v0

    int-to-float p3, p3

    int-to-float p2, p2

    invoke-virtual {p0, p1, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$startChangeTransition$2(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    invoke-virtual {p1, p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 15
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    const/16 v1, 0x3f2

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne p2, v1, :cond_34

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_34

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/common/c;

    invoke-direct {p1, p6}, Lcom/android/wm/shell/common/c;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return v3

    :cond_34
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/16 v4, 0x3f3

    const-wide/16 v5, 0x150

    const/4 v7, 0x2

    if-ne p2, v4, :cond_85

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v2, :cond_85

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p4, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-array p2, v7, [F

    fill-array-data p2, :array_d8

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/SurfaceControl$Transaction;

    new-instance p4, Lcom/android/launcher3/anim/q;

    invoke-direct {p4, p3, p1, v1}, Lcom/android/launcher3/anim/q;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;

    invoke-direct {p1, p0, p5, p6}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return v3

    :cond_85
    const/16 v2, 0x3f5

    if-ne p2, v2, :cond_d6

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    if-ne p1, v3, :cond_d6

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    if-eqz p1, :cond_d6

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p2, p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array p3, v7, [F

    fill-array-data p3, :array_e0

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/SurfaceControl$Transaction;

    new-instance p4, Lcom/android/launcher3/anim/q;

    invoke-direct {p4, p0, p3, p1}, Lcom/android/launcher3/anim/q;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$2;

    invoke-direct {p1, p0, p5, p6}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$2;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return v3

    :cond_d6
    return v0

    nop

    :array_d8
    .array-data 4
        0x3f2aaaaa
        0x3f800000  # 1.0f
    .end array-data

    :array_e0
    .array-data 4
        0x3ecccccd  # 0.4f
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 3
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionRequestInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 16
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1f

    goto :goto_9

    :cond_1f
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    goto :goto_9

    :cond_2b
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v5

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_9

    :cond_41
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v1
.end method

.method public startCancelMoveToDesktopMode(Landroid/window/WindowContainerTransaction;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1  # Landroid/window/WindowContainerTransaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerTransaction;",
            "Landroid/graphics/Point;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    const/16 p2, 0x3f5

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startTransition(ILandroid/window/WindowContainerTransaction;Ljava/util/function/Consumer;)V
    .registers 4
    .param p2  # Landroid/window/WindowContainerTransaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/window/WindowContainerTransaction;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
