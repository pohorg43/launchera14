.class public Lcom/android/wm/shell/transition/OplusTransitionController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile sInstance:Lcom/android/wm/shell/transition/OplusTransitionController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mFlexibleSubDisplayTransition:Lcom/oplus/transition/FlexibleSubDisplayTransition;

.field private mFlexibleTaskTransitionHandler:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

.field private mFlexibleWindowTransitionHandler:Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;

.field private mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

.field private mHandler:Landroid/os/Handler;

.field private mLightOSTransition:Lcom/oplus/transition/OplusLightOSTransition;

.field private mLoadLightScreenRotation:Z

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mOplusCompatModeAnimationManager:Lcom/oplus/transition/OplusCompatModeAnimationManager;

.field private mRemoteInterrupt:Lcom/oplus/transition/OplusRemoteInterruptManager;

.field private mRotationAnimation:Lcom/oplus/transition/OplusRotationAnimationManager;

.field private mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

.field private mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mLoadLightScreenRotation:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/oplus/transition/OplusRotationAnimationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRotationAnimation:Lcom/oplus/transition/OplusRotationAnimationManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/oplus/transition/OplusLightOSTransition;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mLightOSTransition:Lcom/oplus/transition/OplusLightOSTransition;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/oplus/transition/OplusTransitionAnimationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/transition/OplusTransitionController;)Lcom/android/wm/shell/common/DisplayController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method public static getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;
    .registers 2

    sget-object v0, Lcom/android/wm/shell/transition/OplusTransitionController;->sInstance:Lcom/android/wm/shell/transition/OplusTransitionController;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/wm/shell/transition/OplusTransitionController;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/wm/shell/transition/OplusTransitionController;->sInstance:Lcom/android/wm/shell/transition/OplusTransitionController;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/wm/shell/transition/OplusTransitionController;

    invoke-direct {v1}, Lcom/android/wm/shell/transition/OplusTransitionController;-><init>()V

    sput-object v1, Lcom/android/wm/shell/transition/OplusTransitionController;->sInstance:Lcom/android/wm/shell/transition/OplusTransitionController;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/wm/shell/transition/OplusTransitionController;->sInstance:Lcom/android/wm/shell/transition/OplusTransitionController;

    return-object v0
.end method

