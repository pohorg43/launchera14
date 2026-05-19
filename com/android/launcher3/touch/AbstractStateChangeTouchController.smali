.class public abstract Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# instance fields
.field private mAllAppsOvershootStarted:Z

.field private mCanBlockFling:Z

.field public final mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

.field public mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

.field private mDisplacementShift:F

.field private final mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

.field public mFromState:Lcom/android/launcher3/LauncherState;

.field public mGoingBetweenStates:Z

.field private mIsLogContainerSet:Z

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNoIntercept:Z

.field public mProgressMultiplier:F

.field public mStartContainerType:I

.field private mStartProgress:F

.field public mStartState:Lcom/android/launcher3/LauncherState;

.field public final mSwipeDirection:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

.field public mToState:Lcom/android/launcher3/LauncherState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mGoingBetweenStates:Z

    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    iput-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mSwipeDirection:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->lambda$goToTargetState$1(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->lambda$onDragEnd$0(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method private cancelAnimationControllers()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method

.method private getSwipeDirection()I
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v3

    :goto_16
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    if-eq p0, v0, :cond_1e

    or-int/lit8 v1, v1, 0x2

    :cond_1e
    return v1
.end method

.method private synthetic lambda$goToTargetState$1(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->logReachedState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method private synthetic lambda$onDragEnd$0(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method private logReachedState(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    return-void
.end method

.method private reinitCurrentAnimation(ZZ)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-nez v0, :cond_12

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_16

    :cond_12
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    :cond_16
    :goto_16
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onReinitToState(Lcom/android/launcher3/LauncherState;)V

    iget-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-ne v0, p2, :cond_25

    iget-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    if-eq p1, p2, :cond_27

    :cond_25
    if-ne v0, p1, :cond_29

    :cond_27
    const/4 p0, 0x0

    return p0

    :cond_29
    iput-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->initCurrentAnimation()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_4a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract canInterceptTouch(Landroid/view/MotionEvent;)Z
.end method

.method public clearState()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->cancelAnimationControllers()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mGoingBetweenStates:Z

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    return-void
.end method

.method public doOnDragEndFinally(Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/launcher3/LauncherState;)V
    .registers 3

    return-void
.end method

.method public getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;
    .registers 3

    new-instance p0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {p0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    return-object p0
.end method

.method public getShiftRange()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    return p0
.end method

.method public abstract getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
.end method

.method public goToTargetState(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v2, Lcom/android/launcher/widget/a;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->logReachedState(Lcom/android/launcher3/LauncherState;)V

    :goto_1f
    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getSysUiScrim()Lcom/android/launcher3/graphics/SysUiScrim;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/high16 v0, 0x3f800000  # 1.0f

    aput v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/SysUiScrim;->createSysuiMultiplierAnim([F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public abstract initCurrentAnimation()F
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    if-eqz v1, :cond_14

    return v0

    :cond_14
    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_1a

    const/4 v1, 0x3

    goto :goto_24

    :cond_1a
    invoke-direct {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getSwipeDirection()I

    move-result v1

    if-nez v1, :cond_23

    iput-boolean v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    return v0

    :cond_23
    move v2, v0

    :goto_24
    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_29
    iget-boolean v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mNoIntercept:Z

    if-eqz v1, :cond_2e

    return v0

    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v1, "TouchIntercept::TouchIntercept::"

    if-eqz p1, :cond_65

    sget-object v2, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v2}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string/jumbo v3, "onControllerInterceptTouchEvent had intercepted and scroll state is "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->getScrollState()Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, v1, p0}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_65
    sget-object p0, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {p0}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object p0

    const/4 p1, 0x0

    const-string/jumbo v2, "onControllerInterceptTouchEvent had intercepted but event is null"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/common/TouchLogger;->warn(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    :goto_72
    return v0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .registers 7

    iget v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    iget v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    sub-float v1, p1, v1

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateProgress(F)V

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mSwipeDirection:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    iget v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    sub-float v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->isPositive(F)Z

    move-result v0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_30

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    iget-boolean p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCanBlockFling:Z

    if-eqz p1, :cond_5f

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {p0}, Lcom/android/launcher3/util/FlingBlockCheck;->blockFling()V

    goto :goto_5f

    :cond_30
    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v4, v1, v2

    if-ltz v4, :cond_5a

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    move-result v0

    if-eqz v0, :cond_47

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    iget-boolean p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCanBlockFling:Z

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {p1}, Lcom/android/launcher3/util/FlingBlockCheck;->blockFling()V

    :cond_47
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_5f

    iput-boolean v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mAllAppsOvershootStarted:Z

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onPull(FF)V

    goto :goto_5f

    :cond_5a
    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {p0}, Lcom/android/launcher3/util/FlingBlockCheck;->onEvent()V

    :cond_5f
    :goto_5f
    return v3
.end method

.method public onDrag(FLandroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mIsLogContainerSet:Z

    if-nez p2, :cond_20

    iget-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p2, v0, :cond_e

    const/4 p2, 0x4

    iput p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    goto :goto_1d

    :cond_e
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p2, v0, :cond_16

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    goto :goto_1d

    :cond_16
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p2, v0, :cond_1d

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartContainerType:I

    :cond_1d
    :goto_1d
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mIsLogContainerSet:Z

    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDrag(F)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(F)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/android/launcher3/util/FlingBlockCheck;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    :goto_1a
    if-eqz v3, :cond_1e

    move v10, v2

    goto :goto_1f

    :cond_1e
    move v10, v0

    :goto_1f
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    iget v4, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    mul-float/2addr v4, p1

    iget-object v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v5

    if-eqz v10, :cond_47

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mProgressMultiplier:F

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_43

    iget-object v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    goto :goto_45

    :cond_43
    iget-object v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    :goto_45
    move-object v11, v5

    goto :goto_6b

    :cond_47
    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v6, :cond_5f

    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v7, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq v6, v7, :cond_5b

    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-ne v6, v7, :cond_5f

    :cond_5b
    const v6, 0x3e99999a  # 0.3f

    goto :goto_61

    :cond_5f
    const/high16 v6, 0x3f000000  # 0.5f

    :goto_61
    cmpl-float v5, v5, v6

    if-lez v5, :cond_68

    iget-object v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    goto :goto_45

    :cond_68
    iget-object v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    goto :goto_45

    :goto_6b
    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    if-ne v11, v3, :cond_77

    invoke-static {p1}, Lcom/android/launcher3/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v3

    move v9, v3

    goto :goto_78

    :cond_77
    move v9, v1

    :goto_78
    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    const/4 v5, 0x0

    if-ne v11, v3, :cond_bc

    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->isStoped()Z

    move-result v6

    if-nez v6, :cond_8d

    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_bc

    :cond_8d
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    iput v5, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onReachedFinalState(Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->clearState()V

    return-void

    :cond_bc
    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    const-wide/16 v7, 0x0

    const/high16 v12, 0x3f800000  # 1.0f

    if-ne v11, v6, :cond_e7

    cmpl-float v6, v0, v12

    if-ltz v6, :cond_cb

    move-wide v6, v7

    move v5, v12

    goto :goto_117

    :cond_cb
    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v0

    invoke-static {v4, v5, v12}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v5, v12, v5

    invoke-static {p1, v5}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v5

    int-to-long v7, v9

    mul-long/2addr v5, v7

    move-wide v6, v5

    move v5, v4

    goto :goto_117

    :cond_e7
    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v6

    iget-object v13, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v13, 0x0

    cmpg-float v6, v0, v5

    if-gtz v6, :cond_fe

    move-wide v6, v7

    goto :goto_116

    :cond_fe
    iget-object v6, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v0

    invoke-static {v4, v5, v12}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v12

    move-object v4, p0

    move v5, p1

    move-object v6, v11

    move v7, v0

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragEndGetDurationInject(FLcom/android/launcher3/LauncherState;FFI)J

    move-result-wide v4

    move-wide v6, v4

    move v5, v12

    :goto_116
    move v12, v13

    :goto_117
    invoke-virtual {p0, v11}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragEndUpdateStateInject(Lcom/android/launcher3/LauncherState;)V

    iget-object v4, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v8, Lcom/android/launcher3/model/s;

    invoke-direct {v8, p0, v11}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {v4, v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v4, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$1;-><init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;)V

    invoke-virtual {v13, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v5, v4, v2

    aput v12, v4, v1

    invoke-virtual {v13, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    move-object v4, p0

    move-object v5, v13

    move-object v8, v11

    move v9, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-ne v11, v3, :cond_163

    iget-boolean v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mAllAppsOvershootStarted:Z

    if-eqz v1, :cond_15a

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->onRelease()V

    iput-boolean v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mAllAppsOvershootStarted:Z

    goto :goto_163

    :cond_15a
    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1, v13, p1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;FF)V

    :cond_163
    :goto_163
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0, p1, v11}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->doOnDragEndFinally(Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onDragEndGetDurationInject(FLcom/android/launcher3/LauncherState;FFI)J
    .registers 6

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sub-float/2addr p0, p4

    invoke-static {p1, p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide p0

    int-to-long p2, p5

    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public onDragEndUpdateStateInject(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    return-void
.end method

.method public onDragStart(ZF)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mIsLogContainerSet:Z

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_2a

    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->cancelAnimationControllers()V

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->wasInitialTouchPositive()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->reinitCurrentAnimation(ZZ)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    goto :goto_35

    :cond_2a
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    :goto_35
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_3c

    const/4 p2, 0x1

    :cond_3c
    iput-boolean p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCanBlockFling:Z

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {p0}, Lcom/android/launcher3/util/FlingBlockCheck;->unblockFling()V

    return-void
.end method

.method public onReachedFinalState(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    return-void
.end method

.method public onReinitToState(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    return-void
.end method

.method public onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onReachedFinalState(Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->clearState()V

    iget-boolean v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mGoingBetweenStates:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    if-eq v0, p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->isStoped()Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_34

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mStartProgress:F

    iput p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDisplacementShift:F

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->goToTargetState(Lcom/android/launcher3/LauncherState;)V

    return-void

    :cond_34
    if-eqz v0, :cond_3a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->goToTargetState(Lcom/android/launcher3/LauncherState;)V

    goto :goto_3f

    :cond_3a
    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->logReachedState(Lcom/android/launcher3/LauncherState;)V

    :goto_3f
    return-void
.end method

.method public updateProgress(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void
.end method

.method public updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JLcom/android/launcher3/LauncherState;FZ)V
    .registers 7

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {p5}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
