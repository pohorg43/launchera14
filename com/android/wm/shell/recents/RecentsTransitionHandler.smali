.class public Lcom/android/wm/shell/recents/RecentsTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;,
        Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;,
        Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsTransitionHandler"


# instance fields
.field private mAnimApp:Landroid/app/IApplicationThread;

.field private final mControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMixers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/pip/PipTransitionController;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p2}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    sget-boolean p4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p4, :cond_23

    return-void

    :cond_23
    if-nez p3, :cond_26

    return-void

    :cond_26
    new-instance p4, Lcom/android/wm/shell/recents/o;

    invoke-direct {p4, p0, p3, p2}, Lcom/android/wm/shell/recents/o;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/Transitions;)V

    invoke-virtual {p1, p4, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/transition/Transitions;->setRecentsTransitionHandler(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->lambda$new$0(Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/transition/Transitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-object p0
.end method

.method private findController(Landroid/os/IBinder;)I
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-static {v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->access$000(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_19

    return v0

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method private hookStartRecentsTransitionForSplitScreen(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)Z
    .registers 5

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->hookStartRecentsTransition()I

    move-result p0

    goto :goto_1a

    :cond_19
    const/4 p0, -0x1

    :goto_1a
    const/4 v0, 0x0

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    const/4 v1, 0x1

    if-ne p0, v1, :cond_22

    return v1

    :cond_22
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2c

    const-string/jumbo p0, "startRecentsTransition"

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    return v1

    :cond_2c
    return v0
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->setTransitionHandler(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)V

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method


# virtual methods
.method public addMixer(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public advancedFinish(Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_17

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_16

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x2d01d67c

    const/4 v1, 0x0

    const-string v2, "RecentsTransitionHandler.mergeAnimation: no controller found"

    invoke-static {p0, p1, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    return-void

    :cond_17
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-static {p0, v0, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->access$100(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;[I[Landroid/window/TaskSnapshot;)Z

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->access$200(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZ)V

    const-string p0, "RecentsTransitionHandler"

    const-string/jumbo p1, "recent advancedFinish"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceCancelAll()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    const-string v2, "forceCancelAll"

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public getRecentController(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_1c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RecentsTransitionHandler.getRecentController: no controller found , token="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    return-object p0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return-object v0

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->handleMidTransitionRequest(Landroid/window/TransitionRequestInfo;)V

    return-object v0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 7

    invoke-direct {p0, p4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_17

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_16

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x2d01d67c

    const/4 p2, 0x0

    const/4 p3, 0x0

    const-string p4, "RecentsTransitionHandler.mergeAnimation: no controller found"

    invoke-static {p0, p1, p2, p4, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    return-void

    :cond_17
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-virtual {p0, p2, p3, p5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cachePlayingAndMergedInfo(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_8
    if-ltz p1, :cond_1b

    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    const-string/jumbo p3, "onTransitionConsumed"

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_1b
    return-void
.end method

.method public removeMixer(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_17

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_16

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x26d08192

    const-string p2, "RecentsTransitionHandler.startAnimation: no controller found"

    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    return v1

    :cond_17
    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->start(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    if-nez p0, :cond_3b

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_3a

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x7d4bff5

    const-string p2, "RecentsTransitionHandler.startAnimation: failed to start animation"

    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    return v1

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)Landroid/os/IBinder;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x7d9f3be2

    const-string v4, "RecentsTransitionHandler.startRecentsTransition"

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    new-instance p4, Landroid/window/WindowContainerTransaction;

    invoke-direct {p4}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p4, p1, p2, p3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    new-instance p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-direct {p1, p0, p5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/view/IRecentsAnimationRunner;)V

    move p2, v1

    move-object p3, v2

    :goto_21
    iget-object p5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_43

    iget-object p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;

    invoke-interface {p3, p4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;->handleRecentsRequest(Landroid/window/WindowContainerTransaction;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object p3

    if-eqz p3, :cond_40

    iget-object p5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;

    goto :goto_44

    :cond_40
    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    :cond_43
    move-object p2, v2

    :goto_44
    iget-object p5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    instance-of v0, p5, Lcom/android/wm/shell/pip/PipTransition;

    if-eqz v0, :cond_64

    check-cast p5, Lcom/android/wm/shell/pip/PipTransition;

    invoke-virtual {p5}, Lcom/android/wm/shell/pip/PipTransition;->getPipTransitionState()Lcom/android/wm/shell/pip/PipTransitionState;

    move-result-object p5

    if-eqz p5, :cond_64

    invoke-virtual {p5}, Lcom/android/wm/shell/pip/PipTransitionState;->getExitingPipState()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string p0, "RecentsTransitionHandler"

    const-string/jumbo p1, "startRecentsTransition: pip not finish, don\'t start recent"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p5, v1}, Lcom/android/wm/shell/pip/PipTransitionState;->setExitingPipState(Z)V

    return-object v2

    :cond_64
    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->hookStartRecentsTransitionForSplitScreen(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)Z

    move-result p5

    if-eqz p5, :cond_6b

    return-object v2

    :cond_6b
    const/4 p5, 0x1

    invoke-static {p4, p5}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->setRecentTransition(Landroid/window/WindowContainerTransaction;Z)V

    sget-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-eqz v0, :cond_76

    invoke-static {p4, p5}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->setInterruptTransition(Landroid/window/WindowContainerTransaction;Z)V

    :cond_76
    iget-object p5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v0, 0x3

    if-nez p3, :cond_7c

    move-object p3, p0

    :cond_7c
    invoke-virtual {p5, v0, p4, p3}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p3

    if-eqz p2, :cond_85

    invoke-interface {p2, p3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;->setRecentsTransition(Landroid/os/IBinder;)V

    :cond_85
    if-eqz p3, :cond_90

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->setTransition(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_90
    const-string/jumbo p0, "startRecentsTransition"

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    :goto_96
    return-object p3
.end method

.method public updateFinishT(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    move-result p1

    if-gez p1, :cond_e

    const-string p0, "RecentsTransitionHandler"

    const-string p1, "RecentsTransitionHandler.updateFinishT: no controller found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->updateFinishT(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
