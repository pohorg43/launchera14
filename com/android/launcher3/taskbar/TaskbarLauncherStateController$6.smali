.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->createLauncherLifecycleObserver()Lcom/android/launcher/ILauncherLifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateTaskbarLauncherState(IZ)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onPostStartActivitySafely(ZLandroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    if-eqz p1, :cond_26

    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarUtils;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getZoomWindowPkg()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_26

    if-eqz p4, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getZoomWindowPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object p1

    if-eqz p1, :cond_26

    const/high16 p1, -0x80000000

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$6;->updateTaskbarLauncherState(IZ)V

    :cond_26
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/high16 p1, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$6;->updateTaskbarLauncherState(IZ)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/high16 p1, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$6;->updateTaskbarLauncherState(IZ)V

    return-void
.end method
