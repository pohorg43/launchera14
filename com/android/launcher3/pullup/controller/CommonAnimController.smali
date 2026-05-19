.class public Lcom/android/launcher3/pullup/controller/CommonAnimController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/pullup/itf/IAnimItf;


# static fields
.field private static final AFTER_ANIM_TIMES:J = 0x12cL

.field private static final ANIMATING:I = 0x66

.field private static final DEFAULT_DURATION:J = 0x320L

.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final DRAGGING:I = 0x65

.field private static final FINISHED:I = 0x67

.field private static final MAX_ALPHA:F = 0.4f

.field public static final PROGRESS_FINISH:F = 1.0f

.field public static final PROGRESS_START:F = 0.0f

.field public static final PULL_UP_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/pullup/controller/CommonAnimController;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESET_ANIM_TIMES:J = 0x19eL

.field private static final RESET_GVIEW_ANIM_DELAY:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "GSearchAnimController"


# instance fields
.field private mAnimState:I

.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field private final mGViewWidthDistance:F

.field private final mGWTranslationB:F

.field private final mGWTranslationK:F

.field private final mGWidthB:F

.field private final mGWidthK:F

.field private final mGoogleGreyViewModifyWidthDistance:[F

.field private final mGoogleGreyViewTransYDistance:[F

.field private final mGoogleGreyViewWidthDistance:[F

.field private mHotSeat:Lcom/android/launcher3/OplusHotseat;

.field private mIDoOperatorItf:Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

.field private mLaunchManager:Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mProgress:F

.field private final mScreenHeightPx:F

.field private mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

.field private final mShiftRange:F

.field private final mStartMoveGViewShift:F

.field private final mStartReWidthShift:F

.field private mUiHandler:Landroid/os/Handler;

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;

.field public scaleSet:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/pullup/controller/CommonAnimController$1;

    const-string/jumbo v1, "pull_up_gsearch"

    invoke-direct {v0, v1}, Lcom/android/launcher3/pullup/controller/CommonAnimController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->PULL_UP_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/pullup/controller/CommonViewController;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mHotSeat:Lcom/android/launcher3/OplusHotseat;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mUiHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mScreenHeightPx:F

    iput p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mShiftRange:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d55

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070d58

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGoogleGreyViewTransYDistance:[F

    new-array v2, v0, [F

    iget-object v5, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070d57

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    aput v5, v2, v3

    iget-object v5, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070d59

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    aput v5, v2, v4

    iput-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGoogleGreyViewModifyWidthDistance:[F

    aget v1, v1, v3

    div-float/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mStartMoveGViewShift:F

    aget v2, v2, v3

    div-float/2addr v2, p1

    iput v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mStartReWidthShift:F

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float v5, p1, v2

    div-float v5, p1, v5

    iput v5, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGWidthK:F

    sub-float v5, p1, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGWidthB:F

    sub-float v2, p1, v1

    div-float v2, p1, v2

    iput v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGWTranslationK:F

    sub-float/2addr p1, v1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGWTranslationB:F

    new-array p1, v0, [F

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d4f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    aput v0, p1, v3

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d53

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    aput v0, p1, v4

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGoogleGreyViewWidthDistance:[F

    aget v0, p1, v4

    aget p1, p1, v3

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGViewWidthDistance:F

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/controller/CommonViewController;->getSearchView()Lcom/android/launcher3/pullup/view/CommonPullUpView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    new-instance p1, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;

    iget-object p2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-direct {p1, p2, v0, p0}, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLaunchManager:Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->lambda$makeAnim$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/pullup/controller/CommonAnimController;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mProgress:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/pullup/controller/CommonAnimController;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mProgress:F

    return p1
.end method

.method public static synthetic access$102(Lcom/android/launcher3/pullup/controller/CommonAnimController;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/pullup/itf/IDoOperatorItf;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mIDoOperatorItf:Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/pullup/controller/CommonAnimController;)Lcom/android/launcher3/pullup/view/CommonPullUpView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->lambda$resetGSearchViewWithAnim$2()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/pullup/controller/CommonAnimController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->lambda$resetGSearchViewWithAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private convertGWidthRange(F)F
    .registers 3

    iget v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGWidthK:F

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGWidthB:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private covertGWTransRange(F)F
    .registers 3

    iget v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGWTranslationK:F

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGWTranslationB:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private synthetic lambda$makeAnim$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->makeAnim()V

    return-void
.end method

.method private synthetic lambda$resetGSearchViewWithAnim$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView(F)V

    return-void
.end method

.method private synthetic lambda$resetGSearchViewWithAnim$2()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/pullup/controller/CommonAnimController$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController$5;-><init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x19e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_28
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public createPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;
    .registers 4

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x320

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->initAnimationBuilder(Lcom/android/launcher3/anim/PendingAnimation;)V

    new-instance v1, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController$2;-><init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public varargs createSpringAnimation([F)Landroid/animation/Animator;
    .registers 3

    sget-object v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->PULL_UP_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public destroyShimmer()V
    .registers 1

    return-void
.end method

.method public doPullUpViewAnim(F)V
    .registers 7

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    sget-object v0, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_SCALE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sget-object v1, Lcom/android/common/config/AnimationConstant;->WORKSPACE_FADE_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v1, v2, v1

    const v3, 0x3f6b851f  # 0.92f

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    if-eqz v3, :cond_31

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :cond_31
    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_79

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v3

    if-nez v3, :cond_79

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_79
    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mHotSeat:Lcom/android/launcher3/OplusHotseat;

    if-eqz v0, :cond_91

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mHotSeat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_91
    iget v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mShiftRange:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mScreenHeightPx:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object p0

    sget-object v1, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public fastScaleViewXY(F)V
    .registers 5

    const/16 p1, 0x66

    iput p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getOvalView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/pullup/anim/AnimManager;->scaleOvalViewX(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getOvalView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/pullup/anim/AnimManager;->scaleOvalViewY(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getGoogleLayoutView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/pullup/anim/AnimManager;->alphaView(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getCurrentAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->createPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object v0
.end method

.method public getProgress()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mProgress:F

    return p0
.end method

.method public initAnimationBuilder(Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->createSpringAnimation([F)Landroid/animation/Animator;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    return-void
.end method

.method public isAnimating()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    const/16 v0, 0x66

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public makeAnim()V
    .registers 6

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mShiftRange:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGoogleGreyViewTransYDistance:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGoogleGreyViewWidthDistance:[F

    aget v2, v3, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v3}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getScrimFl()Landroid/widget/FrameLayout;

    move-result-object v3

    const v4, 0x3ecccccd  # 0.4f

    invoke-static {v3, v4}, Lcom/android/launcher3/pullup/anim/AnimManager;->alphaScrim(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v4}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getOvalView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/launcher3/pullup/anim/AnimManager;->ovalWhiteTransY(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v4}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getGoogleLayoutView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/launcher3/pullup/anim/AnimManager;->googleGeryTransY(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v4}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getGoogleLayoutView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/launcher3/pullup/anim/AnimManager;->googleGreyWidth(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/pullup/controller/CommonAnimController$3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController$3;-><init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/launcher3/pullup/controller/CommonAnimController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController$4;-><init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public makeAnim(J)V
    .registers 5

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->makeAnim()V

    :goto_18
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mUiHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLaunchManager:Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mIDoOperatorItf:Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mHotSeat:Lcom/android/launcher3/OplusHotseat;

    return-void
.end method

.method public resetGSearchView()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    :cond_7
    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->setFastScroll(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->setProgress(F)V

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    return-void
.end method

.method public resetGSearchView(F)V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mShiftRange:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getOvalView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mScreenHeightPx:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getGoogleLayoutView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mScreenHeightPx:F

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mShiftRange:F

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mGoogleGreyViewTransYDistance:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const v0, 0x3ecccccd  # 0.4f

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mSearchView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getScrimFl()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public resetGSearchViewWithAnim()V
    .registers 5

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setDoOperatorListener(Lcom/android/launcher3/pullup/itf/IDoOperatorItf;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mIDoOperatorItf:Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    return-void
.end method

.method public setProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->doPullUpViewAnim(F)V

    return-void
.end method

.method public startLauncherActivity()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->isAnimating()Z

    move-result v0

    const-string v1, "GSearchAnimController"

    if-eqz v0, :cond_e

    const-string p0, "launcher page error, is animating"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mAnimState:I

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    const-string/jumbo v3, "open_google_search_times"

    invoke-static {v0, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLauncher:Lcom/android/launcher/Launcher;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->mLaunchManager:Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->startLauncherPage()V

    goto :goto_34

    :cond_2b
    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    const-string/jumbo p0, "start Launcher Page error because LauncherManager is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public startShimmer()V
    .registers 1

    return-void
.end method

.method public stopShimmer()V
    .registers 1

    return-void
.end method
