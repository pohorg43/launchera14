.class public final Lcom/android/exceptionmonitor/iconlost/IconLostDetector;
.super Lcom/android/exceptionmonitor/BasePeriodDetector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exceptionmonitor/iconlost/IconLostDetector$Companion;
    }
.end annotation


# static fields
.field private static final CONFIG_LIST_NAME_LAUNCHER_ICON_DETECT:Ljava/lang/String; = "launcher_exception_icon_lost_detect"

.field private static final CONFIG_NAME_LAUNCHER_ICON_DETECT_INTERVAL_TIME:Ljava/lang/String; = "launcher_exception_icon_lost_detect_interval_time"

.field private static final CONFIG_NAME_LAUNCHER_ICON_DETECT_MAX_COUNT:Ljava/lang/String; = "launcher_exception_icon_lost_detect_max_count"

.field public static final Companion:Lcom/android/exceptionmonitor/iconlost/IconLostDetector$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/exceptionmonitor/iconlost/IconLostDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/exceptionmonitor/iconlost/IconLostDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/exceptionmonitor/iconlost/IconLostDetector;->Companion:Lcom/android/exceptionmonitor/iconlost/IconLostDetector$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/android/exceptionmonitor/LauncherExceptionMonitor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/exceptionmonitor/BasePeriodDetector;-><init>(ILcom/android/exceptionmonitor/LauncherExceptionMonitor;)V

    return-void
.end method


# virtual methods
.method public enabled(I)Z
    .registers 3

    and-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Lcom/android/exceptionmonitor/BasePeriodDetector;->enabled(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public getConfigListNameDetect()Ljava/lang/String;
    .registers 1

    const-string p0, "launcher_exception_icon_lost_detect"

    return-object p0
.end method

.method public getConfigNameIntervalTime()Ljava/lang/String;
    .registers 1

    const-string p0, "launcher_exception_icon_lost_detect_interval_time"

    return-object p0
.end method

.method public getConfigNameMaxCount()Ljava/lang/String;
    .registers 1

    const-string p0, "launcher_exception_icon_lost_detect_max_count"

    return-object p0
.end method

.method public isAvailable(Lcom/android/launcher/Launcher;Z)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "LauncherExceptionHandler"

    if-nez p1, :cond_c

    const-string/jumbo p0, "startDetect return, launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo p0, "startDetect return, isNotPaused"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_19
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo p0, "startDetect return, isWorkspaceNotInitialized"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2a
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_45

    const-string/jumbo p0, "startDetect return, isAllAppContainerNotInitialized"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_45
    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLayoutRestore()Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo p0, "startDetect return, isBRLayoutRestore"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_52
    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isCloudRestore()Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo p0, "startDetect return, isBRCloudRestore"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5f
    sget-object v2, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isAppRestoring()Z

    move-result v3

    if-eqz v3, :cond_74

    const-string/jumbo p0, "startDetect return, isBRAppRestoring"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_74
    invoke-static {}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->isRestoreGuarding()Z

    move-result v3

    if-eqz v3, :cond_81

    const-string/jumbo p0, "startDetect return, isBRRestoreGuarding"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_81
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v3

    if-eqz v3, :cond_8e

    const-string/jumbo p0, "startDetect return, isWorkspaceLoading"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_8e
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/OplusLauncherModel;->isLoaderTaskRunning()Z

    move-result v3

    if-eqz v3, :cond_9f

    const-string/jumbo p0, "startDetect return, isLoaderTaskRunning"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9f
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_b0

    const-string/jumbo p0, "startDetect return, isModelNotLoaded"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b0
    invoke-super {p0, p1, p2}, Lcom/android/exceptionmonitor/BaseDetector;->isAvailable(Lcom/android/launcher/Launcher;Z)Z

    move-result p0

    return p0
.end method

.method public startDetect(Lcom/android/launcher/Launcher;)Z
    .registers 2

    invoke-static {}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->detectLostAppsAndForceReload()Z

    move-result p0

    return p0
.end method
