.class public Lcom/android/launcher3/pullup/PullUpSearchTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# static fields
.field private static final ANIMATION_DURATION_DOMES:F = 1200.0f

.field private static final ANIMATION_DURATION_EXP:F = 400.0f

.field private static final PULL_UP_PROPORTION:F = 1.0f

.field private static final PULL_UP_SUCCESS_TRANSITION_PROGRESS:F = 0.65f

.field private static final PULL_UP_SUCCESS_TRANSITION_PROGRESS_DOMES:F = 0.4f

.field private static final SCROLL_SHIFT_DOMES:F = 1.0f

.field private static final SCROLL_SHIFT_EXP:F = 1.7f

.field private static final TAG:Ljava/lang/String; = "PullUpSearchTouchController"

.field private static final TOUCH_SLOP_MULTIPLIER:F = 1.0f


# instance fields
.field private mAnimationDuration:F

.field private mCanIntercept:Z

.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

.field private mIsFromScreenTwoSide:Z

.field private mIsOpenPullUpGSearch:Z

.field private mIsOpenTricFallenIcon:Z

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private final mProgressMultiplier:F

.field private mPullUpTransitionProgress:F

.field private mScrollShift:F

.field private mStartProgress:F

.field private mTouchScrollWidgetInDrawerMode:Z

.field private final mTricFallenIconsThreshold:F


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsOpenPullUpGSearch:Z

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsFromScreenTwoSide:Z

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsOpenTricFallenIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mTouchScrollWidgetInDrawerMode:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mStartProgress:F

    iput-object p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v1, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    sget-object v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v1, p1, p0, v2}, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setTouchSlopMultiplier(F)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    iput v2, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mScrollShift:F

    const/high16 v0, 0x44960000  # 1200.0f

    iput v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mAnimationDuration:F

    sget-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mScrollShift:F

    mul-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mProgressMultiplier:F

    const v0, 0x3ecccccd  # 0.4f

    iput v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mPullUpTransitionProgress:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070957

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mTricFallenIconsThreshold:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/PullUpSearchTouchController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->finishScroll()V

    return-void
.end method

.method private calculateDuration(FF)J
    .registers 7

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3e4ccccd  # 0.2f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mAnimationDuration:F

    div-float/2addr p0, v0

    mul-float/2addr p0, v1

    const/high16 v0, 0x43160000  # 150.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-long v0, p0

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p0, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, p0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const-string p1, "calculateDuration=%d, v=%f, d=%f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PullUpSearchTouchController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private canInterruptTouch(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v0

    const-string v1, "PullUpSearchTouchController"

    const/4 v2, 0x0

    if-eqz v0, :cond_f6

    iget-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsOpenPullUpGSearch:Z

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_f6

    :cond_2f
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v3

    if-ne v0, v3, :cond_3d

    const-string p0, "launcher is going to overview"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3d
    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->openIconFallenMode()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsFromScreenTwoSide:Z

    if-eqz v0, :cond_48

    return v2

    :cond_48
    iget-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mTouchScrollWidgetInDrawerMode:Z

    if-eqz v0, :cond_4d

    return v2

    :cond_4d
    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result v0

    if-eqz v0, :cond_6f

    goto/16 :goto_f5

    :cond_6f
    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_89

    const-string p0, "is multi window mode no interrupt"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_89
    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_96

    return v2

    :cond_96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    const/4 v0, 0x1

    if-eqz p1, :cond_a1

    move p1, v0

    goto :goto_a2

    :cond_a1
    move p1, v2

    :goto_a2
    if-eqz p1, :cond_a5

    return v2

    :cond_a5
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez p1, :cond_d0

    iget-object p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d0

    iget-object p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p1, :cond_d0

    iget-object p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getZoomPackage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.heytap.browser"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d0

    return v2

    :cond_d0
    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->isFinishPullUpAutoAnim()Z

    move-result p1

    if-nez p1, :cond_d7

    return v2

    :cond_d7
    iget-object p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_f4

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_f4

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_f4

    const-string/jumbo p0, "onDragEnd, Animation is running, don;t interrupt touch"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f4
    return v0

    :cond_f5
    :goto_f5
    return v2

    :cond_f6
    :goto_f6
    const-string/jumbo p0, "not on (resumed or standard or support or normal or open)"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private checkIsTouchScreenSide(F)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mTricFallenIconsThreshold:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mTricFallenIconsThreshold:F

    sub-float/2addr v0, p0

    cmpl-float p0, p1, v0

    if-lez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method private finishScroll()V
    .registers 3

    const-string v0, "PullUpSearchTouchController"

    const-string v1, "finish scroll"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_14
    return-void
