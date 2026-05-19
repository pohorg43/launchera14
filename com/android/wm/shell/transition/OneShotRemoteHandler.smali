.class public Lcom/android/wm/shell/transition/OneShotRemoteHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mRemote:Landroid/window/RemoteTransition;

.field private mTransition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->lambda$startAnimation$1(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/transition/OneShotRemoteHandler;)Landroid/window/RemoteTransition;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/transition/OneShotRemoteHandler;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->lambda$startAnimation$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$startAnimation$1(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    const-string v0, "ShellTransitions"

    const-string v1, "Remote transition died, finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-interface {p0, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 6

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    iget-object v2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v2

    if-eq v1, v2, :cond_16

    return-object v0

    :cond_16
    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_37

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x39a8fbbc

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "RemoteTransition directly requested for %s: %s"

    invoke-static {p2, v0, v2, p0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 12

    new-instance v5, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;

    invoke-direct {v5, p0, p3, p5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :try_start_5
    iget-object p5, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {p5}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    if-ne v3, p3, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    move-result-object p2

    :goto_16
    move-object v2, p2

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {p0}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v0

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p0

    const-string p1, "ShellTransitions"

    const-string p2, "Error merging remote transition."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return-void
.end method

.method public setTransition(Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 22

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    iget-object v1, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    const/4 v12, 0x0

    if-eq v1, v0, :cond_e

    return v12

    :cond_e
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v13, 0x1

    if-eqz v1, :cond_34

    iget-object v1, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x3f9699d

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v13

    const-string v1, "Using registered One-shot remote transition %s for #%d."

    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    new-instance v14, Lcom/android/wm/shell/transition/h;

    invoke-direct {v14, v9, v11}, Lcom/android/wm/shell/transition/h;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    new-instance v15, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Landroid/os/IBinder$DeathRecipient;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v1, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v1}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    :try_start_55
    iget-object v1, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v1}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_66

    iget-object v1, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v1}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, v14, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_66
    iget-object v1, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v1}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    if-ne v1, v10, :cond_75

    move-object/from16 v2, p2

    goto :goto_79

    :cond_75
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    move-result-object v2

    :goto_79
    iget-object v3, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v3}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v3

    invoke-interface {v3, v0, v2, v1, v15}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->clear()V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_85} :catch_86

    goto :goto_a3

    :catch_86
    move-exception v0

    const-string v1, "ShellTransitions"

    const-string v2, "Error running remote transition."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_9f

    iget-object v0, v9, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v14, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_9f
    const/4 v0, 0x0

    invoke-interface {v11, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :goto_a3
    return v13
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "OneShotRemoteHandler:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v1}, Landroid/window/RemoteTransition;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {p0}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
