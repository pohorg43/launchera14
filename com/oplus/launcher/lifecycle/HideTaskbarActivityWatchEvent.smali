.class public final Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;
.super Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$Companion;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LAUNCHER:Ljava/lang/String; = "com.android.launcher.Launcher"

.field public static final Companion:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$Companion;

.field private static final TAG:Ljava/lang/String; = "HTBAWE"


# instance fields
.field private inHideTaskbarActivity:Z

.field private final launcherStateListener:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;

.field private launcherWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V
    .registers 3

    const-string v0, "launcherAppSwitchMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    new-instance p1, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;

    invoke-direct {p1, p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;-><init>(Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;)V

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->launcherStateListener:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->updateTaskbarVisibility$lambda$0()V

    return-void
.end method

.method public static final synthetic access$getInHideTaskbarActivity$p(Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->inHideTaskbarActivity:Z

    return p0
.end method

.method public static final synthetic access$removeLauncherStateListener(Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->removeLauncherStateListener()V

    return-void
.end method

.method private final removeLauncherStateListener()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->launcherStateListener:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_17
    return-void
.end method

.method private final updateTaskbarVisibility(Z)V
    .registers 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateTaskbarVisibility show:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HTBAWE"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p0

    if-nez p0, :cond_1d

    return-void

    :cond_1d
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isIconAlignmentAnimating()Z

    move-result v3

    if-ne v3, v1, :cond_2d

    move v3, v1

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    if-eqz v3, :cond_51

    if-eqz p1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskbarVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", but icon alignment animating, set callback"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/guide/side/d;->e:Lcom/android/launcher/guide/side/d;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->addIconAlignmentEndCallback(Ljava/lang/Runnable;)V

    goto :goto_57

    :cond_51
    sget-object p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->onTaskbarHidden(ZZ)V

    :goto_57
    return-void
.end method

.method private static final updateTaskbarVisibility$lambda$0()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->onTaskbarHidden(ZZ)V

    return-void
.end method


# virtual methods
.method public getConfigList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->INSTANCE:Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfigType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 7

    const-string v0, "appEnterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===== onActivityEnter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTBAWE"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/oplus/app/OplusAppEnterInfo;->windowMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    const-string p0, "skip updateTaskbarVisibility, because windowMode is "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Lcom/oplus/app/OplusAppEnterInfo;->windowMode:I

    invoke-static {p0, p1, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_2c
    const-string v0, "isEmbeddedTask(appEnterInfo.intent):"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/oplus/app/OplusAppEnterInfo;->intent:Landroid/content/Intent;

    const-string v4, "appEnterInfo.intent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->isEmbeddedTask(Landroid/content/Intent;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p1, Lcom/oplus/app/OplusAppEnterInfo;->intent:Landroid/content/Intent;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->isEmbeddedTask(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string p0, "skip updateTaskbarVisibility, because in split mode"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5e
    iput-boolean v2, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->inHideTaskbarActivity:Z

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->removeLauncherStateListener()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->updateTaskbarVisibility(Z)V

    sget-object v0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;

    invoke-virtual {p0}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->getLauncherAppSwitchMonitor()Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    move-result-object p0

    iget-object p1, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    const-string v1, "appEnterInfo.targetName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, v2}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;->notifyNotOccludesOrHideTaskbarWindowStateChanged(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityExit(Lcom/android/launcher/Launcher;Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appExitInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "===== onActivityExit:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HTBAWE"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->getConfigList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->getConfigList()Ljava/util/List;

    move-result-object p1

    iget-object v2, p2, Lcom/oplus/app/OplusAppExitInfo;->resumingActivityName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p0, "onActivityExit  appExitInfo.resumingActivityName:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p2, Lcom/oplus/app/OplusAppExitInfo;->resumingActivityName:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_44
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->inHideTaskbarActivity:Z

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->removeLauncherStateListener()V

    iget-object v0, p2, Lcom/oplus/app/OplusAppExitInfo;->resumingActivityName:Ljava/lang/String;

    const-string v2, "com.android.launcher.Launcher"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v1, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->launcherStateListener:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    goto :goto_95

    :cond_8e
    invoke-direct {p0, v1}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->updateTaskbarVisibility(Z)V

    goto :goto_95

    :cond_92
    invoke-direct {p0, v1}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->updateTaskbarVisibility(Z)V

    :cond_95
    :goto_95
    sget-object v0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;

    invoke-virtual {p0}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->getLauncherAppSwitchMonitor()Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    move-result-object p0

    iget-object p2, p2, Lcom/oplus/app/OplusAppExitInfo;->targetName:Ljava/lang/String;

    const-string v1, "appExitInfo.targetName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p2, p1}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;->notifyNotOccludesOrHideTaskbarWindowStateChanged(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Ljava/lang/String;Z)V

    return-void
.end method

.method public onLauncherCreate(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherCreate(Lcom/android/launcher/Launcher;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onLauncherDestroy(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherDestroy(Lcom/android/launcher/Launcher;)V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->removeLauncherStateListener()V

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_d
    return-void
.end method

.method public onLauncherStop()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherStop()V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->removeLauncherStateListener()V

    return-void
.end method