.method private initDisplayListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v1, Lcom/android/wm/shell/transition/OplusTransitionController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/transition/OplusTransitionController$1;-><init>(Lcom/android/wm/shell/transition/OplusTransitionController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method


# virtual methods
.method public adjustDefaultTransitionStartState(ILandroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/transition/OplusTransitionAnimationManager;->adjustAnimHierarchyLayer(ILandroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p0, p4, p3, p5}, Lcom/oplus/transition/OplusTransitionAnimationManager;->adjustAnimStartAlpha(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public adjustZBoostForLayer(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/transition/OplusTransitionAnimationManager;->adjustZBoostForLayer(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public buildFoldAnimIfNeed()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-virtual {v0}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->buildFoldAnimIfNeed()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-virtual {p0}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->getDeviceFolded()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public canCustomizeAppTransition(Landroid/window/TransitionInfo$AnimationOptions;ILandroid/window/TransitionInfo$Change;)Z
    .registers 7

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_8

    if-ne p2, v1, :cond_11

    :cond_8
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_11

    move p2, p0

    goto :goto_12

    :cond_11
    move p2, v0

    :goto_12
    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    move-result p3

    if-nez p3, :cond_26

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isSystemApp(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_26

    if-eqz p2, :cond_25

    goto :goto_26

    :cond_25
    move p0, v0

    :cond_26
    :goto_26
    return p0
.end method

.method public disableForceSyncIfNeed(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo;)Z
    .registers 18

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->disableForceSyncIfNeed(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo;)Z

    move-result v0

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public disableTaskBackgroundColor()Z
    .registers 1

    const-string p0, "disable task background color"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getAnimExtraBundle(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFlexibleSubDisplayTransition:Lcom/oplus/transition/FlexibleSubDisplayTransition;

    invoke-virtual {p0, p2}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getAnimExtraBundle(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getRoundedCornersIfNeed(IIZLandroid/view/animation/Animation;Landroid/window/TransitionInfo$AnimationOptions;)F
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getRoundedCornersIfNeed(IIZLandroid/view/animation/Animation;Landroid/window/TransitionInfo$AnimationOptions;)F

    move-result p0

    return p0
.end method

.method public getTaskAnimExtraBundle(Landroid/window/TransitionInfo;)Landroid/os/Bundle;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFlexibleSubDisplayTransition:Lcom/oplus/transition/FlexibleSubDisplayTransition;

    invoke-virtual {p0, p1}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getTaskAnimExtraBundle(Landroid/window/TransitionInfo;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionAnimationManager()Lcom/oplus/transition/OplusTransitionAnimationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    return-object p0
.end method

.method public hookCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;IZ)Landroid/view/animation/Animation;
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/transition/OplusTransitionAnimationManager;->checkAndLoadCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;IZ)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public hookProcessReady()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRemoteInterrupt:Lcom/oplus/transition/OplusRemoteInterruptManager;

    invoke-virtual {p0}, Lcom/oplus/transition/OplusRemoteInterruptManager;->reset()V

    return-void
.end method

.method public hookRecentFinish()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mOplusCompatModeAnimationManager:Lcom/oplus/transition/OplusCompatModeAnimationManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/transition/OplusCompatModeAnimationManager;->onRecentAnimationEnd()V

    :cond_7
    return-void
.end method

.method public hookRecentStart(Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    const/4 p4, 0x0

    move v0, p4

    :goto_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_3d

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    iget-object v2, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRemoteInterrupt:Lcom/oplus/transition/OplusRemoteInterruptManager;

    invoke-virtual {v2, v1, p2, p3}, Lcom/oplus/transition/OplusRemoteInterruptManager;->fixAlphaInRecentStart(Landroid/window/TransitionInfo$Change;Landroid/util/ArrayMap;Landroid/view/SurfaceControl$Transaction;)V

    if-nez v0, :cond_3a

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->getScenario(Landroid/content/res/Configuration;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3a

    invoke-static {}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->getInstance()Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->hideCurrentInputMethod()V

    const/4 v0, 0x1

    :cond_3a
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_3d
    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mOplusCompatModeAnimationManager:Lcom/oplus/transition/OplusCompatModeAnimationManager;

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Lcom/oplus/transition/OplusCompatModeAnimationManager;->onRecentAnimationStart()V

    :cond_44
    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->resetRemoteInterrupt()V

    return-void
.end method

.method public hookRotationAnimation(IIIIILandroid/view/SurfaceControl;)[Landroid/view/animation/Animation;
    .registers 14

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/OplusTransitionController;->loadLightScreenRotationAnimations()Z

    move-result p6

    if-eqz p6, :cond_15

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRotationAnimation:Lcom/oplus/transition/OplusRotationAnimationManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/transition/OplusRotationAnimationManager;->getLightScreenRotationAnimations(IIIII)[Landroid/view/animation/Animation;

    move-result-object p6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mLoadLightScreenRotation:Z

    goto :goto_20

    :cond_15
    iget-object v1, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRotationAnimation:Lcom/oplus/transition/OplusRotationAnimationManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/transition/OplusRotationAnimationManager;->getDefaultRotationAnimations(IIIII)[Landroid/view/animation/Animation;

    move-result-object p6

    :goto_20
    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isFlipDevice()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-virtual {v0}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->buildFoldAnimIfNeed()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->getDeviceFoldingRotationAnimations(IIIII)[Landroid/view/animation/Animation;

    move-result-object p6

    :cond_3f
    return-object p6
.end method

.method public hookScreenRotateBackColor(Landroid/window/TransitionInfo$Change;)Z
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isFoldDevice()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isFlipDevice()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_d
    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isTabletDevice()Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_13
    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_19
    return v0
.end method

.method public hookScreenRotateBackColorAnimation([FLandroid/view/animation/Animation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/common/TransactionPool;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRotationAnimation:Lcom/oplus/transition/OplusRotationAnimationManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/transition/OplusRotationAnimationManager;->startScreenRotateBackColorAnimation([FLandroid/view/animation/Animation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/common/TransactionPool;)Z

    move-result p0

    return p0
.end method

.method public hookTransitionAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ZII)Landroid/view/animation/Animation;
    .registers 16

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move v6, v1

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v9

    iget-object v1, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v3, p2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->isWsnSwitch(ILandroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v3, v9}, Lcom/oplus/transition/OplusTransitionAnimationManager;->loadWsnTaskSwitchAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2b

    return-object v1

    :cond_2b
    iget-object v1, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v3, p2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->isLargeScreenTaskSwitch(ILandroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v3, v9}, Lcom/oplus/transition/OplusTransitionAnimationManager;->loadLargeScreenTaskSwitchAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_44

    return-object v1

    :cond_44
    iget-object v1, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mLightOSTransition:Lcom/oplus/transition/OplusLightOSTransition;

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/oplus/transition/OplusLightOSTransition;->loadLightCompactWindowAnimation(Landroid/window/TransitionInfo$AnimationOptions;Z)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_53

    return-object v1

    :cond_53
    iget-object v3, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mOplusCompatModeAnimationManager:Lcom/oplus/transition/OplusCompatModeAnimationManager;

    if-eqz v3, :cond_62

    move-object v4, p1

    move v5, v9

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/transition/OplusCompatModeAnimationManager;->getOplusCompatModeAnimation(Landroid/window/TransitionInfo;ZZZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_62

    return-object v1

    :cond_62
    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    move-object v1, p1

    move-object v2, p2

    move v3, v9

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getOplusDefaultTransition(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ZZII)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public hookTransitionFinish(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;Landroid/window/WindowContainerTransaction;Landroid/window/WindowOrganizer;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    if-eqz p5, :cond_11

    check-cast p5, Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hookFinishTransactionOnFinish(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    :cond_11
    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRemoteInterrupt:Lcom/oplus/transition/OplusRemoteInterruptManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/transition/OplusRemoteInterruptManager;->fixFinishTransaction(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;Landroid/window/WindowContainerTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    if-eqz p0, :cond_1a

    move-object p2, p0

    :cond_1a
    return-object p2
.end method

.method public hookTransitionFinishForFlexibleMinimize(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->adjustChangeForFlexibleMinimizeIfNeed(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    :cond_d
    return-void
.end method

.method public ignoreAbort(Landroid/window/TransitionInfo;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p0, p1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->ignoreAbort(Landroid/window/TransitionInfo;)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;)V
    .registers 20

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    iput-object v7, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mHandler:Landroid/os/Handler;

    iput-object v8, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object v11, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-direct {p0}, Lcom/android/wm/shell/transition/OplusTransitionController;->initDisplayListener()V

    new-instance v1, Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-direct {v1, p1}, Lcom/oplus/transition/OplusTransitionAnimationManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    new-instance v1, Lcom/oplus/transition/OplusRotationAnimationManager;

    invoke-direct {v1, p1, v9, v10}, Lcom/oplus/transition/OplusRotationAnimationManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRotationAnimation:Lcom/oplus/transition/OplusRotationAnimationManager;

    sget-boolean v1, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    if-eqz v1, :cond_2f

    new-instance v1, Lcom/oplus/transition/OplusLightOSTransition;

    invoke-direct {v1, p1}, Lcom/oplus/transition/OplusLightOSTransition;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mLightOSTransition:Lcom/oplus/transition/OplusLightOSTransition;

    :cond_2f
    new-instance v1, Lcom/oplus/transition/OplusRemoteInterruptManager;

    invoke-direct {v1}, Lcom/oplus/transition/OplusRemoteInterruptManager;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRemoteInterrupt:Lcom/oplus/transition/OplusRemoteInterruptManager;

    new-instance v12, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iget-object v6, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object v1, v12

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;)V

    iput-object v12, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFlexibleTaskTransitionHandler:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    new-instance v1, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-direct {v1, p1, v9}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-virtual {v1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->registerOplusFoldSwitchStateObserver()V

    new-instance v1, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;

    invoke-direct {v1, v9, v10, v11, v8}, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isSupportPocketStudio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_76

    new-instance v12, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;

    iget-object v6, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object v1, v12

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;)V

    iput-object v12, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFlexibleWindowTransitionHandler:Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;

    :cond_76
    new-instance v12, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;

    move-object v1, v12

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v1, v12}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    new-instance v1, Lcom/oplus/transition/FlexibleSubDisplayTransition;

    invoke-direct {v1, p1}, Lcom/oplus/transition/FlexibleSubDisplayTransition;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFlexibleSubDisplayTransition:Lcom/oplus/transition/FlexibleSubDisplayTransition;

    new-instance v1, Lcom/oplus/transition/OplusCompatModeAnimationManager;

    invoke-direct {v1, p1}, Lcom/oplus/transition/OplusCompatModeAnimationManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mOplusCompatModeAnimationManager:Lcom/oplus/transition/OplusCompatModeAnimationManager;

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v1, v0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->init(Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public isLightOSAppType(Landroid/window/TransitionInfo$Change;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/oplus/transition/OplusTransitionAnimationManager;->NO_BACKCOLOR_PACKAGE_IN_SCREEN_ROTATION:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteInterrupt()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mRemoteInterrupt:Lcom/oplus/transition/OplusRemoteInterruptManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/oplus/transition/OplusRemoteInterruptManager;->isRemoteInterrupt()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public loadLightScreenRotationAnimations()Z
    .registers 2

    sget-boolean v0, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mLoadLightScreenRotation:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public loadLightScreenRotationForApp(Landroid/window/TransitionInfo;)V
    .registers 9

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_5
    if-ltz v1, :cond_3d

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-ne v3, v5, :cond_21

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_21

    move v3, v0

    goto :goto_22

    :cond_21
    move v3, v4

    :goto_22
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v5

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v6

    if-eq v5, v6, :cond_2d

    move v4, v0

    :cond_2d
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/transition/OplusTransitionController;->isLightOSAppType(Landroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-eqz v3, :cond_3a

    if-eqz v4, :cond_3a

    if-eqz v2, :cond_3a

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mLoadLightScreenRotation:Z

    return-void

    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_3d
    return-void
.end method

.method public matchRemoteFilter(Landroid/window/TransitionInfo;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p0, p1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->matchRemoteFilter(Landroid/window/TransitionInfo;)Z

    move-result p0

    return p0
.end method

.method public onAnimationStart()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-virtual {p0}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->onAnimationStart()V

    return-void
.end method

.method public registerReceiverForPkgRemoved()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p0}, Lcom/oplus/transition/OplusTransitionAnimationManager;->registerReceiverForPkgRemoved()V

    return-void
.end method

.method public setAlphaForCustom(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/transition/OplusTransitionAnimationManager;->setAlphaForCustom(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setTransitions(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method public shouldHideSurface(Landroid/window/TransitionInfo$Change;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mTransitionAnimation:Lcom/oplus/transition/OplusTransitionAnimationManager;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/oplus/transition/OplusTransitionAnimationManager;->shouldHideSurface(Landroid/window/TransitionInfo$Change;ILcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;)Z

    move-result p0

    return p0
.end method

.method public shouldLoadCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;I)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->shouldLoadCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;I)Z

    move-result p0

    return p0
.end method

.method public skipDefaultTransition(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .registers 7

    const-string v0, "load DefaultTransition, info.getType = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", info.flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    move v1, v3

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n-- change = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n-- animationoptions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_c5

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_c5

    :cond_6c
    iget-object v0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFoldSwitchAnimation:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->skipDefaultTransitionIfNeed(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_75

    return v3

    :cond_75
    iget-object p0, p0, Lcom/android/wm/shell/transition/OplusTransitionController;->mFlexibleWindowTransitionHandler:Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;

    if-eqz p0, :cond_7e

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->skipDefaultTransition(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0

    :cond_7e
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_c4

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    and-int/2addr p0, v3

    if-eqz p0, :cond_c4

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p0

    if-eqz p0, :cond_c4

    invoke-static {p1, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result p0

    :goto_96
    if-ltz p0, :cond_c4

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_a9

    goto :goto_c1

    :cond_a9
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p2

    invoke-static {p2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p2

    if-eqz p2, :cond_c1

    const-string/jumbo p0, "skip TRANSIT_CHANGE and FLAG_SHOW_WALLPAPER animation "

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return v3

    :cond_c1
    :goto_c1
    add-int/lit8 p0, p0, -0x1

    goto :goto_96

    :cond_c4
    return v2

    :cond_c5
    :goto_c5
    const-string/jumbo p0, "skipDefaultTransition, leash has been released"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return v3
.end method

.method public skipFinishForSync(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getTrack()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_10

    const-string/jumbo p0, "skipFinishForSync when interrupt track"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return v0

    :cond_10
    if-eqz p1, :cond_39

    instance-of p0, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz p0, :cond_39

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_23

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_39

    :cond_23
    const-string/jumbo p0, "skipFinishForSync readyInfo.getType:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return v0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method