.end method

.method private initCurrentAnimation()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getCurrentAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_14

    new-instance v1, Lcom/android/launcher3/model/b1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/launcher3/pullup/PullUpSearchTouchController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method private isFinishPullUpAutoAnim()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isAnimating()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isIconFallenSwitchOn()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsOpenTricFallenIcon:Z

    return p0
.end method

.method private isTouchScrollWidgetInDrawerMode(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result p0

    return p0
.end method

.method private openIconFallenMode()Z
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconFallen:Z

    const-string v1, "PullUpSearchTouchController"

    const/4 v2, 0x0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "isConfidentialVersion false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return v2

    :cond_13
    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->isIconFallenSwitchOn()Z

    move-result p0

    if-nez p0, :cond_25

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "IconFallen Switch is off, return false"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return v2

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method private stopShimmer()V
    .registers 1

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez p0, :cond_b

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->stopShimmer()V

    :cond_b
    return-void
.end method


# virtual methods
.method public cancelDragAnim()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->finishScroll()V

    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->stopShimmer()V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->resetViewState()V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v2, "is_pull_up_gsearch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsOpenPullUpGSearch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->checkIsTouchScreenSide(F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsFromScreenTwoSide:Z

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v4, "sp_key_icon_fallen_switch"

    invoke-static {v0, v4, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mIsOpenTricFallenIcon:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->isTouchScrollWidgetInDrawerMode(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mTouchScrollWidgetInDrawerMode:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->canInterruptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCanIntercept:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_40
    iget-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCanIntercept:Z

    if-nez v0, :cond_45

    return v1

    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mProgressMultiplier:F

    mul-float/2addr v0, p1

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isFirstUsePullUpMode()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    return v1

    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->updateProgress(F)V

    return v1
.end method

.method public onDragEnd(F)V
    .registers 13

    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->finishScroll()V

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->stopShimmer()V

    return-void

    :cond_b
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isFirstUsePullUpMode()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->showGuidePanel()V

    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->stopShimmer()V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mProgressMultiplier:F

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDragEnd:progress= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",fling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",progressVelocity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",interpolatedProgress="

    const-string v6, ",velocity="

    invoke-static {v4, v2, v5, v3, v6}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v5, "PullUpSearchTouchController"

    invoke-static {v4, p1, v5}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_ff

    const/high16 v5, 0x3f800000  # 1.0f

    cmpl-float v6, v1, v5

    if-nez v6, :cond_6b

    goto/16 :goto_ff

    :cond_6b
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_80

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v9, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mProgressMultiplier:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_88

    goto :goto_86

    :cond_80
    iget v9, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mPullUpTransitionProgress:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_88

    :goto_86
    move v3, v7

    goto :goto_89

    :cond_88
    move v3, v8

    :goto_89
    const-wide/16 v9, 0x0

    if-eqz v3, :cond_a9

    if-lez v6, :cond_91

    move v4, v5

    goto :goto_c8

    :cond_91
    iget-object v6, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    add-float/2addr v2, v1

    invoke-static {v2, v4, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v5, v1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->calculateDuration(FF)J

    move-result-wide v9

    goto :goto_c7

    :cond_a9
    cmpg-float v6, v1, v4

    if-gez v6, :cond_af

    move v5, v4

    goto :goto_c8

    :cond_af
    iget-object v6, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    add-float/2addr v2, v1

    invoke-static {v2, v4, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v1, v4

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->calculateDuration(FF)J

    move-result-wide v5

    move-wide v9, v5

    move v5, v4

    :goto_c7
    move v4, v2

    :goto_c8
    if-eqz v3, :cond_e1

    if-eqz v0, :cond_e1

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->fastPullUp(F)V

    :cond_e1
    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v4, v0, v8

    aput v5, v0, v7

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_ff
    :goto_ff
    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->stopShimmer()V

    return-void
.end method

.method public onDragStart(ZF)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    iget-object p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mStartProgress:F

    goto :goto_13

    :cond_10
    invoke-direct {p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->initCurrentAnimation()V

    :goto_13
    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez p0, :cond_28

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isFirstUsePullUpMode()Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->startShimmer()V

    :cond_28
    return-void
.end method

.method public updateProgress(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez p0, :cond_d

    const-string p0, "PullUpSearchTouchController"

    const-string/jumbo p1, "updateProgress: mCurrentAnimation is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void
.end method
