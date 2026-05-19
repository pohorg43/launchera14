.class public Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;,
        Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;,
        Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardTransition"


# instance fields
.field private mExitTransition:Landroid/window/IRemoteTransition;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

.field private mOccludeTransition:Landroid/window/IRemoteTransition;

.field private final mStartedTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private mUnoccludeTransition:Landroid/window/IRemoteTransition;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    iput-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->onInit()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/IRemoteTransition;)Landroid/window/IRemoteTransition;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/IRemoteTransition;)Landroid/window/IRemoteTransition;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/IRemoteTransition;)Landroid/window/IRemoteTransition;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/IRemoteTransition;)Landroid/window/IRemoteTransition;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    return-object p1
.end method

.method private finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V
    .registers 9

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    new-instance v2, Landroid/window/TransitionInfo;

    const/16 p0, 0xc

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Landroid/window/TransitionInfo;-><init>(II)V

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v5, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;

    const/4 p0, 0x0

    invoke-direct {v5, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;)V

    :try_start_18
    iget-object v0, p2, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mPlayer:Landroid/window/IRemoteTransition;

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p0

    const-string p1, "KeyguardTransition"

    const-string p2, "RemoteException thrown from KeyguardService transition"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method public static handles(Landroid/window/TransitionInfo;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x3900

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static hasOpeningDream(Landroid/window/TransitionInfo;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_5
    if-ltz v1, :cond_30

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method private onInit()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method private startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 22

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_26

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x116df024  # 1.8770002E-28f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v11

    aput-object v2, v5, v10

    const-string/jumbo v1, "start keyguard %s transition, info = %s"

    invoke-static {v3, v4, v11, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    const-string v12, "KeyguardTransition"

    if-nez v7, :cond_34

    const-string/jumbo v0, "systemui has not register remoteHandler, error"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl$Transaction;->clear()V

    return v10

    :cond_34
    :try_start_34
    iget-object v1, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    move-object/from16 v3, p6

    invoke-direct {v2, p0, v9, v3, p1}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)V

    invoke-virtual {v1, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    move-object/from16 v0, p5

    invoke-interface {p1, v8, v9, v0, v13}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_54} :catch_58

    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl$Transaction;->clear()V

    return v10

    :catch_58
    move-exception v0

    const-string v1, "RemoteException thrown from local IRemoteTransition"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11
.end method


# virtual methods
.method public asKeyguardTransitions()Lcom/android/wm/shell/keyguard/KeyguardTransitions;
    .registers 3
    .annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;)V

    return-object v0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_24

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_23

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, 0x129fc3d9

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v2

    const-string/jumbo p0, "unknown keyguard transition %s"

    invoke-static {p1, p2, v2, p0, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    return-void

    :cond_24
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_6d

    iget-object v3, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_6d

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_4c

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x357d111

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "canceling keyguard exit transition %s"

    invoke-static {v3, v4, v2, p0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    iget-object p0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x0

    :try_start_52
    iget-object v1, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mPlayer:Landroid/window/IRemoteTransition;

    new-instance v6, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_60} :catch_61

    goto :goto_69

    :catch_61
    move-exception p1

    const-string p2, "KeyguardTransition"

    const-string p3, "RemoteException thrown from KeyguardService transition"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_69
    invoke-interface {p5, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    goto :goto_7f

    :cond_6d
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/16 p3, 0xc

    if-ne p1, p3, :cond_76

    return-void

    :cond_76
    invoke-static {p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-direct {p0, p4, v0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    if-eqz p2, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V

    :cond_d
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 16

    invoke-static {p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1f

    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    const-string v4, "going-away"

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    :cond_1f
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_4d

    invoke-static {p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->hasOpeningDream(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    const-string/jumbo v3, "occlude-by-dream"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    :cond_3d
    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    const-string/jumbo v2, "occlude"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    :cond_4d
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_65

    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    const-string/jumbo v4, "unocclude"

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    :cond_65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Refused to play keyguard transition: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTransition"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
