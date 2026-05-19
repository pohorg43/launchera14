.class public Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;
.super Lcom/android/launcher3/touch/OplusAbstractStateChangeTouchController;
.source ""


# static fields
.field private static final QUICK_SWITCH_TAN:F = 6.5f

.field private static final TAG:Ljava/lang/String; = "QuickSwitchTouchController"

.field public static final synthetic a:I


# instance fields
.field public final mOverviewPanel:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/touch/OplusAbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    const/high16 p2, 0x40d00000  # 6.5f

    invoke-virtual {p1, p2}, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->setTanAngle(F)V

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->setQuickSwitch(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->lambda$initCurrentAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$initCurrentAnimation$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->updateFullscreenProgress(F)V

    return-void
.end method

.method private setupInterpolators(Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p0, v0, :cond_30

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 p0, 0x9

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_38

    :cond_30
    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :goto_38
    return-void
.end method

.method private updateFullscreenProgress(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->setFullscreenProgress(F)V

    const v0, 0x3f59999a  # 0.85f

    cmpl-float p1, p1, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lez p1, :cond_28

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v1

    :cond_1e
    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    goto :goto_31

    :cond_28
    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    :goto_31
    return-void
.end method


# virtual methods
.method public canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    const-string v2, "QuickSwitchTouchController"

    if-eqz v0, :cond_d

    const-string p0, "canInterceptTouch: mCurrentAnimation != null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1e

    const-string p0, "canInterceptTouch: !mLauncher.isInState(LauncherState.NORMAL)"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-nez p0, :cond_2c

    const-string p0, "canInterceptTouch: (ev.getEdgeFlags & Utilities.EDGE_NAV_BAR) == 0"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2c
    return v1
.end method

.method public getShiftRange()F
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .registers 3

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->getLastSystemUiStateFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_15

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_15
    if-eqz p2, :cond_1a

    sget-object p0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    goto :goto_1c

    :cond_1a
    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_1c
    return-object p0
.end method

.method public initCurrentAnimation()F
    .registers 9

    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->setupInterpolators(Lcom/android/launcher3/states/StateAnimationConfig;)V

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->getShiftRange()F

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_27

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_27
    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StateManager;->cancelStateElementAnimation(I)V

    :cond_2a
    sget-object v2, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    sget-object v5, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v6

    aget v6, v6, v3

    const v7, 0x3f59999a  # 0.85f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    const-string v2, "b/223498680"

    const-string v4, "QuickSwitchTouchController initCurrentAnimation setContentAlpha=1"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2, v6}, Lcom/android/quickstep/views/RecentsView;->setContentAlpha(F)V

    instance-of v2, v1, Lcom/android/launcher3/statemanager/OplusStateManager;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    if-ne v5, v2, :cond_69

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v2}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    :cond_69
    check-cast v1, Lcom/android/launcher3/statemanager/OplusStateManager;

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    new-instance v4, Lcom/android/launcher3/uioverrides/touchcontrollers/d;

    invoke-direct {v4, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/d;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;)V

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/launcher3/statemanager/OplusStateManager;->createQuickSwitchAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/util/function/BooleanSupplier;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_78
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_88

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelGestureToRecentAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    :cond_88
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguardservice/b;

    invoke-direct {v1, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->getShiftRange()F

    move-result p0

    div-float/2addr v6, p0

    return v6
.end method

.method public onDragStart(ZF)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragStart(ZF)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    const-string/jumbo p2, "recentapps"

    invoke-static {p2}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    instance-of v0, p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_24

    check-cast p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->endOveriewToNormalAnim()V

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    check-cast p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->endGridAnimOfBackgroundToOverview()V

    :cond_24
    iget-object p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->mOverviewPanel:Lcom/android/quickstep/views/RecentsView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/quickstep/views/RecentsView;->setGridProgress(F)V

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportAssistantSwipeUp()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    :cond_39
    return-void
.end method

.method public onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public updateProgress(F)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateProgress(F)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->updateFullscreenProgress(F)V

    return-void
.end method
