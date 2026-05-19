.class public Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;
    }
.end annotation


# static fields
.field private static final ANIMATION_END:I = 0xc8

.field private static final ANIMATION_START:I = 0x64

.field private static final ANIM_START_NORMAL_ENTER_FROM_ALPHA:F = 0.0f

.field private static final ANIM_START_NORMAL_ENTER_TO_ALPHA:F = 1.0f

.field private static final DEBUG:Z

.field private static final DEFAULT_ANIMATION_TIMES:J = 0x1a4L

.field private static final FLEXIBLE_TASK_CHANGING_ROTATE_DURATION:J = 0x150L

.field private static final FLEXIBLE_TASK_MAXIMIAED_DURATION:J = 0x150L

.field private static final FLEXIBLE_TASK_MAXIMIAED_SCALE_PART:F = 0.7f

.field private static final MAX_ANIMATION_DURATION:I = 0xbb8

.field private static final RELATIVE_TO_CENTER:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "FlexibleTaskTransitionHandler"


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMaximizedAndRotation:Z

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mTransition:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p5, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$startFlexibleAnimation$3(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$startFlexibleTaskMaximizedAnimationSec$5(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Transformation;Landroid/view/animation/AnimationSet;Landroid/view/SurfaceControl$Transaction;[FLandroid/view/animation/AnimationSet;ZLandroid/view/SurfaceControl;[FLandroid/animation/ValueAnimator;)V
    .registers 13

    invoke-direct/range {p0 .. p12}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$startFlexibleTaskMaximizedAnimation$12(Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Transformation;Landroid/view/animation/AnimationSet;Landroid/view/SurfaceControl$Transaction;[FLandroid/view/animation/AnimationSet;ZLandroid/view/SurfaceControl;[FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createFlexibleStartEnterAnimation(IF)Landroid/view/animation/Animation;
    .registers 29

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpenOrCloseMode(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a  # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd  # 0.1f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v6

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v6, :cond_37

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x1

    mul-float v16, p2, v7

    const/4 v15, 0x1

    move-object v8, v6

    move/from16 v14, v16

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_4e

    :cond_37
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000  # 1.0f

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000  # 1.0f

    const/16 v22, 0x1

    mul-float v25, p2, v7

    const/16 v24, 0x1

    move-object/from16 v17, v6

    move/from16 v23, v25

    invoke-direct/range {v17 .. v25}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_4e
    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v7, 0x1a4

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_6a

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v5, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_6f

    :cond_6a
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_6f
    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    return-object v0
.end method

.method public static synthetic d(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$startFlexibleTaskMaximizedAnimation$10(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$releaseChangingAnim$8(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$performAnimation$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$performAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method private getLeashAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/view/animation/AnimationSet;
    .registers 11

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, p3, v1, p4, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 p3, 0x150

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p3, p1, p4, p2}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object p0
.end method

.method private getLeashCrop(Landroid/view/animation/Transformation;[F)Landroid/graphics/Rect;
    .registers 8

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    const/4 v0, 0x0

    aget v1, p2, v0

    div-float/2addr p1, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aget v0, p2, v0

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-int v0, v2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const/4 v3, 0x4

    aget v4, p2, v3

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    aget p2, p2, v3

    div-float/2addr p0, p2

    add-float/2addr p0, v1

    float-to-int p0, p0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private getScreenShotAnimation(FLandroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/view/animation/AnimationSet;
    .registers 8

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xeb

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    div-float p0, p1, p4

    div-float/2addr p1, p5

    new-instance p4, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p4, p0, p0, p1, p1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 p0, 0x150

    invoke-virtual {p4, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v0
.end method

.method private getScreenShotLayerWithReparent(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_10
    return-object p2
.end method

.method private static getTransformingAlpha(ZF)F
    .registers 4

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v0, v1, v0

    if-nez p0, :cond_15

    const/high16 p0, 0x40000000  # 2.0f

    mul-float/2addr p1, p0

    sub-float/2addr v1, p1

    const/4 p0, 0x0

    cmpg-float p1, v1, p0

    if-gez p1, :cond_14

    move v0, p0

    goto :goto_15

    :cond_14
    move v0, v1

    :cond_15
    :goto_15
    return v0
.end method

.method private static getTransformingRect(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, p0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr p2, v3

    float-to-int p0, p2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static synthetic h(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$releaseChangingAnim$9(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$startFlexibleTaskMaximizedAnimation$11(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method private isContainsFlexibleTask(Landroid/window/TransitionInfo;)Z
    .registers 5
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_5
    if-ltz v0, :cond_42

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->getFlexibleTaskBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->isFlexibleTask(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {v1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->isFlexibleTaskMaximized(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {v1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->isFlexibleTaskChanging(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_2b
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " need handler this transitionInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlexibleTaskTransitionHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method private isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z
    .registers 2

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isFlexibleTaskChangingAnimationInNormal(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;Landroid/window/TransitionInfo;)Z
    .registers 24
    .param p6  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/window/TransitionInfo$Change;",
            "F",
            "Ljava/lang/Runnable;",
            "Landroid/window/TransitionInfo;",
            ")Z"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p3

    move/from16 v8, p4

    move-object/from16 v1, p6

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-static {v0, v1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {v11, v6}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_a4

    invoke-direct {v11, v1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_a4

    :cond_27
    move-object/from16 v2, p1

    invoke-direct {v11, v2, v0, v6, v1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->getScreenShotLayerWithReparent(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result v1

    if-nez v1, :cond_34

    return v7

    :cond_34
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v8, v1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->getFlexibleTaskVisibleBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v8, v1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->getFlexibleTaskVisibleBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->getFlexibleTaskBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->getFlexibleTaskCornerRadius(Landroid/os/Bundle;)F

    move-result v13

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object v2, v6

    move-object v3, v12

    move-object v4, v9

    move v5, v13

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->snapshotCoverResizedTaskAnim(Landroid/view/SurfaceControl$Transaction;FLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)V

    iget-object v0, v11, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v14

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_a6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-wide/16 v0, 0x150

    invoke-virtual {v15, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v16, 0x1

    if-ge v0, v1, :cond_7a

    move/from16 v7, v16

    :cond_7a
    new-instance v5, Lcom/android/wm/shell/flexibletask/c;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v12

    move-object v4, v15

    move-object v6, v5

    move-object v5, v9

    move-object v9, v6

    move-object v6, v10

    move/from16 v8, p4

    move-object v10, v9

    move-object v9, v14

    move-object v11, v10

    move v10, v13

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/flexibletask/c;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFLandroid/view/SurfaceControl$Transaction;F)V

    invoke-virtual {v15, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object v4, v14

    move-object v5, v15

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->releaseChangingAnim(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v16

    :cond_a4
    :goto_a4
    return v7

    nop

    :array_a6
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic j(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$startFlexibleTaskMaximizedAnimationSec$6(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$startFlexibleAnimation$4(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFLandroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$isFlexibleTaskChangingAnimationInNormal$7(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFLandroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$isFlexibleTaskChangingAnimationInNormal$7(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFLandroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V
    .registers 26

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, p0

    invoke-direct {p0, v7}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "FlexibleTaskTransitionHandler"

    const-string/jumbo v1, "startFlexibleTaskChangingAnimation need force end anim because surface has release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_23
    invoke-virtual/range {p10 .. p10}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->getTransformingRect(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v8

    move/from16 v3, p6

    invoke-static {v3, v0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->getTransformingAlpha(ZF)F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v0, v2

    mul-float v11, v10, p7

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v12, v0, v1

    mul-float v13, v12, p7

    move-object/from16 v14, p8

    invoke-virtual {v14, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move v2, v11

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    move-object/from16 v1, p2

    move v2, v13

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    float-to-int v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v0, v6, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v13

    float-to-int v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    float-to-int v2, v2

    invoke-virtual {v0, v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    div-float v1, p9, v10

    invoke-virtual {v0, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    div-float v1, p9, v12

    invoke-virtual {v0, v7, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p8 .. p8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$performAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call finish anim："

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlexibleTaskTransitionHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMaximizedAndRotation:Z

    if-nez p0, :cond_2a

    const/4 p0, 0x0

    invoke-interface {p3, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :cond_2a
    return-void
.end method

.method private static synthetic lambda$performAnimation$1(Ljava/util/ArrayList;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Z)V

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method private static synthetic lambda$releaseChangingAnim$8(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$releaseChangingAnim$9(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/flexibletask/e;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/wm/shell/flexibletask/e;-><init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startFlexibleAnimation$2(Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Animation;Landroid/graphics/Point;FLandroid/view/SurfaceControl$Transaction;[FLandroid/animation/ValueAnimator;)V
    .registers 14

    invoke-direct {p0, p1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result p0

    if-nez p0, :cond_17

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "FlexibleTaskTransitionHandler"

    const-string p1, " startFlexibleAnimation current leash is not valid."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_17
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {p4, v0, v1, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    iget p2, p5, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p4, p5, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p0, p2, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p6, p6, p2, p2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p7, p1, p0, p8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p7, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$startFlexibleAnimation$3(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$startFlexibleAnimation$4(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/flexibletask/e;

    const/4 v0, 0x3

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/wm/shell/flexibletask/e;-><init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$startFlexibleTaskMaximizedAnimation$10(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$startFlexibleTaskMaximizedAnimation$11(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/flexibletask/e;

    const/4 v0, 0x2

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/wm/shell/flexibletask/e;-><init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startFlexibleTaskMaximizedAnimation$12(Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Transformation;Landroid/view/animation/AnimationSet;Landroid/view/SurfaceControl$Transaction;[FLandroid/view/animation/AnimationSet;ZLandroid/view/SurfaceControl;[FLandroid/animation/ValueAnimator;)V
    .registers 22

    move-object v0, p1

    move-object v1, p3

    move-object v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    invoke-direct {p0, p1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v0, "FlexibleTaskTransitionHandler"

    const-string v1, " startFlexibleTaskMaximizedAnimation need force end anim because surface has release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_1e
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {p4}, Landroid/view/animation/Transformation;->clear()V

    move-object v7, p5

    invoke-virtual {p5, v5, v6, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p6, p1, v7, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-object v7, p0

    invoke-direct {p0, p3, v3}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->getLeashCrop(Landroid/view/animation/Transformation;[F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p6, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-object v0, p4

    move-object/from16 v1, p8

    invoke-virtual {v1, v5, v6, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    if-eqz p9, :cond_5b

    invoke-virtual {p4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v3, p11

    invoke-virtual {p6, v4, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    invoke-virtual {p6, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_5b
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$startFlexibleTaskMaximizedAnimationSec$5(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$startFlexibleTaskMaximizedAnimationSec$6(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/flexibletask/e;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/wm/shell/flexibletask/e;-><init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Animation;Landroid/graphics/Point;FLandroid/view/SurfaceControl$Transaction;[FLandroid/animation/ValueAnimator;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->lambda$startFlexibleAnimation$2(Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Animation;Landroid/graphics/Point;FLandroid/view/SurfaceControl$Transaction;[FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static modifyLeashScale(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;F)V
    .registers 10
    .param p0  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_31

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "remove change form info "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FlexibleTaskTransitionHandler"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method private performAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 21
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
    .param p4  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " performAnimation transition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "FlexibleTaskTransitionHandler"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Got a duplicate startAnimation call for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_44
    invoke-direct {v7, v8}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isContainsFlexibleTask(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " no need handler this transitionInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, v7, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMaximizedAndRotation:Z

    new-instance v12, Lcom/android/common/debug/c;

    move-object/from16 v1, p4

    invoke-direct {v12, v7, v11, v0, v1}, Lcom/android/common/debug/c;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v13, v0

    :goto_7d
    if-ltz v13, :cond_fa

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/window/TransitionInfo$Change;

    invoke-static {v14}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->getFlexibleTaskBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v15

    invoke-static {v15}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->getFlexibleTaskScale(Landroid/os/Bundle;)F

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startAnimation() scale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->isFlexibleTaskMaximized(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_b9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v11

    move-object v3, v14

    move v4, v6

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->startFlexibleTaskMaximizedAnimation(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;)V

    goto :goto_f5

    :cond_b9
    invoke-static {v15}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->isFlexibleTaskChanging(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_d9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v11

    move-object v3, v14

    move v4, v6

    move-object v5, v12

    move v7, v6

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleTaskChangingAnimationInNormal(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;Landroid/window/TransitionInfo;)Z

    move-result v0

    if-nez v0, :cond_da

    const-string v0, "FlexibleTaskChangingAnimation some leash is null"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9, v14, v7}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->modifyLeashScale(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;F)V

    goto :goto_f5

    :cond_d9
    move v7, v6

    :cond_da
    invoke-static {v15}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->isFlexibleTaskHasDefaultAnimation(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_ec

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v11

    move-object v3, v12

    move-object v4, v14

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->startFlexibleDefaultAnim(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;F)V

    goto :goto_f5

    :cond_ec
    invoke-static {v15}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->isFlexibleTask(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-static {v8, v9, v14, v7}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->modifyLeashScale(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;F)V

    :cond_f5
    :goto_f5
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v7, p0

    goto :goto_7d

    :cond_fa
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10c

    sget-boolean v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->DEBUG:Z

    if-eqz v0, :cond_10a

    const-string/jumbo v0, "other TransitionHandler work"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10a
    const/4 v0, 0x0

    return v0

    :cond_10c
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v2, v11}, Lcom/android/launcher3/taskbar/l;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Lcom/android/common/debug/c;->run()V

    iget-boolean v0, v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMaximizedAndRotation:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private releaseChangingAnim(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/android/wm/shell/flexibletask/d;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/d;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V

    new-instance p1, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, v7

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p5, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private scaleBoundsWithFixLeftTop(FLandroid/graphics/Rect;)V
    .registers 4

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method private static snapshotCoverResizedTaskAnim(Landroid/view/SurfaceControl$Transaction;FLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)V
    .registers 7

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget v0, p4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p0, p3, v0, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p3, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    mul-float/2addr p5, p1

    invoke-virtual {p0, p3, p5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {p0, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const p1, 0x7ffffffe

    invoke-virtual {p0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private startFlexibleAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/animation/Animation;",
            "Landroid/window/TransitionInfo$Change;",
            "F",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    iget-object v0, v10, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v11

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_62

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/16 v0, 0x9

    new-array v9, v0, [F

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v13, Lcom/android/wm/shell/flexibletask/a;

    move-object v0, v13

    move-object v1, p0

    move-object v3, v12

    move-object/from16 v5, p3

    move/from16 v7, p5

    move-object v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/flexibletask/a;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Animation;Landroid/graphics/Point;FLandroid/view/SurfaceControl$Transaction;[F)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Lcom/android/wm/shell/flexibletask/d;

    const/4 v6, 0x3

    move-object v0, v7

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v4, v12

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/d;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V

    new-instance v8, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;

    move-object v0, v8

    move-object/from16 v2, p4

    move-object v3, p1

    move-object v4, v7

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v12, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_62
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startFlexibleDefaultAnim(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;F)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "Landroid/window/TransitionInfo$Change;",
            "F)V"
        }
    .end annotation

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->createFlexibleStartEnterAnimation(IF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v3, v0

    if-eqz v3, :cond_8a

    sget-boolean v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->DEBUG:Z

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "create animation: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " create animation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FlexibleTaskTransitionHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    invoke-virtual {v3}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_58

    :cond_54
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_58
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_73
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->restrictDuration(J)V

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->startFlexibleAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;)V

    :cond_8a
    return-void
.end method

.method private startFlexibleTaskMaximizedAnimation(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/window/TransitionInfo$Change;",
            "F",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v7, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFlexibleTaskMaximiaedAnimation change="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "FlexibleTaskTransitionHandler"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-direct {v13, v10}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, " startFlexibleTaskMaximizedAnimation current leash is not valid."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    iget-object v0, v13, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v15

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_126

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    const-wide/16 v0, 0x150

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->getFlexibleTaskBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->getFlexibleTaskEmbeddedBounds(Landroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_53

    move/from16 v1, p4

    goto :goto_5c

    :cond_53
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    move/from16 v1, p4

    invoke-direct {v13, v1, v0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->scaleBoundsWithFixLeftTop(FLandroid/graphics/Rect;)V

    :goto_5c
    move-object v2, v0

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v11, Landroid/view/animation/Transformation;

    invoke-direct {v11}, Landroid/view/animation/Transformation;-><init>()V

    new-instance v16, Landroid/view/animation/Transformation;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/Transformation;-><init>()V

    const/16 v0, 0x9

    new-array v6, v0, [F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3f333333  # 0.7f

    mul-float/2addr v0, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    const v5, 0x3e99999a  # 0.3f

    add-float/2addr v5, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    const v4, 0x3e99999a  # 0.3f

    add-float/2addr v4, v0

    invoke-direct {v13, v2, v3, v5, v4}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->getLeashAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/view/animation/AnimationSet;

    move-result-object v17

    const/16 v0, 0x9

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v19, v4

    move v4, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->getScreenShotAnimation(FLandroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/view/animation/AnimationSet;

    move-result-object v19

    new-instance v20, Lcom/android/wm/shell/flexibletask/d;

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p2

    move-object v4, v12

    move-object/from16 v5, p5

    move-object/from16 v22, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/d;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V

    invoke-direct {v13, v14}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->isFlexibleSurfacesValid(Landroid/view/SurfaceControl;)Z

    move-result v21

    if-eqz v21, :cond_c7

    invoke-virtual {v7, v14, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_c7
    const v0, 0x7fffffff

    invoke-virtual {v7, v10, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v1

    if-eq v0, v1, :cond_ef

    const-string/jumbo v0, "startFlexibleTaskMaximizedAnimation rotation change to "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mMaximizedAndRotation:Z

    :cond_ef
    new-instance v9, Lcom/android/wm/shell/flexibletask/b;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object v7, v15

    move-object/from16 v8, v22

    move-object v11, v9

    move-object/from16 v9, v19

    move/from16 v10, v21

    move-object v13, v11

    move-object v11, v14

    move-object/from16 v16, v15

    move-object v15, v12

    move-object/from16 v12, v18

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/flexibletask/b;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/animation/Transformation;Landroid/view/animation/Transformation;Landroid/view/animation/AnimationSet;Landroid/view/SurfaceControl$Transaction;[FLandroid/view/animation/AnimationSet;ZLandroid/view/SurfaceControl;[F)V

    invoke-virtual {v15, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$5;

    move-object v0, v7

    move-object v2, v14

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    move-object v5, v15

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$5;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v15, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_126
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startFlexibleTaskMaximizedAnimationSec(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/window/TransitionInfo$Change;",
            "F",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v8, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFlexibleTaskMaximizedAnimationSec change="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlexibleTaskTransitionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_a4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v0, 0x150

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v9, v8, v12}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->scaleBoundsWithFixLeftTop(FLandroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v14, v0, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v15, v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_6a

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v6, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_6a
    new-instance v5, Lcom/android/wm/shell/flexibletask/d;

    const/16 v16, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v9, v5

    move-object/from16 v5, p4

    move-object/from16 v17, v9

    move-object v9, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/flexibletask/d;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V

    new-instance v6, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;

    move-object v0, v6

    move v2, v14

    move v3, v15

    move-object v4, v12

    move-object v5, v13

    move-object v12, v6

    move-object v6, v10

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$2;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;F)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_a4
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public getFlexibleTaskVisibleBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->scaleBoundsWithFixLeftTop(FLandroid/graphics/Rect;)V

    return-object v0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 6
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

    sget-boolean v0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->DEBUG:Z

    const-string v1, "FlexibleTaskTransitionHandler"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequest() called with: transitionRequestInfo = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_27

    return-object v2

    :cond_27
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->getScenario(Landroid/content/res/Configuration;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_52

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handle this request. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->mTransition:Landroid/os/IBinder;

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_52
    return-object v2
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " onTransitionConsumed transition:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,aborted:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlexibleTaskTransitionHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAnimScaleSetting(F)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 6
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

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->performAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0
.end method
