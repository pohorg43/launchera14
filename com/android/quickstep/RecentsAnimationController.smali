.class public Lcom/android/quickstep/RecentsAnimationController;
.super Lcom/android/quickstep/OplusBaseRecentsAnimationController;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationController"


# instance fields
.field private final mAllowMinimizeSplitScreen:Z

.field private mFinishRequested:Z

.field public mFirst:Z

.field private final mOnFinishedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RecentsAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private mSplitScreenMinimized:Z

.field private mUseLauncherSysBarFlags:Z

.field public mWillFinishToHome:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RecentsAnimationController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mWillFinishToHome:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFirst:Z

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iput-object p3, p0, Lcom/android/quickstep/RecentsAnimationController;->mOnFinishedListener:Ljava/util/function/Consumer;

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mAllowMinimizeSplitScreen:Z

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$setWillFinishToHome$7(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationController;->lambda$disableInputConsumer$10()V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$detachNavigationBarFromApp$5(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/RecentsAnimationController;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationController;->lambda$animateNavigationBarToApp$6(J)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationController;->lambda$setFinishTaskTransaction$8(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationController;->lambda$cleanupScreenshot$4()V

    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationController;->lambda$enableInputConsumer$9()V

    return-void
.end method

.method public static synthetic j(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$setSplitScreenMinimized$1(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$setUseLauncherSystemBarFlags$0(Z)V

    return-void
.end method

.method public static synthetic l(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$removeTaskTarget$2(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method private synthetic lambda$animateNavigationBarToApp$6(J)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->animateNavigationBarToApp(J)V

    return-void
.end method

.method private synthetic lambda$cleanupScreenshot$4()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->cleanupScreenshot()V

    return-void
.end method

.method private synthetic lambda$detachNavigationBarFromApp$5(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->detachNavigationBarFromApp(Z)V

    return-void
.end method

.method private synthetic lambda$disableInputConsumer$10()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v0, 0x0

    const-string v1, "disableInputConsumer"

    invoke-static {p0, v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setInputConsumerEnabled(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/lang/String;)V

    const-string p0, "RecentsAnimationController"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$enableInputConsumer$9()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v0, 0x1

    const-string v1, "enableInputConsumer"

    invoke-static {p0, v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setInputConsumerEnabled(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/lang/String;)V

    const-string p0, "QuickStep"

    const-string v0, "RecentsAnimationController"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$finishController$3(ZZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending finishController(), toRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZZ)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->reduceRecentsAnimaiton()V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->onFinishControllerDone()V

    const/16 p1, 0xb

    invoke-static {p1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    const/16 p1, 0x9

    invoke-static {p1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/quickstep/t;

    invoke-direct {p2, p0}, Lcom/android/quickstep/t;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeTaskTarget$2(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->removeTask(I)Z

    return-void
.end method

.method private synthetic lambda$setFinishTaskTransaction$8(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private synthetic lambda$setInterceptKeyEventEnabled$11(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInterceptKeyEventEnabled(Z)V

    return-void
.end method

.method private static synthetic lambda$setSplitScreenMinimized$1(Landroid/content/Context;Z)V
    .registers 3

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->setSplitScreenMinimized(Z)V

    return-void
.end method

.method private synthetic lambda$setUseLauncherSystemBarFlags$0(Z)V
    .registers 3

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    goto :goto_1c

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->setRecentsAppBehindSystemBars(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string p1, "RecentsAnimationController"

    const-string v0, "Unable to reach window manager"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method private synthetic lambda$setWillFinishToHome$7(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setWillFinishToHome(Z)V

    return-void
.end method

.method public static synthetic m(Lcom/android/quickstep/RecentsAnimationController;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationController;->lambda$finishController$3(ZZ)V

    return-void
.end method

.method public static synthetic n(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$setInterceptKeyEventEnabled$11(Z)V

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/u0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/u0;-><init>(Lcom/android/quickstep/RecentsAnimationController;J)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanupScreenshot()V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/h0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/h0;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/h1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/h1;-><init>(Lcom/android/quickstep/RecentsAnimationController;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disableInputConsumer()V
    .registers 4

    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/g1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/g1;-><init>(Lcom/android/quickstep/RecentsAnimationController;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public enableInputConsumer()V
    .registers 3

    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/c1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;Z)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finish(ZZ)V
    .registers 7

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportStartingSurface()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v1

    if-eqz v1, :cond_2c

    :try_start_10
    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->getNextFinishSeqId(Lcom/android/quickstep/RecentsAnimationController;)J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finishBySeqId(ZZJ)V
    :try_end_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_31

    :catch_1e
    move-exception v0

    const-string v1, "RecentsAnimationController"

    const-string v2, "call finishBySeqId fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    goto :goto_31

    :cond_2c
    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    :goto_31
    return-void
.end method

.method public finishAnimationToApp()V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finishAnimationToHome()V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finishController(ZLjava/lang/Runnable;Z)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->updateNextFinishSeqIdIfNeed(Lcom/android/quickstep/RecentsAnimationController;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFinishTargetIsLauncher:Z

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mOnFinishedListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/quickstep/RecentsAnimationController;->setInterceptKeyEventEnabled(Z)V

    sget-object p2, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/i1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/quickstep/i1;-><init>(Lcom/android/quickstep/RecentsAnimationController;ZZ)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    return-object p0
.end method

.method public getFinishTargetIsLauncher()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFinishTargetIsLauncher:Z

    return p0
.end method

.method public isFinishRequested()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    return p0
.end method

.method public notifyFinishedListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mOnFinishedListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public removeTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 5
    .param p1  # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string/jumbo v0, "removeTaskTarget: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    const-string v2, "RecentsAnimationController"

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/r;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    return-object p0
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 6

    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Ld0/b;

    invoke-direct {v1, p0, p1, p2, p3}, Ld0/b;-><init>(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInterceptKeyEventEnabled(Z)V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterceptKeyEvent()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/h1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/h1;-><init>(Lcom/android/quickstep/RecentsAnimationController;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSplitScreenMinimized(Landroid/content/Context;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mAllowMinimizeSplitScreen:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    if-eq v0, p2, :cond_16

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/common/util/i0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/common/util/i0;-><init>(Landroid/content/Context;ZI)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public setUseLauncherSystemBarFlags(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/h1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/h1;-><init>(Lcom/android/quickstep/RecentsAnimationController;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFirst:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mWillFinishToHome:Z

    if-eq v0, p1, :cond_36

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFirst:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWillFinishToHome:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->setWillFinishToHome(Ljava/lang/Boolean;)V

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mWillFinishToHome:Z

    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/h1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/h1;-><init>(Lcom/android/quickstep/RecentsAnimationController;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
