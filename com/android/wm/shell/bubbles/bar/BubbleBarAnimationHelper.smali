.class public Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EXPANDED_VIEW_ALPHA_ANIMATION_DURATION:I = 0x96

.field private static final EXPANDED_VIEW_ANIMATE_OUT_SCALE_AMOUNT:F = 0.75f

.field private static final EXPANDED_VIEW_ANIMATE_SCALE_AMOUNT:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "BubbleBarAnimationHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field private final mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

.field private mIsExpanded:Z

.field private final mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

.field private final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private final mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private final mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43960000  # 300.0f

    const v2, 0x3f666666  # 0.9f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x44610000  # 900.0f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_52

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    const-wide/16 p1, 0x96

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {p1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_52
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->lambda$animateExpansion$2(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    return p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->lambda$animateCollapse$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->lambda$animateExpansion$1(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->lambda$animateCollapse$3(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method private synthetic lambda$animateCollapse$3(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$animateCollapse$4(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    :cond_14
    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_19
    return-void
.end method

.method private synthetic lambda$animateExpansion$1(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private synthetic lambda$animateExpansion$2(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->updateExpandedView()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setSurfaceZOrderedOnTop(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setTaskViewAlpha(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_26
    return-void
.end method

.method private updateExpandedView()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_67

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_67

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBarExpandedViewPadding()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewWidthForBubbleBar()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForBubbleBar()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->isOnLeft()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setX(F)V

    goto :goto_56

    :cond_46
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setX(F)V

    :goto_56
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    add-int/2addr p0, v1

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setY(F)V

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->updateLocation()V

    return-void

    :cond_67
    :goto_67
    sget-object p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->TAG:Ljava/lang/String;

    const-string v0, "Trying to update the expanded view without a bubble"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public animateCollapse(Ljava/lang/Runnable;)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_63

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_63

    :cond_e
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v3, 0x3f400000  # 0.75f

    invoke-static {v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/bubbles/bar/a;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/bar/a;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Ljava/lang/Runnable;)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void

    :cond_63
    :goto_63
    sget-object p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->TAG:Ljava/lang/String;

    const-string p1, "Trying to animate collapse without a bubble"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public animateExpansion(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .registers 9

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->updateExpandedView()V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setAnimating(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setTaskViewAlpha(F)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBarPosition()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const v5, 0x3f666666  # 0.9f

    invoke-virtual {v3, v5, v5, v4, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/y0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/y0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/wm/shell/animation/c;

    invoke-direct {v3, p0, p1}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method
