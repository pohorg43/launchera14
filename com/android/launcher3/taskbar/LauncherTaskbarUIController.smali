.class public Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
.super Lcom/android/launcher3/taskbar/TaskbarUIController;
.source ""


# static fields
.field public static final ALL_APPS_PAGE_PROGRESS_INDEX:I = 0x1

.field public static final MINUS_ONE_PAGE_PROGRESS_INDEX:I = 0x0

.field public static final SYSUI_SURFACE_PROGRESS_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TaskbarUIController"

.field public static final WIDGETS_PAGE_PROGRESS_INDEX:I = 0x2


# instance fields
.field private mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

.field private final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private final mOnDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

.field private mOnLauncherItemsFinishBindingRunnable:Ljava/lang/Runnable;

.field private final mPowerManger:Landroid/os/PowerManager;

.field private final mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

.field private mTaskbarOverrideBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/taskbar/b;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/b;-><init>(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mPowerManger:Landroid/os/PowerManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnLauncherItemsFinishBindingRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnLauncherItemsFinishBindingRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;Lcom/android/launcher3/DeviceProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->lambda$new$0(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public static synthetic c(Landroid/animation/Animator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->lambda$onLauncherResumedOrPaused$1(Landroid/animation/Animator;)V

    return-void
.end method

.method public static createLauncherLifecycleObserver()Lcom/android/launcher/ILauncherLifecycleObserver;
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController$1;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController$1;-><init>()V

    return-object v0
.end method

.method private getInAppDisplayProgress()F
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lj0/a;->c:Lj0/a;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private getInAppDisplayProgress(I)F
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/launcher3/DeviceProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onStashedInAppChanged(Lcom/android/launcher3/DeviceProfile;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->onRotationChanged(Lcom/android/launcher3/DeviceProfile;)V

    :cond_e
    return-void
.end method

.method private static synthetic lambda$onLauncherResumedOrPaused$1(Landroid/animation/Animator;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_5
    return-void
.end method

.method private onLauncherResumedOrPaused(ZZZI)Landroid/animation/Animator;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mPowerManger:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    if-nez p1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->setSkipResumeAnimation(Z)V

    const-string v0, "TaskbarUIController"

    const/4 v1, 0x0

    if-nez p1, :cond_2f

    iget-object v4, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/high16 v5, 0x40000000  # 2.0f

    invoke-virtual {v4, v5}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    const-string/jumbo p0, "onLauncherResumedOrPaused, FLAG_NOT_OCCLUDES, return."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2f
    iget-object v4, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->isScreenOff()Z

    move-result v4

    if-eqz v4, :cond_47

    if-nez p1, :cond_42

    iget-object v4, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_47

    return-object v1

    :cond_42
    iget-object v4, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->setScreenOn()V

    :cond_47
    sget-boolean v4, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v4, :cond_74

    if-eqz p1, :cond_74

    iget-object v4, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z

    move-result v4

    if-nez v4, :cond_74

    return-object v1

    :cond_74
    const-string/jumbo v4, "onLauncherResumedOrPaused isResumed: "

    invoke-static {v4, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v4, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz p1, :cond_a6

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isBindingItems()Z

    move-result p1

    if-eqz p1, :cond_a6

    const-string/jumbo p1, "resuming but launcher is binding items, pending state animator."

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    if-eqz p2, :cond_98

    goto :goto_99

    :cond_98
    int-to-long v4, p4

    :goto_99
    invoke-virtual {p1, v4, v5, v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p2, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Landroid/animation/Animator;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->runOnLauncherItemsFinishBinding(Ljava/lang/Runnable;)V

    return-object v1

    :cond_a6
    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    if-eqz p2, :cond_ab

    goto :goto_ac

    :cond_ab
    int-to-long v4, p4

    :goto_ac
    invoke-virtual {p1, v4, v5, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_bd

    iget-object p2, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnLauncherItemsFinishBindingRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_bd

    const-string p2, "OnLauncherItemsFinishBindingRunnable not null but new stateAnimator is coming."

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnLauncherItemsFinishBindingRunnable:Ljava/lang/Runnable;

    :cond_bd
    return-object p1
.end method

.method private onLauncherResumedOrPaused(ZZ)V
    .registers 5

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getDuration(ZZ)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(ZZZI)Landroid/animation/Animator;

    return-void
.end method

.method private onStashedInAppChanged(Lcom/android/launcher3/DeviceProfile;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->updateTaskTransitionSpec(Z)V

    return-void
.end method

.method private runOnLauncherItemsFinishBinding(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnLauncherItemsFinishBindingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private updateTaskTransitionSpec(Z)V
    .registers 4

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableWindowRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_11

    :try_start_9
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IWindowManager;->clearTaskTransitionSpec()V

    goto :goto_2f

    :cond_11
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    new-instance v0, Landroid/view/TaskTransitionSpec;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const v1, 0x7f060810

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/view/TaskTransitionSpec;-><init>(I)V

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception p0

    const-string p1, "TaskbarUIController"

    const-string v0, "Failed to update task transition spec to account for new taskbar state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-void
.end method


# virtual methods
.method public addLauncherResumeAnimation(Landroid/animation/AnimatorSet;I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(ZZZI)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;
    .registers 5
    .param p1  # Lcom/android/launcher3/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/quickstep/RecentsAnimationCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarOverrideBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmTaskbarOverrideBackgroundAlpha=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v3, "%s\tTaskbar in-app display progress:"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v1, :cond_3c

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "%s\t\tMissing mControllers"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_99

    :cond_3c
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\t\tprogress at MINUS_ONE_PAGE_PROGRESS_INDEX=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v4}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\t\tprogress at ALL_APPS_PAGE_PROGRESS_INDEX=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\t\tprogress at WIDGETS_PAGE_PROGRESS_INDEX=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s\t\tprogress at SYSUI_SURFACE_PROGRESS_INDEX=%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_99
    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableManualStashingForTests(Z)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->enableManualStashingForTests(Z)V

    return-void
.end method

.method public forceHideBackground(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarOverrideBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public getAppIconsForEdu()Ljava/util/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    instance-of v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEdu()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->hideEdu()V

    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/BaseQuickstepLauncher;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getOverrideBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarOverrideBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->setTaskbarUIController(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(ZZ)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onStashedInAppChanged(Lcom/android/launcher3/DeviceProfile;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {p1, p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public isDraggingItem()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isDragging()Z

    move-result p0

    return p0
.end method

.method public isEventOverAnyTaskbarItem(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isHotseatIconOnTopWhenAligned()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isInHotseatOnTopStates()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public isIconAlignedWithHotseat()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isIconAlignedWithHotseat()Z

    move-result p0

    return p0
.end method

.method public isTaskbarTouchable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isAnimatingToLauncher()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToAlignedLauncherState()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(Z)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->setTaskbarUIController(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v1, v2}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->updateTaskTransitionSpec(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    if-eqz p0, :cond_27

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    :cond_27
    return-void
.end method

.method public onLauncherResumedOrPaused(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(ZZ)V

    return-void
.end method

.method public onStashedInAppChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onStashedInAppChanged(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-interface {v1, p0, p1, v0}, Lcom/android/launcher3/views/AppLauncher;->logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    return-void
.end method

.method public onTaskbarInAppDisplayProgressUpdate(FI)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isAnimatingToLauncher()Z

    move-result p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarNavBtnOffsetY()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress()F

    move-result p0

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    :cond_35
    return-void
.end method

.method public setShouldDelayLauncherStateAnim(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->setShouldDelayLauncherStateAnim(Z)V

    return-void
.end method

.method public setSkipApplyState(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->setSkipApplyState(Z)V

    return-void
.end method

.method public setSystemGestureInProgress(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->setSystemGestureInProgress(Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->forceHideBackground(Z)V

    return-void
.end method

.method public shouldShowEdu()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isSmallScreenMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p0

    const-string v0, "launcher.taskbar_edu_seen"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OnboardingPrefs;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public shouldUseInAppLayout()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public showEdu()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->shouldShowEdu()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    const-string v1, "launcher.taskbar_edu_seen"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/OnboardingPrefs;->markChecked(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->showEdu()V

    return-void
.end method

.method public unstashTaskbarIfStashed()V
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onLongPressToUnstashTaskbar()Z

    return-void
.end method
