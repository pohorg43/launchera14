.class Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;
.super Landroid/window/IRemoteTransition$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mFinishRunnables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mInterruptScene:Z

.field public mWCT:Landroid/window/WindowContainerTransaction;

.field public final synthetic this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mWCT:Landroid/window/WindowContainerTransaction;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mInterruptScene:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->lambda$startAnimation$0(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mInterruptScene:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mInterruptScene:Z

    return p1
.end method

.method private getRecentsController(Landroid/window/TransitionInfo;)Landroid/view/IRecentsAnimationController;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {p1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getRecentsController(Landroid/window/TransitionInfo;)Landroid/view/IRecentsAnimationController;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string p1, "Error occur while getRecentsController, "

    const-string v1, "RemoteAnimationRunnerCompat"

    invoke-static {p1, p0, v1}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-object v0
.end method

.method private synthetic lambda$startAnimation$0(Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private shouldInterrupt(Landroid/window/TransitionInfo;)Z
    .registers 12

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->getAppTransitionParamForInterrupt()Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "RemoteAnimationRunnerCompat"

    if-nez p0, :cond_12

    const-string/jumbo p0, "shouldInterrupt: param for interrupt is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_12
    const/4 p0, 0x0

    const-string/jumbo v2, "shouldInterrupt: changes size "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_36
    if-ltz v2, :cond_a5

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-nez v5, :cond_4f

    const-string/jumbo p0, "shouldInterrupt: task info is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4f
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_a2

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_68

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6b

    :cond_68
    const-string/jumbo v5, "null"

    :goto_6b
    const-string/jumbo v6, "shouldInterrupt: taskId = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v8, ", task = "

    const-string v9, ", activityType = "

    invoke-static {v6, v7, v8, v5, v9}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a2

    const-string p0, "Found launcher task"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v4

    :cond_a2
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    :cond_a5
    if-eqz p0, :cond_a8

    move v0, v3

    :cond_a8
    return v0
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "RemoteAnimationRunnerCompat"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote transition mergeAnimation, this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    sput-wide v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_RECENT_FINISH_TIMESTAMP:J

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2e

    const-string p0, "RemoteAnimationRunnerCompat"

    const-string p1, "Null changes merge animation occur"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_31
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Runnable;

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_e4

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_40

    move v1, p1

    goto :goto_41

    :cond_40
    move v1, v0

    :goto_41
    const/4 v2, 0x0

    if-eqz v1, :cond_46

    move-object v3, v2

    goto :goto_4a

    :cond_46
    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->getRecentsController(Landroid/window/TransitionInfo;)Landroid/view/IRecentsAnimationController;

    move-result-object v3

    :goto_4a
    if-eqz v1, :cond_4e

    move v4, v0

    goto :goto_52

    :cond_4e
    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->shouldInterrupt(Landroid/window/TransitionInfo;)Z

    move-result v4

    :goto_52
    const-string v5, "RemoteAnimationRunnerCompat"

    const-string/jumbo v6, "shouldInterrupt = "

    const-string v7, ", isFinished = "

    const-string v8, ", rc = "

    invoke-static {v6, v4, v7, v1, v8}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_6d

    if-eqz v4, :cond_84

    :cond_6d
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mWCT:Landroid/window/WindowContainerTransaction;

    :try_start_74
    invoke-static {v1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->notifyInterruptScene(Landroid/window/WindowContainerTransaction;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_80

    :catch_78
    move-exception v1

    const-string v5, "RemoteAnimationRunnerCompat"

    const-string v6, "Error occur while notifyInterruptScene, "

    invoke-static {v6, v1, v5}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_80
    sput-boolean p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sInterruptScene:Z

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mInterruptScene:Z

    :cond_84
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->getAppTransitionParamForInterrupt()Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHasInterrupted(Z)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/shared/system/AppTransitionParam;->setNeedInterceptIconSurface(Z)V

    :cond_92
    :try_start_92
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-virtual {p1, p2, p3, v1, v3}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->handleAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z

    move-result p1
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_98} :catch_99

    goto :goto_a8

    :catch_99
    move-exception p1

    const-string v3, "RemoteAnimationRunnerCompat"

    const-string/jumbo v4, "mergeAnimation: error "

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_a7

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHasInterrupted(Z)V

    :cond_a7
    move p1, v0

    :goto_a8
    const-string v1, "RemoteAnimationRunnerCompat"

    const-string v3, "handleMerged = "

    invoke-static {v3, p1, v1}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_cd

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    const-class p1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    monitor-enter p1

    :try_start_b7
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    monitor-exit p1
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_ca

    if-nez p4, :cond_c1

    invoke-static {}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->finishExistingRemoteAnim()V

    return-void

    :cond_c1
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_e3

    :catchall_ca
    move-exception p0

    :try_start_cb
    monitor-exit p1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw p0

    :cond_cd
    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mInterruptScene:Z

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-interface {p1}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    if-eqz p4, :cond_de

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-virtual {p1, p4}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->tryFinishOpenRemote(Ljava/lang/Runnable;)V

    :cond_de
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-interface {p5, p0, v2}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :goto_e3
    return-void

    :catchall_e4
    move-exception p0

    :try_start_e5
    monitor-exit p1
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v6, p2

    move-object/from16 v1, p3

    const-string v2, "RemoteAnimationRunnerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote transition startAnimation, info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    sput-wide v2, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_RECENT_FINISH_TIMESTAMP:J

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v6, v1, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v9

    const/4 v2, 0x1

    invoke-static {v6, v2, v1, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v8

    const/4 v3, 0x0

    invoke-static {v6, v3, v1, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v17

    sput-boolean v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sInterruptScene:Z

    invoke-static {v6, v2}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v4

    const/4 v5, 0x0

    move/from16 v18, v3

    move v11, v4

    move/from16 v19, v5

    move/from16 v20, v19

    const/4 v5, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v4, v18

    :goto_4c
    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ltz v11, :cond_f1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_66

    goto/16 :goto_ed

    :cond_66
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    if-eqz v15, :cond_95

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v15

    if-ne v15, v13, :cond_95

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    if-eq v3, v2, :cond_8d

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    if-eq v3, v12, :cond_8d

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8a

    goto :goto_8d

    :cond_8a
    const/4 v3, 0x0

    move v4, v3

    goto :goto_8e

    :cond_8d
    :goto_8d
    move v4, v2

    :goto_8e
    invoke-static {v6, v11}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v3

    move-object/from16 v21, v14

    goto :goto_b7

    :cond_95
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v12

    and-int/2addr v12, v13

    if-eqz v12, :cond_9f

    move-object/from16 v22, v14

    goto :goto_b7

    :cond_9f
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    if-eqz v12, :cond_b7

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v12

    if-ne v12, v2, :cond_b7

    const-string v5, "RemoteAnimationRunnerCompat"

    const-string v12, "Got app task"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v14

    :cond_b7
    :goto_b7
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v12

    if-nez v12, :cond_ed

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v12

    if-ltz v12, :cond_ed

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v12

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v13

    if-eq v12, v13, :cond_ed

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v12

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v13

    sub-int v18, v12, v13

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    move/from16 v19, v12

    move/from16 v20, v13

    :cond_ed
    :goto_ed
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4c

    :cond_f1
    new-instance v2, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v2}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    new-instance v15, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v15}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    if-eqz v21, :cond_138

    if-eqz v18, :cond_138

    invoke-virtual/range {v21 .. v21}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v11

    if-eqz v11, :cond_138

    invoke-virtual/range {v21 .. v21}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v11

    if-eqz v11, :cond_138

    invoke-virtual/range {v21 .. v21}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v11

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    move-object v11, v2

    move-object/from16 v12, p3

    move/from16 v14, v18

    move-object/from16 v23, v15

    const/4 v10, 0x0

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-virtual/range {v11 .. v16}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    invoke-virtual {v2}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v11

    if-eqz v11, :cond_13b

    invoke-virtual {v2}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v1, v11, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_13b

    :cond_138
    move-object/from16 v23, v15

    const/4 v10, 0x0

    :cond_13b
    :goto_13b
    if-eqz v4, :cond_1b9

    invoke-virtual {v2}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_154

    invoke-virtual {v2}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_154
    const/4 v3, 0x1

    invoke-static {v6, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v3

    :goto_159
    if-ltz v3, :cond_1a1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/SurfaceControl;

    if-nez v11, :cond_172

    goto :goto_19e

    :cond_172
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v4, v6}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v4

    if-nez v4, :cond_187

    goto :goto_19e

    :cond_187
    const/4 v4, 0x2

    if-eq v12, v4, :cond_18d

    const/4 v4, 0x4

    if-ne v12, v4, :cond_19e

    :cond_18d
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1, v11}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_19e
    :goto_19e
    add-int/lit8 v3, v3, -0x1

    goto :goto_159

    :cond_1a1
    array-length v3, v8

    add-int/lit8 v3, v3, -0x1

    :goto_1a4
    if-ltz v3, :cond_213

    aget-object v4, v8, v3

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v4, v8, v3

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-virtual {v1, v4, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1a4

    :cond_1b9
    if-eqz v21, :cond_1c8

    invoke-virtual/range {v21 .. v21}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_1c8
    if-eqz v22, :cond_213

    if-eqz v18, :cond_213

    invoke-virtual/range {v22 .. v22}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-eqz v3, :cond_213

    invoke-virtual/range {v22 .. v22}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    if-eqz v3, :cond_213

    invoke-virtual/range {v22 .. v22}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    move-object/from16 v11, v23

    move-object/from16 v12, p3

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-virtual/range {v11 .. v16}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    invoke-virtual/range {v23 .. v23}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_213

    invoke-virtual/range {v23 .. v23}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {v22 .. v22}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    move-object/from16 v11, v23

    invoke-virtual {v11, v1, v3}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_215

    :cond_213
    move-object/from16 v11, v23

    :goto_215
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v12, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v12}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    :goto_220
    if-ltz v1, :cond_234

    aget-object v3, v9, v1

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_231

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_231

    invoke-virtual {v12, v3, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_231
    add-int/lit8 v1, v1, -0x1

    goto :goto_220

    :cond_234
    new-instance v10, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;

    move-object v1, v10

    move-object v4, v2

    move-object/from16 v2, p0

    move-object v3, v5

    move-object v5, v11

    move-object/from16 v6, p2

    move-object v11, v8

    move-object/from16 v8, p4

    move-object v13, v9

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_249
    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_251
    .catchall {:try_start_249 .. :try_end_251} :catchall_278

    sget-object v2, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->runnableList:Ljava/util/List;

    monitor-enter v2

    :try_start_254
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v4, 0x14

    if-le v1, v4, :cond_25f

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_25f
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_263
    .catchall {:try_start_254 .. :try_end_263} :catchall_275

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    const/4 v2, 0x0

    new-instance v5, Lcom/android/systemui/shared/system/a;

    invoke-direct {v5, v0, v3, v10}, Lcom/android/systemui/shared/system/a;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    move-object v0, v1

    move v1, v2

    move-object v2, v13

    move-object v3, v11

    move-object/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    return-void

    :catchall_275
    move-exception v0

    :try_start_276
    monitor-exit v2
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_275

    throw v0

    :catchall_278
    move-exception v0

    :try_start_279
    monitor-exit v1
    :try_end_27a
    .catchall {:try_start_279 .. :try_end_27a} :catchall_278

    throw v0
.end method
