.class public Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field private static final FULLSCREEN_ANIMATION_DURATION:I = 0x150


# instance fields
.field private final mContext:Landroid/content/Context;

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

.field private mTransactionSupplier:Ljava/util/function/Supplier;
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
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/allapps/i;->c:Lcom/android/launcher3/allapps/i;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;-><init>(Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Supplier;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Supplier;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->lambda$startChangeTransition$0(FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;)Lcom/android/wm/shell/transition/Transitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-object p0
.end method

.method private synthetic lambda$startChangeTransition$0(FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 8

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, p1, p5, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    invoke-static {v0, p2, p5, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, p5

    mul-float/2addr v1, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-virtual {p3, p4, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p4, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
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

    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_9

    :cond_41
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v1
.end method

.method public startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 14
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    const/16 v1, 0x3f4

    if-ne p2, v1, :cond_88

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_88

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p4, v6, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_8a

    invoke-virtual {p4, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v1, 0x150

    invoke-virtual {p4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v3, v1, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    int-to-float p1, p1

    div-float v4, p3, p1

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    new-instance p1, Lcom/android/launcher3/folder/big/b;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/folder/big/b;-><init>(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;

    invoke-direct {p1, p0, p5, p6}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    return p2

    :cond_88
    return v0

    nop

    :array_8a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public startTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .registers 5
    .param p2  # Landroid/window/WindowContainerTransaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/window/WindowContainerTransaction;",
            "Landroid/graphics/Point;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
