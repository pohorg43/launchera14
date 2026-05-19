.class public Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;


# static fields
.field private static final BACKGROUND_OPACITY_ANIM_DELAY_MS:I = 0xac

.field private static final BACKGROUND_OPACITY_ANIM_DURATION_MS:I = 0x4e

.field private static final COLLAPSE_DURATION_MS:I = 0xfa

.field private static final COLLAPSE_HEIGHT_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLLAPSE_THRESHOLD:F = 0.02f

.field private static final CONTENT_OPACITY_ANIM_DELAY_MS:I = 0x5d

.field private static final CONTENT_OPACITY_ANIM_DURATION_MS:I = 0x4e

.field private static final MANAGE_BUTTON_ANIM_DURATION_MS:I = 0x4e

.field private static final STACK_COLLAPSE_THRESHOLD:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "Bubbles"


# instance fields
.field private mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mBottomClipAnim:Landroid/animation/ObjectAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCollapseAnimation:Landroid/animation/AnimatorSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCollapsedAmount:F

.field private mDraggedAmount:I

.field private mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field private mIsStartStackCollapseAnimation:Z

.field private final mMinFlingVelocity:I

.field private mNotifiedAboutThreshold:Z

.field private final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private mSwipeDownVelocity:F

.field private mSwipeUpVelocity:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;

    const-string v1, "CollapseSpring"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->COLLAPSE_HEIGHT_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mIsStartStackCollapseAnimation:Z

    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x3e800000  # 0.25f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mMinFlingVelocity:I

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-void
.end method

.method public static synthetic a([ZLjava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->lambda$createCollapseAnimation$0([ZLjava/lang/Runnable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->getCollapsedAmount()F

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBottomClipAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mIsStartStackCollapseAnimation:Z

    return p1
.end method

.method private static adjustAnimatorSetDuration(Landroid/animation/AnimatorSet;F)V
    .registers 5

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_8

    :cond_29
    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->lambda$createHeightAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private createBackgroundAlphaAnimation()Landroid/animation/ObjectAnimator;
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x4e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xac

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method private createCollapseAnimation(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->createHeightAnimation(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->createManageButtonAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->createContentAlphaAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mIsStartStackCollapseAnimation:Z

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    new-instance v2, Landroidx/core/view/h;

    invoke-direct {v2, v1, p2}, Landroidx/core/view/h;-><init>([ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance p2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p1
.end method

.method private createContentAlphaAnimation()Landroid/animation/ObjectAnimator;
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x4e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x5d

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method private createHeightAnimation(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Landroid/animation/ValueAnimator;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/keyguardservice/b;

    invoke-direct {v0, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private createManageButtonAnimation()Landroid/animation/ObjectAnimator;
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->MANAGE_BUTTON_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x4e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getCollapsedAmount()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    return p0
.end method

.method private isPastCollapseThreshold()Z
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    int-to-float p0, p0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3ca3d70a  # 0.02f

    mul-float/2addr v0, v2

    cmpl-float p0, p0, v0

    if-lez p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private static synthetic lambda$createCollapseAnimation$0([ZLjava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .registers 5

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-nez v1, :cond_15

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_15

    const/4 p2, 0x1

    aput-boolean p2, p0, v0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_15
    return-void
.end method

.method private synthetic lambda$createHeightAnimation$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    return-void
.end method

.method private setCollapsedAmount(F)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_43

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p1, :cond_43

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    :cond_1a
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setTopClip(I)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentTranslationY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setManageButtonTranslationY(F)V

    iget p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    :cond_43
    return-void
.end method

.method private vibrateIfEnabled()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_9

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public animateBackToExpanded()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->COLLAPSE_HEIGHT_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v3, 0x43480000  # 200.0f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    const/high16 v3, 0x3f400000  # 0.75f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public animateCollapse(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_53

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->createCollapseAnimation(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    iget p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    iget p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mMinFlingVelocity:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4e

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result p1

    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    int-to-float v3, p1

    iget v4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    sub-float v5, v3, v2

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, 0x437a0000  # 250.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->adjustAnimatorSetDuration(Landroid/animation/AnimatorSet;F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_4e
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_53
    return-void
.end method

.method public animateForImeVisibilityChange(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBottomClipAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_b
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentBottomOnScreen()I

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getImeTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_21

    :cond_20
    move p1, v0

    :goto_21
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BOTTOM_CLIP_PROPERTY:Landroid/util/IntProperty;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBottomClipAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$3;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBottomClipAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3d
    return-void
.end method

.method public reset()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_14

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mIsStartStackCollapseAnimation:Z

    if-nez v2, :cond_14

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1b
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setBackgroundAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setManageButtonAlpha(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setBottomClip(I)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v2, v0, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->movePointerBy(FF)V

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    return-void
.end method

.method public setExpandedView(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mIsStartStackCollapseAnimation:Z

    if-nez v1, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_16
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->reset()V

    :cond_19
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    return-void
.end method

.method public setSwipeVelocity(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_e

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    goto :goto_12

    :cond_e
    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    :goto_12
    return-void
.end method

.method public shouldCollapse()Z
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mMinFlingVelocity:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-lez v0, :cond_b

    return v2

    :cond_b
    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_14

    return v1

    :cond_14
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->isPastCollapseThreshold()Z

    move-result p0

    if-eqz p0, :cond_1b

    return v1

    :cond_1b
    return v2
.end method

.method public updateDrag(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/bubbles/animation/OverScroll;->dampedScroll(FI)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    if-nez p1, :cond_22

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->isPastCollapseThreshold()Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->vibrateIfEnabled()V

    :cond_22
    return-void
.end method
