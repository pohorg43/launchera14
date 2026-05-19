.class public Landroid/window/WindowOrganizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I
    .registers 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_ACTIVITY_TASKS"
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_ACTIVITY_TASKS"
    .end annotation

    return-void
.end method

.method public finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I
    .registers 4
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_ACTIVITY_TASKS"
    .end annotation

    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ExecutorRegistration"
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public notifyRemoteInterrupt(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public notifyStartCompleted(Landroid/window/WindowContainerToken;Z)V
    .registers 3

    return-void
.end method

.method public notifyTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public notifyTransitionRemoveTask(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .registers 4

    return-void
.end method

.method public registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_ACTIVITY_TASKS"
    .end annotation

    return-void
.end method

.method public setTransitionRecentsFromRemote(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public shareTransactionQueue()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_ACTIVITY_TASKS"
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_ACTIVITY_TASKS"
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .registers 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_ACTIVITY_TASKS"
    .end annotation

    return-void
.end method
