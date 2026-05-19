.class public Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusPortraitStatesTouchController"


# instance fields
.field private mIsIconFall:Z

.field private mTricFallenIconsThreshold:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    sget-object p1, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mIsIconFall:Z

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070958

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mTricFallenIconsThreshold:F

    return-void
.end method

.method private isIconFallenEnabled(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    sget-object p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string/jumbo v0, "sp_key_icon_fallen_switch"

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isTouchOnIconFallenArea(Lcom/android/launcher3/Launcher;F)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mTricFallenIconsThreshold:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mTricFallenIconsThreshold:F

    sub-float/2addr p1, p0

    cmpl-float p0, p2, p1

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


# virtual methods
.method public canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 7

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getOverviewPeeking()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    sget-object p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string p1, "canInterceptTouch: getOverviewPeeking"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_11
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getAllTaskDismissRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string p1, "canInterceptTouch: allTaskDismissRunning is true"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v3

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    if-eqz v0, :cond_42

    if-eqz v1, :cond_42

    sget-object p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string p1, "canInterceptTouch: launcher is not resumed but gesture animation is running"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_42
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public cancelDragAnim()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragEnd(F)V

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_17
    return-void
.end method

.method public doOnDragEndFinally(Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/launcher3/LauncherState;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->doOnDragEndFinally(Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public getAllAppsToNormalAnimation()Lcom/android/launcher3/states/StateAnimationConfig;
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getAllAppsToNormalAnimation()Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object p0

    sget-object v0, Lcom/android/common/config/AnimationConstant;->WORKSPACE_FADE_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_SCALE:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public getNormalToAllAppsAnimation()Lcom/android/launcher3/states/StateAnimationConfig;
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getNormalToAllAppsAnimation()Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object p0

    sget-object v0, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_SCALE:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/common/config/AnimationConstant;->WORKSPACE_FADE_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_7

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_7
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1a

    if-eqz p2, :cond_1a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    :cond_19
    return-object v0

    :cond_1a
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->isIconFallenEnabled(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->isTouchOnIconFallenArea(Lcom/android/launcher3/Launcher;F)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mIsIconFall:Z

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string v3, "is IconFallen"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_61

    goto :goto_62

    :cond_61
    move v2, v1

    :goto_62
    invoke-virtual {v0, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->setUseRawPoint(Z)V

    :cond_65
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mIsIconFall:Z

    if-eqz v0, :cond_72

    sget-object p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onControllerInterceptTouchEvent: mIsIconFall"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_72
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onControllerInterceptTouchEvent: isScrolling"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_9b
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragStart(ZF)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragStart(ZF)V

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, p2, :cond_56

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->getMOriginalView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3e

    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    goto :goto_3e

    :cond_23
    instance-of v0, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_2d

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    goto :goto_3e

    :cond_2d
    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v0, :cond_37

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setVisibility(I)V

    goto :goto_3e

    :cond_37
    instance-of v0, p1, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v0, :cond_3e

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_4d

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->cancelStaggeredAnim()V

    :cond_4d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    :cond_56
    return-void
.end method
