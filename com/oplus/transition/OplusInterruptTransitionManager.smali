.class public Lcom/oplus/transition/OplusInterruptTransitionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG_INTERRUPT_TRANSITION_PROP:Z

.field public static final ENABLE_INTERRUPT_TRANSITION:Z

.field public static final INTERRUPT_TRACK:I = 0xa

.field public static final OPLUS_FEATURE_INTERRUPT_TRANSITION:Ljava/lang/String; = "oplus.software.support_blockable_animation"

.field private static final STATE_NEW_TASK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OplusInterruptTransitionManager"

.field private static volatile sInstance:Lcom/oplus/transition/OplusInterruptTransitionManager;


# instance fields
.field private mIsLandScapeExitScene:Z

.field private mRecentToHome:Z

.field private mRemoteInterrupt:Z

.field private mRemoteTransitionToken:Landroid/os/IBinder;

.field private mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "persist.wm.debug.interrupt_transition"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->DEBUG_INTERRUPT_TRANSITION_PROP:Z

    if-nez v0, :cond_17

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v2, "oplus.software.support_blockable_animation"

    invoke-virtual {v0, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    sput-boolean v1, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;
    .registers 2

    sget-object v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->sInstance:Lcom/oplus/transition/OplusInterruptTransitionManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/transition/OplusInterruptTransitionManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/transition/OplusInterruptTransitionManager;->sInstance:Lcom/oplus/transition/OplusInterruptTransitionManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/transition/OplusInterruptTransitionManager;

    invoke-direct {v1}, Lcom/oplus/transition/OplusInterruptTransitionManager;-><init>()V

    sput-object v1, Lcom/oplus/transition/OplusInterruptTransitionManager;->sInstance:Lcom/oplus/transition/OplusInterruptTransitionManager;

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
    sget-object v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->sInstance:Lcom/oplus/transition/OplusInterruptTransitionManager;

    return-object v0
.end method

.method private isLandAppOpen(Landroid/window/TransitionInfo;)Z
    .registers 5

    if-eqz p1, :cond_3a

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_7
    if-ltz v0, :cond_3a

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    move-result v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    if-ne v2, p0, :cond_37

    if-eq v1, p0, :cond_22

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isLandAppOpen: endFixedRotation = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return p0

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method private nextIsOpenRemote(I)Z
    .registers 6

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->nextReadyRemote(I)Landroid/window/TransitionInfo;

    move-result-object p0

    if-eqz p0, :cond_46

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_11
    if-ltz v1, :cond_46

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_2e

    goto :goto_31

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_31
    :goto_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "next ready transition has open change:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return p1

    :cond_46
    return v0
.end method

.method private notifyStartCompleted(Landroid/window/TransitionInfo;ZLandroid/window/WindowOrganizer;)V
    .registers 8

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_3d

    if-eqz p0, :cond_29

    goto :goto_40

    :cond_29
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-boolean v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    if-eqz v1, :cond_3d

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3d

    move-object p0, v2

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_40
    :goto_40
    if-eqz p0, :cond_47

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p0, p2}, Landroid/window/WindowOrganizer;->notifyStartCompleted(Landroid/window/WindowContainerToken;Z)V

    :cond_47
    return-void
.end method


