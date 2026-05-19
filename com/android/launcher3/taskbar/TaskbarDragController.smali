.class public Lcom/android/launcher3/taskbar/TaskbarDragController;
.super Lcom/android/launcher3/dragndrop/DragController;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragController<",
        "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
        ">;",
        "Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;"
    }
.end annotation


# static fields
.field private static DEBUG_DRAG_SHADOW_SURFACE:Z = false

.field private static final TAG:Ljava/lang/String; = "TaskbarDragController"


# instance fields
.field public mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDragIconSize:I

.field private mIsGestureComplete:Z

.field private mIsSystemDragInProgress:Z

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mReturnAnimator:Landroid/animation/ValueAnimator;

.field private final mTempXY:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsGestureComplete:Z

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070fe3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    return p0
.end method

.method public static synthetic access$500()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->DEBUG_DRAG_SHADOW_SURFACE:Z

    return v0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/View;Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->cleanDragSurfaceAfterDrawn(Landroid/view/View;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher3/taskbar/TaskbarDragController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/views/ActivityContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method private animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V
    .registers 16

    invoke-virtual {p2}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_57

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x68

    if-ne v4, v5, :cond_23

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getAllAppsBtnView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_23
    if-ltz v4, :cond_3e

    if-eqz v1, :cond_57

    new-array v4, v3, [I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    aput v0, v4, v2

    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    goto :goto_58

    :cond_3e
    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, v3, :cond_57

    if-eqz v1, :cond_57

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v4, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    goto :goto_58

    :cond_57
    move-object v0, p1

    :goto_58
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_5f
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getOffsetX()F

    move-result v4

    sub-float v6, v1, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getOffsetY()F

    move-result p2

    sub-float v8, v1, p2

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    instance-of v1, v0, Lcom/android/launcher3/BubbleTextView;

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v1, :cond_af

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_af

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x65

    if-ne v1, v5, :cond_af

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float/2addr p2, v1

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr p2, v5

    float-to-int p2, p2

    aget v5, v7, v2

    add-int/2addr v5, p2

    aput v5, v7, v2

    aget v2, v7, v3

    add-int/2addr v2, p2

    aput v2, v7, v3

    move p2, v1

    :cond_af
    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    int-to-float v1, v1

    div-float v2, p2, v1

    if-ne v0, p1, :cond_b8

    move v3, v4

    goto :goto_ba

    :cond_b8
    const/4 p2, 0x0

    move v3, p2

    :goto_ba
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    new-instance v10, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v10}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_fe

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/android/launcher3/taskbar/TaskbarDragController$3;

    move-object v0, v12

    move-object v1, p0

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/taskbar/TaskbarDragController$3;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;FFLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F[IF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/launcher3/taskbar/TaskbarDragController$4;

    move-object v0, v7

    move-object v2, v10

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/TaskbarDragController$4;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/SurfaceControl$Transaction;Lcom/android/launcher3/BubbleTextView;Landroid/view/SurfaceControl;Landroid/view/ViewRootImpl;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_fe
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarDragController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->onDragToOriginalAnimationEnd()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$onSystemDragStarted$4(Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method private checkReportSplitScreenStart()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0}, Lcom/android/statistics/LauncherStatistics;->statsTriggerSplitScreen(Z)V

    :cond_1d
    return-void
.end method

.method private cleanDragSurfaceAfterDrawn(Landroid/view/View;Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "cleanDragSurfaceAfterDrawn(), "

    const-string v0, "TaskbarDragController"

    invoke-static {p0, p3, v0}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    new-instance p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p0, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Landroid/view/SurfaceControl;)V

    sget-object p2, Lcom/android/launcher3/taskbar/o0;->a:Lcom/android/launcher3/taskbar/o0;

    invoke-static {p1, p0, p2}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$startInternalDrag$1(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$startDragOnLongClick$0(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/TaskbarDragController;ILcom/android/launcher3/dragndrop/DragView;Ljava/lang/Float;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$startDrag$2(ILcom/android/launcher3/dragndrop/DragView;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/MotionEvent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$startDrag$3(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic h(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$cleanDragSurfaceAfterDrawn$5(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic i()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$cleanDragSurfaceAfterDrawn$6()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$cleanDragSurfaceAfterDrawn$5(Landroid/view/SurfaceControl;)V
    .registers 3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz p0, :cond_b

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_12

    :cond_b
    const-string p0, "TaskbarDragController"

    const-string v1, "cleanDragSurfaceAfterDrawn(), dragSurface null"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method private static synthetic lambda$cleanDragSurfaceAfterDrawn$6()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$onSystemDragStarted$4(Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 7

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1c

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p2, v1, :cond_c

    return v2

    :cond_c
    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    invoke-virtual {p3}, Landroid/view/DragEvent;->getResult()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    goto :goto_1b

    :cond_18
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V

    :goto_1b
    return v0

    :cond_1c
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_30

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    :cond_30
    return v0
.end method

.method private synthetic lambda$startDrag$2(ILcom/android/launcher3/dragndrop/DragView;Ljava/lang/Float;)V
    .registers 4

    if-eqz p2, :cond_d

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    int-to-float p1, p1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    int-to-float p0, p0

    invoke-virtual {p2, p3, p1, p0}, Lcom/android/launcher3/dragndrop/DragView;->updateRegistrationY(FFF)V

    :cond_d
    return-void
.end method

.method private static synthetic lambda$startDrag$3(Landroid/view/MotionEvent;)V
    .registers 1

    return-void
.end method

.method private synthetic lambda$startDragOnLongClick$0(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V
    .registers 7

    const-string v0, "Taskbar"

    const-string v1, "TaskbarDragController"

    const-string/jumbo v2, "startDragOnLongClick: execute start drag"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsGestureComplete:Z

    if-eqz v2, :cond_1c

    const-string/jumbo p1, "the gesture already completed, so we can\'t start drag"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onDragEnd()V

    return-void

    :cond_1c
    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/launcher3/IBubbleTextViewExt;->setTextAlphaEntryPoint(F)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startInternalDrag(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object p2

    if-eqz p3, :cond_42

    iget v0, p3, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    neg-int p3, p3

    invoke-virtual {p2, v0, p3}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    :cond_42
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p2, :cond_50

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    goto :goto_52

    :cond_50
    instance-of p1, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    :goto_52
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    return-void
.end method

.method private static synthetic lambda$startInternalDrag$1(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 3

    return-void
.end method

.method private maybeOnDragEnd()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    goto :goto_1d

    :cond_1b
    instance-of v0, v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    :goto_1d
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onDragEnd()V

    :cond_2c
    return-void
.end method

.method private onDragToOriginalAnimationEnd()V
    .registers 4

    const-string v0, "Taskbar"

    const-string v1, "TaskbarDragController"

    const-string/jumbo v2, "onDragToOriginalAnimationEnd()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-boolean v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->callOnDragEnd()V

    :cond_1d
    return-void
.end method

.method private onSystemDragStarted(Lcom/android/launcher3/BubbleTextView;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->checkReportSplitScreenStart()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/l0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/l0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z
    .registers 7
    .param p2  # Lcom/android/launcher3/graphics/DragPreviewProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Taskbar"

    const-string v1, "TaskbarDragController"

    const-string/jumbo v2, "startDragOnLongClick()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const-string v0, "Main"

    const-string/jumbo v1, "onTaskbarItemLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onDragStart()V

    invoke-virtual {p1}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_30

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    :cond_30
    new-instance p1, Lcom/android/common/debug/c;

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return v2
.end method

.method private startInternalDrag(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;)Lcom/android/launcher3/dragndrop/DragView;
    .registers 18
    .param p2  # Lcom/android/launcher3/graphics/DragPreviewProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v2, :cond_14

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v4

    goto :goto_16

    :cond_14
    instance-of v1, v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->clearFocus()V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    if-nez p2, :cond_28

    new-instance v2, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v2, v3}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    goto :goto_2a

    :cond_28
    move-object/from16 v2, p2

    :goto_2a
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v11

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    aget v6, v2, v1

    const/4 v7, 0x1

    aget v2, v2, v7

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v9}, Lcom/android/launcher3/BubbleTextView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget v7, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    new-instance v12, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v12}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_POPUP_MENU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    if-eqz v2, :cond_69

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v1

    iput-object v1, v12, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    goto :goto_73

    :cond_69
    const-string v1, "Taskbar"

    const-string v2, "TaskbarDragController"

    const-string/jumbo v8, "startInternalDrag init dragOptions.preDragCondition failed, taskbarPopupController is null!"

    invoke-static {v1, v2, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    :goto_73
    iget-object v1, v12, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-nez v1, :cond_7e

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragController$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    iput-object v1, v12, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_7e
    const/4 v2, 0x0

    sget-object v8, Lcom/android/launcher3/taskbar/m0;->a:Lcom/android/launcher3/taskbar/m0;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v13, 0x0

    mul-float v14, v11, v4

    move-object v0, p0

    move-object v1, v5

    move-object/from16 v3, p1

    move v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, v10

    move-object v8, v13

    move v10, v14

    invoke-virtual/range {v0 .. v12}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    return-object v0
.end method

.method private startSystemDrag(Lcom/android/launcher3/BubbleTextView;)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v3, "android.intent.extra.USER"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "TaskbarDragController"

    const-string v7, "Taskbar"

    const/4 v8, 0x1

    if-eqz v2, :cond_9c

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v2, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    const-class v9, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v9}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    new-instance v9, Landroid/content/ClipDescription;

    iget-object v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    new-array v11, v8, [Ljava/lang/String;

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v12, v8, :cond_31

    const-string v12, "application/vnd.android.shortcut"

    goto :goto_33

    :cond_31
    const-string v12, "application/vnd.android.activity"

    :goto_33
    aput-object v12, v11, v4

    invoke-direct {v9, v10, v11}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v12, "android.intent.extra.PENDING_INTENT"

    if-ne v11, v8, :cond_6e

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v8, v5, v13}, Landroid/content/pm/LauncherApps;->getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    const-string v11, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ID"

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_96

    :cond_6e
    :try_start_6e
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v8, v5, v11}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7f} :catch_80

    goto :goto_96

    :catch_80
    move-exception v2

    const-string/jumbo v8, "startSystemDrag put EXTRA_PENDING_INTENT failed, e:"

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v6, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_96
    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_cb

    :cond_9c
    instance-of v2, v1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_c9

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v9, Landroid/content/ClipDescription;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    const-string v8, "application/vnd.android.task"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v2, v8}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const-string v8, "android.intent.extra.TASK_ID"

    invoke-virtual {v10, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_cb

    :cond_c9
    move-object v9, v5

    move-object v10, v9

    :goto_cb
    if-eqz v9, :cond_190

    if-eqz v10, :cond_190

    new-instance v1, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 v2, 0x100000

    invoke-direct {v1, v2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/logging/InstanceId;-><init>(I)V

    const-string v3, "android.intent.extra.LOGGING_INSTANCE_ID"

    invoke-virtual {v10, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.TASK_BAR_RECT"

    invoke-virtual {v10, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ClipData;

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v10}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    invoke-direct {v1, v9, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->getForceNotStartDragAndDrop()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setForceNotStartDragAndDrop(Z)V

    const-string v0, "if Pointer_down action before startDragAndDrop, give it up"

    invoke-static {v7, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_154

    :cond_10e
    :try_start_10e
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_145

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->isTouchFromGesture()Z

    move-result v8

    if-eqz v8, :cond_145

    const-string v8, "is touch from gesture area, so update the last touch point"

    invoke-static {v7, v6, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v8, Landroid/view/ViewRootImpl;

    const-string/jumbo v9, "mLastTouchPoint"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v8, v3, Landroid/graphics/PointF;

    if-eqz v8, :cond_145

    check-cast v3, Landroid/graphics/PointF;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->getLastRawPoint()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->getLastRawPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    :cond_145
    const/16 v3, 0xb00

    invoke-virtual {p1, v1, v0, v5, v3}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v4
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_14b} :catch_14c

    goto :goto_154

    :catch_14c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v6, v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_154
    if-eqz v4, :cond_187

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setHasDragAndDropEnable(Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->onSystemDragStarted(Lcom/android/launcher3/BubbleTextView;)V

    :try_start_15d
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_17a} :catch_17b

    goto :goto_183

    :catch_17b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v6, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_183
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->notifyStartDragToSplitScreen()V

    goto :goto_190

    :cond_187
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    const-string/jumbo p0, "start drag failed, so we reset mIsInPreDrag to true to make dragView back anim normal"

    invoke-static {v7, v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_190
    :goto_190
    return-void
.end method


# virtual methods
.method public addDropTarget(Lcom/android/launcher3/DropTarget;)V
    .registers 2

    return-void
.end method

.method public callOnDragEnd()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    return-void
.end method

.method public callOnDragStart()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-nez v0, :cond_9

    goto :goto_35

    :cond_9
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startSystemDrag(Lcom/android/launcher3/BubbleTextView;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_30

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x68

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->hideAllAppsWhenStartApp(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;I)V

    goto :goto_35

    :cond_30
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "TaskbarDragController:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmDragIconSize=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmTempXY=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmRegistrationX=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmRegistrationY=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmIsSystemDragInProgress=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s\tisInternalDragInProgess=%b"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public endDrag()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v3, :cond_62

    iget-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    iput-boolean v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :cond_17
    iget-boolean v1, v2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const-string v2, "isDeferred = "

    const-string v4, ", mIsInPreDrag="

    invoke-static {v2, v1, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    const-string v5, "TaskbarDragController"

    invoke-static {v2, v4, v5}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v1, :cond_31

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    :cond_31
    iget-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v4, v2, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v4, :cond_44

    instance-of v4, v4, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v4, :cond_44

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    :cond_44
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->forceCancelAnimation()V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v2, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v2, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    const/16 v3, 0x12c

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    :cond_62
    if-nez v1, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->callOnDragEnd()V

    :cond_67
    return-void
.end method

.method public exitDrag()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public getClampedDragLayerPos(FF)Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getX(Landroid/view/MotionEvent;)F
    .registers 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    return p0
.end method

.method public getY(Landroid/view/MotionEvent;)F
    .registers 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public isDragging()Z
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isSystemDragInProgress()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    goto :goto_13

    :cond_d
    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsGestureComplete:Z

    goto :goto_13

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsGestureComplete:Z

    :goto_13
    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .registers 29
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v3, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c36

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int v5, v5, p4

    iput v5, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v4, v4, p5

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    const/4 v3, 0x0

    if-nez v2, :cond_31

    move v13, v3

    goto :goto_34

    :cond_31
    iget v5, v2, Landroid/graphics/Rect;->left:I

    move v13, v5

    :goto_34
    if-nez v2, :cond_38

    move v14, v3

    goto :goto_3b

    :cond_38
    iget v5, v2, Landroid/graphics/Rect;->top:I

    move v14, v5

    :goto_3b
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    new-instance v5, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v6, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v6, p3

    iput-object v6, v5, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    iput-boolean v3, v5, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v5, :cond_63

    const-wide/16 v6, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v5

    if-nez v5, :cond_63

    const/4 v5, 0x1

    goto :goto_64

    :cond_63
    move v5, v3

    :goto_64
    iput-boolean v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v2, :cond_71

    iget v5, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    goto :goto_72

    :cond_71
    const/4 v5, 0x0

    :goto_72
    move v12, v5

    iget-object v15, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v11, Lcom/android/launcher3/taskbar/TaskbarDragView;

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    iget v8, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    move-object v5, v11

    move-object/from16 v7, p1

    move v9, v4

    move/from16 v10, p10

    move-object v3, v11

    move/from16 v11, p11

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/taskbar/TaskbarDragView;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Landroid/graphics/drawable/Drawable;IIFFF)V

    iput-object v3, v15, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    new-instance v5, Lcom/android/launcher3/taskbar/n0;

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/taskbar/n0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;I)V

    invoke-virtual {v3, v5}, Lcom/android/launcher3/dragndrop/DragView;->setOnAnimUpdateListener(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/dragndrop/DragView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    add-int v7, p4, v13

    sub-int/2addr v6, v7

    iput v6, v4, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int v6, p5, v14

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    sget-object v5, Lcom/android/launcher3/a2;->c:Lcom/android/launcher3/a2;

    invoke-static {v0, v4, v5}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v4, v4, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v4, :cond_c4

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v3}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    :cond_c4
    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v5, p6

    iput-object v5, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iput-object v1, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_d4

    invoke-virtual/range {p7 .. p7}, Lcom/android/launcher3/model/data/ItemInfo;->makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    iput-object v1, v4, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    :cond_d4
    if-eqz v2, :cond_de

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    :cond_de
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v2, v1}, Lcom/android/launcher3/dragndrop/DragView;->show(II)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    iget-boolean v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v1, :cond_f2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->callOnDragStart()V

    goto :goto_fd

    :cond_f2
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_fd

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v2}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_fd
    :goto_fd
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    return-object v3
.end method

.method public startDragOnLongClick(Landroid/view/View;)Z
    .registers 5

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->iconAlignmentAnimationRunningWithHotseat()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    const-string p0, "Taskbar"

    const-string p1, "TaskbarDragController"

    const-string/jumbo v0, "startDragOnLongClick false"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v2, Landroid/content/Context;

    invoke-static {p1, v2, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->supportDrag(Landroid/view/View;Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_25

    return v1

    :cond_25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method public startDragOnLongClick(Lcom/android/launcher3/shortcuts/DeepShortcutView;Landroid/graphics/Point;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method
