.class public Lcom/android/quickstep/RecentsAnimationCallbacks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationCallbacks"


# instance fields
.field public isAnimationStarted:Z

.field public isReuseLastAnimation:Z

.field private final mAllowMinimizeSplitScreen:Z

.field private mCancelled:Z

.field private mController:Lcom/android/quickstep/RecentsAnimationController;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRunner:Landroid/view/IRecentsAnimationRunner;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/SystemUiProxy;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mAllowMinimizeSplitScreen:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationFinished$5(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onSwitchToScreenshot$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/RecentsAnimationCallbacks;[Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onTasksAppearedCallback$3([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationStart$0(Lcom/android/quickstep/RecentsAnimationTargets;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationCanceled$1(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/RecentsAnimationCallbacks;[Landroid/view/RemoteAnimationTarget;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onTasksAppeared$2([Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method private getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    return-object p0
.end method

.method private synthetic lambda$onAnimationCanceled$1(Ljava/util/HashMap;)V
    .registers 5

    const-string v0, "Recents animation canceled, lister.size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationCallbacks"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "RecentsAnimationCallbacks.onAnimationCanceled"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    if-nez v0, :cond_38

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    :cond_38
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v0, :cond_48

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_48
    return-void
.end method

.method private synthetic lambda$onAnimationFinished$5(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 5

    const-string v0, "Recents animation finished, lister.size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationCallbacks"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v1, "RecentsAnimationCallbacks.onAnimationFinished"

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    :cond_32
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v0, :cond_42

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_42
    return-void
.end method

.method private synthetic lambda$onAnimationStart$0(Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 8

    const-string v0, "Recents animation start, listener.size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationCallbacks"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimStartTime()V

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    iget-object v2, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v2, v2

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v4, "RecentsAnimationCallbacks.onAnimationStart"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;ILcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    :cond_3c
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_43
    if-ge v3, v2, :cond_59

    aget-object v5, v0, v3

    if-eqz v5, :cond_50

    iget-object v4, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-interface {v5, v4, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    const/4 v4, 0x1

    goto :goto_56

    :cond_50
    const-string/jumbo v5, "onAnimationCanceled:  listener is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_59
    if-nez v4, :cond_66

    const-string/jumbo p1, "onAnimationStart, listen is empty and finishAnimationToApp"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationController;->finishAnimationToApp()V

    :cond_66
    return-void
.end method

.method private synthetic lambda$onSwitchToScreenshot$4(Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onTasksAppeared$2([Landroid/view/RemoteAnimationTarget;)V
    .registers 5

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "RecentsAnimationCallbacks.onTasksAppeared"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_19

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_19
    return-void
.end method

.method private synthetic lambda$onTasksAppearedCallback$3([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 7

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "RecentsAnimationCallbacks.onTasksAppearedCallback"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_21

    aget-object v3, p0, v1

    if-nez v2, :cond_1b

    invoke-interface {v3, p1, p2}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)Z

    move-result v2

    goto :goto_1e

    :cond_1b
    invoke-interface {v3, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)Z

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    return-void
.end method

.method private final onAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 4

    new-instance v0, Lcom/android/quickstep/s;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    const-string/jumbo p1, "onAnimationFinished; isMainThread:"

    const-string v1, "RecentsAnimationCallbacks"

    invoke-static {p1, p0, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p0, :cond_20

    invoke-virtual {v0}, Lcom/android/quickstep/s;->run()V

    goto :goto_29

    :cond_20
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_29
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getController()Lcom/android/quickstep/RecentsAnimationController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p0
.end method

.method public getRecentsRunner()Landroid/view/IRecentsAnimationRunner;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mRunner:Landroid/view/IRecentsAnimationRunner;

    return-object p0
.end method

.method public hasListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Z
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isListenerEmpty()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public notifyAnimationCanceled()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationCanceled(Ljava/util/HashMap;)V

    return-void
.end method

.method public notifyAnimationCanceled(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .registers 6
    .param p1  # Lcom/android/quickstep/RecentsAnimationController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    xor-int/2addr p2, v0

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;Lcom/android/quickstep/RecentsAnimationController;Z)V

    :cond_1c
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationCanceled(Ljava/util/HashMap;)V

    return-void
.end method

.method public notifyInterceptKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_13

    aget-object v3, p0, v1

    invoke-interface {v3, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->notifyInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2c

    invoke-static {}, Lcom/android/quickstep/util/InputConsumerProxy;->getInstance()Lcom/android/quickstep/util/InputConsumerProxy;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/InputConsumerProxy;->enable(Z)V

    :cond_2c
    return v2
.end method

.method public final onAnimationCanceled(Ljava/util/HashMap;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/r;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v4, v0, [Landroid/view/RemoteAnimationTarget;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v1

    const-string v2, "RecentsAnimationCallbacks"

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->checkIfRecentsAnimStarted(Lcom/android/quickstep/RecentsAnimationCallbacks;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string p0, "Recents animation has started"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimStartTime()V

    return-void

    :cond_1d
    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->onRecentsAnimStart(Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    :cond_20
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getRecentsRunner()Landroid/view/IRecentsAnimationRunner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setRunner(Landroid/view/IRecentsAnimationRunner;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->isAnimationStarted:Z

    const-string/jumbo v1, "onAnimationStart, mCancelled="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", this="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean v2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mAllowMinimizeSplitScreen:Z

    new-instance v3, Lcom/android/common/util/m;

    invoke-direct {v3, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/quickstep/RecentsAnimationController;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/RecentsAnimationController;->setInterceptKeyEventEnabled(Z)V

    iget-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    if-eqz p1, :cond_9d

    sget-boolean p1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_86

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p1

    if-eqz p1, :cond_86

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/quickstep/y0;

    invoke-direct {p2, p0}, Lcom/android/quickstep/y0;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_99

    :cond_86
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/quickstep/x0;

    invoke-direct {p2, p0}, Lcom/android/quickstep/x0;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_99
    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimStartTime()V

    goto :goto_c6

    :cond_9d
    const/4 p1, 0x0

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_a8

    iget-object p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/SystemUiProxy;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    :cond_a8
    if-nez p1, :cond_ad

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/RemoteAnimationTarget;

    :cond_ad
    move-object v3, p1

    new-instance p1, Lcom/android/quickstep/RecentsAnimationTargets;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/RecentsAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/quickstep/s;

    invoke-direct {p3, p0, p1}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationTargets;)V

    invoke-static {p2, p3}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_c6
    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/r;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/s;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;[Landroid/view/RemoteAnimationTarget;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/f1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/f1;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;[Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAllListeners()V
    .registers 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRecentsRunner(Landroid/view/IRecentsAnimationRunner;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mRunner:Landroid/view/IRecentsAnimationRunner;

    return-void
.end method

.method public setReuseLastAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->isReuseLastAnimation:Z

    return-void
.end method
