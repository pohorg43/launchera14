.class public Lcom/android/wm/shell/transition/RemoteTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteTransitionHandler"


# instance fields
.field private final mDeathHandlers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/window/TransitionFilter;",
            "Landroid/window/RemoteTransition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastFinishedRemote:Landroid/os/IBinder;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mRecentsTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

.field private final mRequestedRemotes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/window/RemoteTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$3;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->lambda$startAnimation$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mLastFinishedRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mLastFinishedRemote:Landroid/os/IBinder;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;
    .registers 3

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "android.window.IRemoteTransition"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_24

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method private handleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;

    if-nez v1, :cond_25

    new-instance v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2a

    const/4 v2, 0x0

    :try_start_13
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1c
    .catchall {:try_start_13 .. :try_end_16} :catchall_2a

    :try_start_16
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :catch_1c
    const-string p0, "RemoteTransitionHandler"

    const-string p1, "Failed to link to death"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_25
    :goto_25
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->addUser(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private static synthetic lambda$startAnimation$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->removeUser(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->getUserCount()I

    move-result p2

    if-nez p2, :cond_34

    invoke-static {v1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->access$400(Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2c

    const/4 p2, 0x0

    invoke-interface {p1, v1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unhandling death for binder that still has pending finishCallback(s)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method


# virtual methods
.method public addFiltered(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 5

    invoke-virtual {p2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->handleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRequestedRemotes()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/window/RemoteTransition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getTransitionObserver()Lcom/android/wm/shell/transition/Transitions$TransitionObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    return-object p0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 8

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_2c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0xcc7ac27

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v0

    const-string p0, "RemoteTransition directly requested for %s: %s"

    invoke-static {v1, v2, v4, p0, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual {p2}, Landroid/window/RemoteTransition;->getDebugName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickstepLaunch"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    sget-boolean p0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-eqz p0, :cond_5a

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {p0, v0}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->setInterruptTransition(Landroid/window/WindowContainerTransaction;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "remote handleRequest, wct: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return-object p0

    :cond_5a
    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    const-string/jumbo v6, "setBinderThreadUxFlag"

    iget-object v2, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/RemoteTransition;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteTransitionHandler, Merge into remote: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    if-nez v2, :cond_28

    return-void

    :cond_28
    invoke-virtual {v2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v3

    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_44

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, -0x8429dfb

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v2, v10, v8

    const-string v2, "   Merge into remote: %s"

    invoke-static {v5, v9, v8, v2, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    if-nez v3, :cond_47

    return-void

    :cond_47
    new-instance v5, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;

    move-object/from16 v2, p5

    invoke-direct {v5, v0, v1, v4, v2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :try_start_4e
    invoke-static {v1, v3}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    if-ne v9, v1, :cond_57

    move-object/from16 v2, p2

    goto :goto_5c

    :cond_57
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    move-result-object v1

    move-object v2, v1

    :goto_5c
    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRecentsTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    move-object/from16 v10, p1

    invoke-virtual {v1, v10, v0, v2}, Lcom/oplus/transition/OplusInterruptTransitionManager;->sendRecentsController(Landroid/os/IBinder;Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/window/TransitionInfo;)V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v1, v8

    aput-object v12, v1, v7

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v7

    invoke-static {v0, v6, v1, v13}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    move-object/from16 v1, p1

    move-object v3, v9

    move-object/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Class;

    aput-object v12, v1, v8

    aput-object v12, v1, v7

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v6, v1, v2}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_aa} :catch_ab

    goto :goto_b3

    :catch_ab
    move-exception v0

    const-string v1, "ShellTransitions"

    const-string v2, "Error attempting to merge remote transition."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b3
    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeFiltered(Landroid/window/RemoteTransition;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_2e

    iget-object v3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/window/RemoteTransition;

    invoke-virtual {v3}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v1

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2e
    if-eqz v2, :cond_38

    invoke-virtual {p1}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :cond_38
    return-void
.end method

.method public setRecentsTransitionHandler(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRecentsTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    const-string/jumbo v11, "setBinderThreadUxFlag"

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    const/4 v12, 0x0

    if-nez v1, :cond_23

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v0, "RemoteTransitionHandler, skip remote animation because transition has display change"

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    :cond_23
    iget-object v1, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/RemoteTransition;

    const-string v2, "RemoteTransitionHandler"

    const/4 v13, 0x1

    if-nez v1, :cond_b2

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_46

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x65c404fa

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v3, v6, v12

    const-string v3, "Transition doesn\'t have explicit remote, search filters for match for %s"

    invoke-static {v4, v5, v12, v3, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->matchRemoteFilter(Landroid/window/TransitionInfo;)Z

    move-result v3

    iget-object v4, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v13

    :goto_55
    if-ltz v4, :cond_b2

    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_73

    iget-object v5, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v14, 0x3b07e029

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v5, v15, v12

    const-string v5, " Checking filter %s"

    invoke-static {v6, v14, v12, v5, v15}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_73
    iget-object v5, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/window/TransitionFilter;

    invoke-virtual {v5, v0}, Landroid/window/TransitionFilter;->matches(Landroid/window/TransitionInfo;)Z

    move-result v5

    if-nez v5, :cond_8b

    if-eqz v3, :cond_88

    goto :goto_8b

    :cond_88
    add-int/lit8 v4, v4, -0x1

    goto :goto_55

    :cond_8b
    :goto_8b
    const-string v1, "Found filter"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/window/RemoteTransition;

    iget-object v3, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b2
    move-object v14, v1

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v15, 0x2

    if-eqz v1, :cond_d5

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v12

    aput-object v1, v6, v13

    const v1, -0x2d2ae3ae

    const-string v3, " Delegate animation for #%d to %s"

    invoke-static {v5, v1, v13, v3, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteTransitionHandler, Delegate animation for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    if-nez v14, :cond_f4

    return v12

    :cond_f4
    invoke-static {v0, v13}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_f8
    if-ltz v1, :cond_124

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_121

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v15, :cond_121

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_121

    const-string v0, "Prevent the picture-in-picture transition from being consumed in recent task scenes,RemoteTransition return false."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_121
    add-int/lit8 v1, v1, -0x1

    goto :goto_f8

    :cond_124
    new-instance v6, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v14

    move-object/from16 v16, v6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {v14}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    :try_start_13c
    invoke-virtual {v14}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    if-ne v1, v9, :cond_148

    move-object v2, v0

    goto :goto_14c

    :cond_148
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    move-result-object v2

    :goto_14c
    invoke-virtual {v14}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v7, v3, v10}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->handleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteTransitionHandler, shell start remote animation, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    new-array v3, v15, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v12

    aput-object v4, v3, v13

    new-array v5, v15, [Ljava/lang/Object;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v13

    invoke-static {v0, v11, v3, v5}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v0

    move-object/from16 v3, v16

    invoke-interface {v0, v8, v2, v1, v3}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/Class;

    aput-object v4, v1, v12

    aput-object v4, v1, v13

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v0, v11, v1, v2}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->clear()V
    :try_end_1b4
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_1b4} :catch_1b5

    goto :goto_1d3

    :catch_1b5
    move-exception v0

    const-string v1, "ShellTransitions"

    const-string v2, "Error running remote transition."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v14}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v7, v0, v10}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/freeform/a;

    invoke-direct {v1, v10, v13}, Lcom/android/wm/shell/freeform/a;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1d3
    return v13
.end method
