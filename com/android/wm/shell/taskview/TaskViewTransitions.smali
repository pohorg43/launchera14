.class public Lcom/android/wm/shell/taskview/TaskViewTransitions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;,
        Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskViewTransitions"


# instance fields
.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistered:[Z

.field private final mTaskViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/wm/shell/taskview/TaskViewTaskController;",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mRegistered:[Z

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method private findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    if-eq v1, p1, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private findPendingCloseTransition(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_33

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    if-eq v1, p1, :cond_17

    goto :goto_30

    :cond_17
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_30
    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {v1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_37

    :cond_18
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {v2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    return-object p0

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method private startNextTransition()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    if-eqz v1, :cond_17

    return-void

    :cond_17
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget v2, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    iget-object v3, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mWct:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addTaskView(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mRegistered:[Z

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mRegistered:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-nez v3, :cond_12

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1f

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;-><init>(Lcom/android/wm/shell/taskview/TaskViewTransitions$1;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public closeTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    return-void
.end method

.method public findAllPending(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/taskview/TaskViewTaskController;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_2a

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v2, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    if-eq v2, p1, :cond_1c

    goto :goto_27

    :cond_1c
    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_2a
    return-object v0
.end method

.method public findPending(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2f

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    if-eq v1, p1, :cond_17

    goto :goto_2c

    :cond_17
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    if-ne v1, p2, :cond_2c

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public findPendingOpeningTransition(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_33

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    if-eq v1, p1, :cond_17

    goto :goto_30

    :cond_17
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_30
    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 6

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-direct {p0, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return-object v1

    :cond_1a
    invoke-direct {p0, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPendingCloseTransition(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object p0

    if-nez p0, :cond_29

    new-instance p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    invoke-direct {p0, p2, v1, v0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    :cond_29
    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    if-nez p2, :cond_35

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task is closing in 2 collecting transitions? This state doesn\'t make sense"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPending()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->isRegistered()Z

    move-result p0

    return p0
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    :cond_a
    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    return-void
.end method

.method public removeTaskView(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTaskBounds(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/graphics/Rect;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    if-eqz v0, :cond_41

    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_41

    :cond_13
    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPendingOpeningTransition(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    :cond_41
    :goto_41
    return-void
.end method

.method public setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    iget-boolean v0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    if-ne v0, p2, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    iput-boolean p2, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    iget-object v2, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    new-instance v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    if-eqz p2, :cond_50

    const/4 p2, 0x3

    goto :goto_51

    :cond_50
    const/4 p2, 0x4

    :goto_51
    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, p1, v2}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const-string v10, "TaskViewTransitions"

    const/4 v11, 0x0

    if-eqz v1, :cond_22

    if-eqz v9, :cond_21

    const-string v0, "Pending taskview transition but no task-views"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v11

    :cond_22
    const/4 v12, 0x1

    if-eqz v9, :cond_2b

    iget-object v1, v9, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_2b

    move v1, v12

    goto :goto_2c

    :cond_2b
    move v1, v11

    :goto_2c
    const/4 v13, 0x0

    move v14, v11

    move v15, v14

    move-object v2, v13

    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_170

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_4e

    :cond_4a
    :goto_4a
    move-object/from16 v7, p3

    goto/16 :goto_16c

    :cond_4e
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v4

    const-string v5, "Found a non-TaskView task in a TaskView Transition. This shouldn\'t happen, so there may be a visual artifact: "

    if-eqz v4, :cond_96

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_63

    move v4, v12

    goto :goto_64

    :cond_63
    move v4, v11

    :goto_64
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v6

    if-nez v6, :cond_71

    if-nez v4, :cond_71

    goto :goto_93

    :cond_71
    if-nez v6, :cond_8a

    if-eqz v9, :cond_4a

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_8a
    if-eqz v4, :cond_90

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->prepareHideAnimation(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_93

    :cond_90
    invoke-virtual {v6}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->prepareCloseAnimation()V

    :goto_93
    add-int/lit8 v15, v15, 0x1

    goto :goto_4a

    :cond_96
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v4

    if-eqz v4, :cond_120

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-ne v4, v12, :cond_a8

    move v4, v12

    goto :goto_a9

    :cond_a8
    move v4, v11

    :goto_a9
    if-eqz v4, :cond_d7

    if-eqz v9, :cond_bf

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget-object v6, v9, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->containsLaunchCookie(Landroid/os/IBinder;)Z

    move-result v5

    if-nez v5, :cond_ba

    goto :goto_bf

    :cond_ba
    iget-object v1, v9, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move/from16 v16, v11

    goto :goto_fc

    :cond_bf
    :goto_bf
    const-string v4, "Found a launching TaskView in the wrong transition. All TaskView launches should be initiated by shell and in their own transition: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    :cond_d7
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v6

    if-nez v6, :cond_f9

    if-eqz v9, :cond_4a

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    :cond_f9
    move/from16 v16, v1

    move-object v1, v6

    :goto_fc
    if-nez v2, :cond_103

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_103
    move-object/from16 v17, v2

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    move v2, v4

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->prepareOpenAnimation(ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p3

    move/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_16c

    :cond_120
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    const/4 v6, 0x6

    if-ne v4, v6, :cond_4a

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v4

    if-nez v4, :cond_149

    if-eqz v9, :cond_4a

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    :cond_149
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    move-object/from16 v7, p3

    invoke-virtual {v7, v5, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v15, v15, 0x1

    :goto_16c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_30

    :cond_170
    move-object/from16 v7, p3

    if-eqz v1, :cond_17f

    const-string v1, "Expected a TaskView launch in this transition but didn\'t get one, cleaning up the task view"

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v9, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {v1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setTaskNotFound()V

    goto :goto_18e

    :cond_17f
    if-nez v2, :cond_18e

    if-nez v9, :cond_18e

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v15, v1, :cond_18e

    return v11

    :cond_18e
    :goto_18e
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object/from16 v1, p5

    invoke-interface {v1, v2, v13}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    return v12
.end method

.method public startTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    return-void
.end method

.method public updateBoundsState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/graphics/Rect;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    if-nez p0, :cond_b

    return-void

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    if-nez p0, :cond_b

    return-void

    :cond_b
    iput-boolean p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    return-void
.end method
