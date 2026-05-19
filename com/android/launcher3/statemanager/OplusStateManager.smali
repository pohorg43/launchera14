.class public Lcom/android/launcher3/statemanager/OplusStateManager;
.super Lcom/android/launcher3/statemanager/StateManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;>",
        "Lcom/android/launcher3/statemanager/StateManager;"
    }
.end annotation


# static fields
.field private static final CALLER_LENGTH:I = 0xf


# instance fields
.field private mBackState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field private mLastState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field private mLauncherViewState:Lcom/android/launcher3/statemanager/BaseState;

.field private mMaybeRestStateInScreenOff:Z

.field private mStateChangeFromAssistant:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TSTATE_TYPE;>;TSTATE_TYPE;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mMaybeRestStateInScreenOff:Z

    iput-object p2, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mBackState:Lcom/android/launcher3/statemanager/BaseState;

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget p2, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    invoke-interface {p1, p2}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result p1

    if-eqz p1, :cond_15

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_17

    :cond_15
    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    :goto_17
    iput-object p1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLauncherViewState:Lcom/android/launcher3/statemanager/BaseState;

    return-void
.end method

.method private createQuickSwitchAnimationInternal(Lcom/android/launcher3/statemanager/BaseState;Ljava/util/function/BooleanSupplier;)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;",
            "Ljava/util/function/BooleanSupplier;",
            ")",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-wide v1, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getStateHandlers()[Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-interface {v4, p1, v5, v0}, Lcom/android/launcher3/statemanager/StateManager$StateHandler;->setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_24
    new-instance v1, Lcom/android/launcher3/statemanager/OplusStateManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/statemanager/OplusStateManager$1;-><init>(Lcom/android/launcher3/statemanager/OplusStateManager;Lcom/android/launcher3/statemanager/BaseState;Ljava/util/function/BooleanSupplier;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->setAnimation(Landroid/animation/AnimatorSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method private screenWillRotate(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)Z
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1e

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p2, p1, :cond_1e

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method


# virtual methods
.method public checkCurrentAnimation()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public clearSkipDrawWorkspaceFlags()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    return-void
.end method

.method public createQuickSwitchAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/util/function/BooleanSupplier;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;",
            "Lcom/android/launcher3/states/StateAnimationConfig;",
            "Ljava/util/function/BooleanSupplier;",
            ")",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->copyTo(Lcom/android/launcher3/states/StateAnimationConfig;)V

    iget-object p2, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/statemanager/OplusStateManager;->createQuickSwitchAnimationInternal(Lcom/android/launcher3/statemanager/BaseState;Ljava/util/function/BooleanSupplier;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p2, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method public forceMoveToRestState()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result v0

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    const-string v1, "forceMoveToRestState: mState = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", shouldDisableRestore = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-interface {v3}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StateManager"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v4, v1, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_50

    iget-boolean v1, v1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne v1, v4, :cond_50

    if-eqz v0, :cond_50

    const-string v0, "forceMoveToRestState: we are in gesture transaction, so we are not go to rest state"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mMaybeRestStateInScreenOff:Z

    return-void

    :cond_50
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-interface {v0}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_78

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/search/SearchEntry;->updateContent(Z)V

    :cond_78
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mBaseState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mLastStableState:Lcom/android/launcher3/statemanager/BaseState;

    :cond_7c
    return-void
.end method

.method public getBackState()Lcom/android/launcher3/statemanager/BaseState;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATE_TYPE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mBackState:Lcom/android/launcher3/statemanager/BaseState;

    return-object p0
.end method

.method public getLastColorState()Lcom/android/launcher3/statemanager/BaseState;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATE_TYPE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    return-object p0
.end method

.method public goToStateAnimated(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V
    .registers 7

    const-wide/16 v0, 0x8

    const-string v2, "StateManager#goToStateAnimated"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StateManager;->goToStateAnimated(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public injectGoToState(Lcom/android/launcher3/statemanager/BaseState;ZJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;ZJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goToState, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", delay:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", caller = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xf

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StateManager"

    invoke-static {p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    sget-object p2, Lcom/android/launcher3/model/RecentTaskTime;->INSTANCE:Lcom/android/launcher3/model/RecentTaskTime;

    sget-object p3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, p3, :cond_67

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/model/RecentTaskTime;->setEnterRecentTaskTime(J)V

    invoke-virtual {p2}, Lcom/android/launcher3/model/RecentTaskTime;->getStartTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-nez p4, :cond_5e

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/model/RecentTaskTime;->setStartTime(J)V

    :cond_5e
    iget-object p4, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p4}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/statistics/LauncherStatistics;->statEnterRecentsView()V

    :cond_67
    iget-object p4, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne p4, p3, :cond_85

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/launcher3/model/RecentTaskTime;->getEnterRecentTaskTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Lcom/android/launcher3/model/RecentTaskTime;->getAccumulatedTime()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/model/RecentTaskTime;->setAccumulatedTime(J)V

    iget-object p2, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/statistics/LauncherStatistics;->statServiceDailyRecentTaskTime()V

    :cond_85
    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, p2, :cond_9a

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p4

    if-eqz p4, :cond_9a

    iget-object p4, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p4, Lcom/android/launcher/Launcher;

    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    :cond_9a
    iget-object p4, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result p4

    if-eqz p4, :cond_b5

    sget-object p4, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq p1, p4, :cond_aa

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne v0, p4, :cond_b5

    :cond_aa
    iget-object p4, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p4, Lcom/android/launcher/Launcher;

    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    :cond_b5
    iget-object p4, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v0, 0x1

    const/high16 v1, 0x100000

    invoke-static {p4, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    sget-object p4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, p4, :cond_c2

    return-void

    :cond_c2
    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result p1

    if-eqz p1, :cond_e7

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->isStackEmpty()Z

    move-result p1

    if-nez p1, :cond_e7

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-eq p1, p2, :cond_e7

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearStateStack()V

    :cond_e7
    sget-object p1, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    iget-object p4, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p4, Lcom/android/launcher/Launcher;

    invoke-virtual {p1, p4}, Lcom/android/launcher/touch/ShelfDialog;->cancelBubble(Lcom/android/launcher/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p4, p1, Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p4, :cond_fe

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    goto :goto_ff

    :cond_fe
    move-object p1, v0

    :goto_ff
    iget-object p4, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, p4, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_10c

    check-cast p4, Lcom/android/launcher/Launcher;

    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p4

    goto :goto_10d

    :cond_10c
    move-object p4, v0

    :goto_10d
    if-eqz p1, :cond_121

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-nez v1, :cond_121

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_121

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    :cond_121
    if-eqz p4, :cond_12a

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne p1, p2, :cond_12a

    invoke-virtual {p4}, Lcom/android/launcher3/OplusDragLayer;->resetGaussianAnimState()V

    :cond_12a
    iget-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p2, p1, Lcom/android/launcher/Launcher;

    if-eqz p2, :cond_136

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v0

    :cond_136
    if-eqz v0, :cond_143

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    if-eq p0, p1, :cond_140

    if-ne p0, p3, :cond_143

    :cond_140
    invoke-virtual {v0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->resetIconBlur()V

    :cond_143
    return-void
.end method

.method public injectGoToStateAnimated(Landroid/animation/AnimatorSet;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    new-instance v0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;-><init>(Lcom/android/launcher3/statemanager/StateManager;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->run()V

    goto :goto_1d

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;-><init>(Lcom/android/launcher3/statemanager/StateManager;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1d
    return-void
.end method

.method public injectOnStateTransitionEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mLastStableState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mBackState:Lcom/android/launcher3/statemanager/BaseState;

    return-void
.end method

.method public injectReapplyState()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_2b

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/OplusStateManager;->reapplyPendingState()V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    check-cast v0, Lcom/android/launcher3/states/OPlusBaseState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/OplusStateManager;->onStateTransitionStart(Lcom/android/launcher3/statemanager/BaseState;)V

    :goto_2b
    return-void
.end method

.method public isDragLayerInternalAnimateAllowed(Lcom/android/launcher3/LauncherState;)Z
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->hasActionFlag(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    instance-of v2, v0, Lcom/android/launcher3/LauncherState;

    if-eqz v2, :cond_21

    iget-boolean v2, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_20

    if-nez v2, :cond_1f

    iget-object p0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLauncherViewState:Lcom/android/launcher3/statemanager/BaseState;

    if-eq p1, p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_20
    return v1

    :cond_21
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->isDragLayerInternalAnimateAllowed(Lcom/android/launcher3/LauncherState;)Z

    move-result p0

    return p0
.end method

.method public maybeRestStateInScreenOff()Z
    .registers 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mMaybeRestStateInScreenOff:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public maybeShouldNotHandle(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/StateManager$StateHandler;)Z
    .registers 4

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-eq p1, p0, :cond_e

    sget-object p0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p2, p0, :cond_e

    instance-of p0, p3, Lcom/android/launcher/SwitchStateTransitionController;

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateTransitionEnd, new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentStableState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mStateChangeFromAssistant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mStateChangeFromAssistant:Z

    const-string v2, "StateManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_34
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    if-eq v0, v1, :cond_78

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_78

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->isWidgetStateTop()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    if-eqz v0, :cond_78

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    invoke-interface {p1, v0}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v0, v1}, Lcom/android/launcher3/statemanager/BaseState;->onStateDisabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    if-eq v0, v1, :cond_78

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    check-cast v0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->onStateDisableTransitionEnd(Lcom/android/launcher3/Launcher;)V

    :cond_78
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_a1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    :cond_a1
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_110

    iget-boolean v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mStateChangeFromAssistant:Z

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_b8

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v0, v3, :cond_103

    :cond_b8
    if-eq p1, v2, :cond_be

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_103

    :cond_be
    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->notifyEditStateChanged(Z)V

    goto :goto_103

    :cond_c6
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_d1

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v4, :cond_f2

    :cond_d1
    if-eq p1, v2, :cond_f2

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p1, v4, :cond_f2

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->notifyEditStateChanged(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v0

    if-nez v0, :cond_103

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/OplusWorkspace;->updateAssistScreenPoint(Z)V

    goto :goto_103

    :cond_f2
    if-eq v0, v2, :cond_103

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v4, :cond_103

    if-eq p1, v2, :cond_fc

    if-ne p1, v4, :cond_103

    :cond_fc
    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->notifyEditStateChanged(Z)V

    :cond_103
    :goto_103
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/launcher/util/LauncherStateSharer;->isWorkspaceInZoom(Lcom/android/launcher3/Workspace;)V

    :cond_110
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_12b

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_120

    iget-object v2, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne v2, v0, :cond_12b

    :cond_120
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    :cond_12b
    iput-boolean v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mStateChangeFromAssistant:Z

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_135

    iput-boolean v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mMaybeRestStateInScreenOff:Z

    :cond_135
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/statemanager/BaseState;)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, ", last state="

    const-string/jumbo v2, "onStateTransitionStart, new state="

    const-string v3, "StateManager"

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    if-nez p1, :cond_53

    return-void

    :cond_53
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_5d

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v1, v2}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    :cond_5d
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-eq v1, v0, :cond_65

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_71

    :cond_65
    if-eq p1, v0, :cond_71

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq p1, v1, :cond_71

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v1, v2}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    :cond_71
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-eq v1, p1, :cond_77

    iput-object v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mBackState:Lcom/android/launcher3/statemanager/BaseState;

    :cond_77
    iput-object v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    invoke-interface {p1, v1}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result v2

    if-nez v2, :cond_85

    iput-object p1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLauncherViewState:Lcom/android/launcher3/statemanager/BaseState;

    :cond_85
    iget-object v2, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mBackState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne v2, v0, :cond_9c

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_9c

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->invalidateCellIfNeed()V

    :cond_9c
    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v3, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    if-eq v2, v3, :cond_b1

    if-eqz v3, :cond_b1

    invoke-interface {p1, v1}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result v1

    if-nez v1, :cond_b1

    iget-object v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v1, v2}, Lcom/android/launcher3/statemanager/BaseState;->onStateDisabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    :cond_b1
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_c0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mBackState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_c0

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v1, v2}, Lcom/android/launcher3/statemanager/BaseState;->onStateDisabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    :cond_c0
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v1, v2}, Lcom/android/launcher3/statemanager/BaseState;->onStateEnabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne v1, v0, :cond_d9

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->dismissExpandGuidTip()V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    :cond_d9
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->onStateTransitionStart(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public prepareForAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/statemanager/OplusStateManager;->screenWillRotate(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, ", toState = "

    const-string/jumbo v2, "prepareForAtomicAnimation, mState = "

    const-string v3, "StateManager"

    if-eqz v0, :cond_2d

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    :cond_2d
    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLastState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    invoke-interface {p2, v0}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_53

    iput-object p2, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLauncherViewState:Lcom/android/launcher3/statemanager/BaseState;

    :cond_53
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    :cond_5f
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StateManager;->prepareForAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    return-void
.end method

.method public reapplyNeeded()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/OplusStateManager;->reapplyPendingState()V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/OplusStateManager;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public reapplyPendingState()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_35

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->getStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->setPendingState(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " reapplyPendingState setPendingState "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->getStateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StateManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public reapplyState(Z)V
    .registers 5

    const-wide/16 v0, 0x8

    const-string v2, "StateManager#reapplyState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState(Z)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public recreateStateHandlers()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StateManager;->recreateStateHandlers()V

    return-void
.end method

.method public resetLauncherViewState()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mLauncherViewState:Lcom/android/launcher3/statemanager/BaseState;

    return-void
.end method

.method public shouldSkipDrawWorkspace()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget p0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public stateChangeFromAssistant(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mStateChangeFromAssistant:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string/jumbo p1, "stateChangeFromAssistant, mStateChangeFromAssistant ="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/statemanager/OplusStateManager;->mStateChangeFromAssistant:Z

    const-string v0, "StateManager"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_16
    return-void
.end method