# virtual methods
.method public init(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method public initTargetWithTaskLeash(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Landroid/window/TransitionInfo;)Landroid/view/RemoteAnimationTarget;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo$Change;",
            "I",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Landroid/window/TransitionInfo;",
            ")",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-static {p1, p6}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result p1

    iget-object p3, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p6, p1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p4, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p4, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public isLandScapeExitScene(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/window/TransitionInfo;Landroid/content/Context;)Z
    .registers 9

    const/4 p3, 0x0

    if-eqz p2, :cond_79

    if-nez p5, :cond_7

    goto/16 :goto_79

    :cond_7
    instance-of v0, p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-nez v0, :cond_15

    instance-of v1, p2, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    if-eqz v1, :cond_15

    check-cast p2, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual {p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->isAnimateRecentsDuringSplit()Z

    move-result v0

    :cond_15
    const/4 p2, 0x1

    if-nez v0, :cond_24

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    if-ne v1, p2, :cond_24

    iget-object v1, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mRemoteTransitionToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_24

    move p1, p2

    goto :goto_25

    :cond_24
    move p1, p3

    :goto_25
    if-nez v0, :cond_29

    if-eqz p1, :cond_79

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecentsAnimation is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isRemoteAnimation "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    if-eq p1, p2, :cond_61

    const/4 p5, 0x3

    if-eq p1, p5, :cond_61

    invoke-direct {p0, p4}, Lcom/oplus/transition/OplusInterruptTransitionManager;->isLandAppOpen(Landroid/window/TransitionInfo;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_61

    :cond_5f
    move p1, p3

    goto :goto_62

    :cond_61
    :goto_61
    move p1, p2

    :goto_62
    if-eqz p1, :cond_79

    iput-boolean p2, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mIsLandScapeExitScene:Z

    const-string p1, "isLandScapeExitScene and mIsLandScapeExitScene is: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mIsLandScapeExitScene:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return p2

    :cond_79
    :goto_79
    return p3
.end method

.method public isRecentToHome()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mRecentToHome:Z

    return p0
.end method

.method public isRemoteInterrupt()Z
    .registers 2

    sget-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-boolean p0, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mRemoteInterrupt:Z

    return p0
.end method

.method public markRecentToHome(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mRecentToHome:Z

    return-void
.end method

.method public notifyLauncherStartActivity(Landroid/window/TransitionInfo;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/os/IBinder;Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mIsLandScapeExitScene:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_27

    const-string p3, "Transition Change excuted by last landscape application  and transition type is: "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mIsLandScapeExitScene:Z

    invoke-virtual {p2, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->onLandScapeSceneExit(Z)V

    return v3

    :cond_27
    invoke-virtual {p4}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->getRequestedRemotes()Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    if-ne p1, v3, :cond_3b

    if-eqz p2, :cond_3b

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3b

    move p1, v3

    goto :goto_3c

    :cond_3b
    move p1, v1

    :goto_3c
    if-eqz p1, :cond_46

    iput-boolean v1, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mIsLandScapeExitScene:Z

    const-string p0, "reset mIsLandScapeExitScene"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return v3

    :cond_46
    return v1
.end method

.method public notifyRemoteInterrupt(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/WindowOrganizer;)V
    .registers 4

    invoke-virtual {p3, p1, p2}, Landroid/window/WindowOrganizer;->notifyRemoteInterrupt(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public notifyTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;ZLandroid/window/WindowOrganizer;)V
    .registers 5

    sget-boolean p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    if-nez p3, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p4, p1, p2}, Landroid/window/WindowOrganizer;->notifyTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public notifyTransitionRemoveTask(Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/window/TransitionInfo;ILandroid/window/WindowOrganizer;)V
    .registers 7

    sget-boolean p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_11

    if-eqz p3, :cond_11

    if-eqz p4, :cond_11

    if-nez p2, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {p6, p1, p3, p5}, Landroid/window/WindowOrganizer;->notifyTransitionRemoveTask(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public reorderHomeWhenFinish(ILandroid/window/WindowContainerToken;ILandroid/window/WindowContainerTransaction;)V
    .registers 6

    sget-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    if-eqz p2, :cond_1b

    invoke-direct {p0, p3}, Lcom/oplus/transition/OplusInterruptTransitionManager;->nextIsOpenRemote(I)Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0, v0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->markRecentToHome(Z)V

    const-string p0, "recents reorderHomeWhenFinish"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_1b
    return-void
.end method

.method public resetRemoteInterrupt()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->isRemoteInterrupt()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->setInterrupt(Z)V

    :cond_a
    return-void
.end method

.method public sendRecentsController(Landroid/os/IBinder;Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/window/TransitionInfo;)V
    .registers 4

    sget-boolean p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_24

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->getRecentController(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-static {p3, p0}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->setRecentsController(Landroid/window/TransitionInfo;Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sendRecentsController, info:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public setInterrupt(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mRemoteInterrupt:Z

    return-void
.end method

.method public setRemoteTransitionToken(Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->mRemoteTransitionToken:Landroid/os/IBinder;

    return-void
.end method

.method public updateMergeRemoteTaskVisible(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->isRecentToHome()Z

    move-result v0

    if-eqz v0, :cond_60

    if-eqz p2, :cond_60

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->markRecentToHome(Z)V

    const-string p0, "not apply merge finishT"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4e
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_20

    :cond_60
    return-void
.end method
