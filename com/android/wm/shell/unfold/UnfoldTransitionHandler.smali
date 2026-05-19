.class public Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;


# instance fields
.field private final mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mTransition:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Lcom/android/wm/shell/common/TransactionPool;Ljava/util/concurrent/Executor;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    iput-object p2, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    iput-object p5, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p6, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    if-eq p2, p3, :cond_28

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_28

    new-instance p2, Lcom/android/wm/shell/common/c;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;Landroid/window/TransitionInfo$Change;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->lambda$startAnimation$0(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;Landroid/window/TransitionInfo$Change;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$0(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;Landroid/window/TransitionInfo$Change;)V
    .registers 9

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x742cdece

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const-string/jumbo v0, "startAnimation, check taskInfo: %s, mode: %s, isApplicableTask: %s"

    invoke-static {v3, v4, v6, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_58

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_58
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V

    :cond_6d
    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 3
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionRequestInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->hasUnfold(Landroid/window/TransitionRequestInfo;)Z

    move-result p2

    if-eqz p2, :cond_e

    iput-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasUnfold(Landroid/window/TransitionRequestInfo;)Z
    .registers 3
    .param p1  # Landroid/window/TransitionRequestInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_19

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->isPhysicalDisplayChanged()Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_37

    const/4 p0, 0x0

    :goto_8
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_30

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result p1

    if-eqz p1, :cond_2d

    return-void

    :cond_2d
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_30
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p0, 0x0

    invoke-interface {p5, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :cond_37
    return-void
.end method

.method public onInit()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->addListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V

    return-void
.end method

.method public onStateChangeFinished()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->clearTasks()V

    invoke-interface {v1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->stop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1f
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    iput-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    return-void
.end method

.method public onStateChangeProgress(F)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    move-result v3

    if-eqz v3, :cond_28

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    :cond_25
    invoke-interface {v2, p1, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->applyAnimationProgress(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_35
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 9
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    return v1

    :cond_6
    :goto_6
    iget-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_37

    iget-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->clearTasks()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/android/common/util/m;

    invoke-direct {v2, p1}, Lcom/android/common/util/m;-><init>(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1, p3}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p1, p4}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->start()V

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_37
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object p5, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 p0, 0x1

    return p0
.end method

.method public willHandleTransition()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
