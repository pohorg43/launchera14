.class Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;
.super Landroid/window/IRemoteTransition$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/SplitSelectStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteSplitLaunchTransitionRunner"
.end annotation


# instance fields
.field private final mControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/util/SplitSelectStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialTaskId:I

.field private final mSecondTaskId:I

.field private final mSuccessCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController;IILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/util/SplitSelectStateController;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    iput p2, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mInitialTaskId:I

    iput p3, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSecondTaskId:I

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSuccessCallbackRef:Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mControllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->lambda$startAnimation$0(Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->lambda$startAnimation$2(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->lambda$startAnimation$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$0(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_d

    :catch_5
    move-exception p0

    const-string v0, "SplitSelectStateCtor"

    const-string v1, "Failed to call transition finished callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method private synthetic lambda$startAnimation$1(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSuccessCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSuccessCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private synthetic lambda$startAnimation$2(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 13

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mControllerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_31

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->access$000(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/quickstep/views/GroupedTaskView;

    move-result-object v1

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->access$100(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->access$200(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v3

    iget v4, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mInitialTaskId:I

    iget v5, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSecondTaskId:I

    new-instance v8, Lcom/android/quickstep/util/b;

    invoke-direct {v8, p0, p3}, Lcom/android/quickstep/util/b;-><init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Ljava/lang/Runnable;)V

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsSplitLaunchAnimator(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->resetState()V

    return-void

    :cond_31
    :goto_31
    const-string p0, "mControllerRef is null. isRemoteRecentsAnimationRunning: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitSelectStateCtor"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6

    new-instance p1, Lcom/android/quickstep/util/v;

    invoke-direct {p1, p4}, Lcom/android/quickstep/util/v;-><init>(Landroid/window/IRemoteTransitionFinishedCallback;)V

    sget-object p4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setSplitTaskLaunchRunning(Z)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->resetStartingMultipleTasks()V

    sget-object p4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/util/w;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/quickstep/util/w;-><init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    invoke-virtual {p4, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
