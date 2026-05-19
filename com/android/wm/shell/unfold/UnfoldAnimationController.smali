.class public Lcom/android/wm/shell/unfold/UnfoldAnimationController;
.super Ljava/lang/Object;
.source ""

# interfaces
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

.field private final mAnimatorsByTaskId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mIsInStageChange:Z

.field private final mTaskSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

.field private final mUnfoldTransitionHandler:Lz3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz3/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;Ljava/util/List;Lz3/a;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;",
            ">;",
            "Lz3/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    iput-object p5, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Lz3/a;

    iput-object p2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p6, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    sget-object p2, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    if-eq p3, p2, :cond_27

    new-instance p2, Lcom/android/launcher3/taskbar/l;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/wm/shell/unfold/UnfoldAnimationController;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method private maybeResetTask(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;Landroid/app/TaskInfo;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public onInit()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->addListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->init()V

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;)V

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2a
    return-void
.end method

.method public onStateChangeFinished()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Lz3/a;

    invoke-interface {v0}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->willHandleTransition()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    iget-object v3, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    iget-object v3, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v3, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->resetAllSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {v3, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_36
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    return-void
.end method

.method public onStateChangeProgress(F)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Lz3/a;

    invoke-interface {v0}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->willHandleTransition()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_17
    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    move-result v3

    if-eqz v3, :cond_38

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    :cond_35
    invoke-interface {v2, p1, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->applyAnimationProgress(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3b
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_45
    return-void
.end method

.method public onStateChangeStarted()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Lz3/a;

    invoke-interface {v0}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->willHandleTransition()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1a
    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    move-result v3

    if-eqz v3, :cond_3b

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    :cond_38
    invoke-interface {v2, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3e
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_48
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V

    goto :goto_2c

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-eqz v2, :cond_2a

    invoke-interface {v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskChanged(Landroid/app/TaskInfo;)V

    goto :goto_58

    :cond_1c
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->maybeResetTask(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;Landroid/app/TaskInfo;)V

    invoke-interface {v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskVanished(Landroid/app/TaskInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_58

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_58

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-interface {v0, p1, p0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V

    goto :goto_58

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_58
    :goto_58
    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_25

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->maybeResetTask(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;Landroid/app/TaskInfo;)V

    invoke-interface {v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskVanished(Landroid/app/TaskInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_25
    return-void
.end method
