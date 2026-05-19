.class public Lcom/android/wm/shell/taskview/TaskViewTaskController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskViewTaskController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGuard:Landroid/util/CloseGuard;

.field private mIsInitialized:Z

.field private mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

.field private mListenerExecutor:Ljava/util/concurrent/Executor;

.field private mNotifiedForInitialized:Z

.field private mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mShellExecutor:Ljava/util/concurrent/Executor;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceCreated:Z

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskLeash:Landroid/view/SurfaceControl;

.field private mTaskNotFound:Z

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mTaskToken:Landroid/window/WindowContainerToken;

.field private mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

.field private final mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mGuard:Landroid/util/CloseGuard;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p2}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-eqz p3, :cond_24

    invoke-virtual {p3, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->addTaskView(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    :cond_24
    const-string/jumbo p0, "release"

    invoke-virtual {v0, p0}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$setWindowBounds$12(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$onTaskAppeared$7(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$onBackPressedOnTaskRoot$10(I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$startActivity$1(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/Binder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$prepareActivityOptions$2(Landroid/os/Binder;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$notifyReleased$4()V

    return-void
.end method

.method private findTaskSurface(I)Landroid/view/SurfaceControl;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_d

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_d

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$onTaskVanished$9(I)V

    return-void
.end method

.method public static synthetic h(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$surfaceDestroyed$14()V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$surfaceCreated$11()V

    return-void
.end method

.method public static synthetic j(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$prepareCloseAnimation$18(I)V

    return-void
.end method

.method public static synthetic k(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$cleanUpPendingTask$17()V

    return-void
.end method

.method public static synthetic l(Lcom/android/wm/shell/taskview/TaskViewTaskController;ZILandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$prepareOpenAnimation$19(ZILandroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$cleanUpPendingTask$16(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskRemovalStarted(I)V

    return-void
.end method

.method private synthetic lambda$cleanUpPendingTask$17()V
    .registers 3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->closeTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    return-void
.end method

.method private synthetic lambda$notifyInitialized$15()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onInitialized()V

    return-void
.end method

.method private synthetic lambda$notifyReleased$4()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onReleased()V

    return-void
.end method

.method private synthetic lambda$onBackPressedOnTaskRoot$10(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onBackPressedOnTaskRoot(I)V

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$7(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/taskview/TaskViewBase;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$8(ILandroid/content/ComponentName;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$onTaskVanished$9(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskRemovalStarted(I)V

    return-void
.end method

.method private synthetic lambda$performRelease$3()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->removeListener(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    return-void
.end method

.method private synthetic lambda$prepareActivityOptions$2(Landroid/os/Binder;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method private synthetic lambda$prepareCloseAnimation$18(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskRemovalStarted(I)V

    return-void
.end method

.method private synthetic lambda$prepareOpenAnimation$19(ZILandroid/content/ComponentName;)V
    .registers 5

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    invoke-interface {v0, p2, p3}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_7
    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    if-nez p1, :cond_14

    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    iget-boolean p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    invoke-interface {p1, p2, p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    :cond_14
    return-void
.end method

.method private synthetic lambda$removeTask$13()V
    .registers 3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->closeTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    return-void
.end method

.method private synthetic lambda$setWindowBounds$12(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setTaskBounds(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$startActivity$1(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 6

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, v0, p0, p2}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic lambda$startShortcutActivity$0(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;)V
    .registers 6

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, v0, p0, p2}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic lambda$surfaceCreated$11()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->updateTaskVisibility()V

    return-void
.end method

.method private synthetic lambda$surfaceDestroyed$14()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->updateTaskVisibility()V

    return-void
.end method

.method private synthetic lambda$updateTaskVisibility$5(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    iget-boolean p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    invoke-interface {v0, p1, p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    return-void
.end method

.method private synthetic lambda$updateTaskVisibility$6(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/taskview/d;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/taskview/d;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;II)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$performRelease$3()V

    return-void
.end method

.method public static synthetic n(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$notifyInitialized$15()V

    return-void
.end method

.method public static synthetic o(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$removeTask$13()V

    return-void
.end method

.method public static synthetic p(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$updateTaskVisibility$5(I)V

    return-void
.end method

.method private performRelease()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->removeTaskView(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/quickstep/util/n;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mIsInitialized:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->notifyReleased()V

    return-void
.end method

.method private prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 6

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/animation/c;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/Binder;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setRemoveWithTaskOrganizer(Z)V

    return-void
.end method

.method public static synthetic q(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$startShortcutActivity$0(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/wm/shell/taskview/TaskViewTaskController;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$onTaskAppeared$8(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private resetTaskInfo()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskNotFound:Z

    return-void
.end method

.method public static synthetic s(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$cleanUpPendingTask$16(I)V

    return-void
.end method

.method public static synthetic t(Lcom/android/wm/shell/taskview/TaskViewTaskController;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->lambda$updateTaskVisibility$6(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private updateTaskVisibility()V
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    iget-boolean v2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/taskview/b;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/taskview/b;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public cleanUpPendingTask()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/wm/shell/taskview/d;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/wm/shell/taskview/d;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;II)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/taskview/TaskViewBase;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/taskview/c;

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/taskview/c;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2f
    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->performRelease()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    :cond_a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public isInitialized()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mIsInitialized:Z

    return p0
.end method

.method public isUsingShellTransitions()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public notifyInitialized()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mNotifiedForInitialized:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mNotifiedForInitialized:Z

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/quickstep/c1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public notifyReleased()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mNotifiedForInitialized:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/taskview/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/taskview/c;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mNotifiedForInitialized:Z

    :cond_16
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_1e

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1e

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz v0, :cond_1e

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/taskview/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/taskview/d;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result v0

    if-eqz v0, :cond_10

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskNotFound:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->cleanUpPendingTask()V

    :cond_f
    return-void

    :cond_10
    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz p2, :cond_23

    new-instance v0, Landroid/view/SurfaceControl;

    const-string/jumbo v1, "onTaskAppeared"

    invoke-direct {v0, p2, v1}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    goto :goto_25

    :cond_23
    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    :goto_25
    iget-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_40

    :cond_3d
    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->updateTaskVisibility()V

    :goto_40
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/r1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/r1;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz p2, :cond_64

    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher/badge/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_64
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewBase;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_3a

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3a

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz v0, :cond_1e

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/taskview/d;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v3}, Lcom/android/wm/shell/taskview/d;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewBase;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public prepareCloseAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/taskview/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/wm/shell/taskview/d;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_17
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/taskview/TaskViewBase;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    :cond_26
    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    return-void
.end method

.method public prepareHideAnimation(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    invoke-interface {p1, v0, p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    :cond_18
    return-void
.end method

.method public prepareOpenAnimation(ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;)V
    .registers 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz p5, :cond_16

    new-instance p4, Landroid/view/SurfaceControl;

    const-string/jumbo v0, "prepareOpenAnimation"

    invoke-direct {p4, p5, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    goto :goto_18

    :cond_16
    iput-object p5, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    :goto_18
    iget-boolean p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    const/4 p5, 0x1

    if-eqz p4, :cond_5c

    iget-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p4, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p4, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    invoke-interface {p4}, Lcom/android/wm/shell/taskview/TaskViewBase;->getCurrentBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {p3, p0, p4}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->updateBoundsState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {p3, p0, p5}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p6, p3, p4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_67

    :cond_5c
    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p6, p3, p5}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    const/4 p4, 0x0

    invoke-virtual {p3, p0, p4}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    :goto_67
    if-eqz p1, :cond_70

    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p4, p5}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    :cond_70
    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p3, :cond_7f

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p3

    iget-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    invoke-interface {p4, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewBase;->setResizeBgColor(Landroid/view/SurfaceControl$Transaction;I)V

    :cond_7f
    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz p2, :cond_93

    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance p5, Lcom/android/quickstep/b;

    invoke-direct {p5, p0, p1, p3, p2}, Lcom/android/quickstep/b;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;ZILandroid/content/ComponentName;)V

    invoke-interface {p4, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_93
    return-void
.end method

.method public release()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->performRelease()V

    return-void
.end method

.method public removeTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_c

    sget-object p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->TAG:Ljava/lang/String;

    const-string v0, "Trying to remove a task that was never added? (no taskToken)"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-nez v0, :cond_9

    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to set a listener when one has already been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTaskNotFound()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskNotFound:Z

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->cleanUpPendingTask()V

    :cond_a
    return-void
.end method

.method public setTaskViewBase(Lcom/android/wm/shell/taskview/TaskViewBase;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    return-void
.end method

.method public setWindowBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_16
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 14

    invoke-direct {p0, p3, p4}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result p4

    if-eqz p4, :cond_14

    iget-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/taskview/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/taskview/a;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/quickstep/f1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/f1;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1e
    const/4 p0, 0x0

    :try_start_1f
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p1, p0, p2}, Landroid/content/pm/LauncherApps;->startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceControl;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mIsInitialized:Z

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->notifyInitialized()V

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/common/c;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceDestroyed()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "TaskViewTaskController:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_11

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_14

    :cond_11
    const-string/jumbo p0, "null"

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
