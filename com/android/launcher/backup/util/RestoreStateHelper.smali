.class public final Lcom/android/launcher/backup/util/RestoreStateHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DELAY_RECOVER_TIME:J = 0x3e8L

.field public static final INSTANCE:Lcom/android/launcher/backup/util/RestoreStateHelper;

.field private static mAppRestoreStarted:Z

.field private static mCloudRestoreStarted:Z

.field private static mFinishBindWillEndFromRestore:Z

.field private static mForceReLoadFromRecover:Z

.field private static mForceReLoadFromRestore:Z

.field private static mLayoutRestoreStarted:Z

.field private static mLoadShortcutFromRestore:Z

.field private static mLoaderTaskStarted:Z

.field private static mLoaderTaskWillEndFromRestore:Z

.field private static mRebindFromRecover:Z

.field private static final mRecoverLostTask:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/util/RestoreStateHelper;

    invoke-direct {v0}, Lcom/android/launcher/backup/util/RestoreStateHelper;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->INSTANCE:Lcom/android/launcher/backup/util/RestoreStateHelper;

    sget-object v0, Lw/e;->a:Lw/e;

    sput-object v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask$lambda$0()V

    return-void
.end method

.method public static final isAppRestore()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mAppRestoreStarted:Z

    return v0
.end method

.method public static final isCloudRestore()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mCloudRestoreStarted:Z

    return v0
.end method

.method public static final isLayoutLoadFromRecover()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRecover:Z

    return v0
.end method

.method public static final isLayoutLoadFromRestore()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRestore:Z

    return v0
.end method

.method public static final isLayoutRestore()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLayoutRestoreStarted:Z

    return v0
.end method

.method public static final isLoadShortcutFromRestore()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoadShortcutFromRestore:Z

    return v0
.end method

.method public static final isLoaderTaskWillEndFromRestore()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoaderTaskWillEndFromRestore:Z

    return v0
.end method

.method public static final isRebindFromRecover()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRebindFromRecover:Z

    return v0
.end method

.method private static final mRecoverLostTask$lambda$0()V
    .registers 2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher/backup/util/RestoreStateHelper;->recoverLostView(Landroid/content/Context;)V

    return-void
.end method

.method private static final recoverLostView(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->Companion:Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;

    invoke-virtual {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_11

    sget-object v1, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher/backup/util/RestoreStateHelper;->mFinishBindWillEndFromRestore:Z

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreGuardian recoverLostView mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LayoutRestoreGuardian"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->recoverLostViewLayout(Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->endAppOrLayoutRestore()V

    :cond_41
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mFinishBindWillEndFromRestore:Z

    sget-boolean v1, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRestore:Z

    if-nez v1, :cond_7a

    sget-boolean v1, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRecover:Z

    if-nez v1, :cond_7a

    sget-boolean v1, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRebindFromRecover:Z

    if-nez v1, :cond_7a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_6c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewLostCheck finishBindItem mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherExceptionMonitor"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/exceptionmonitor/LauncherExceptionEvent;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;-><init>(IZZ)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    :cond_7a
    sput-boolean p0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRestore:Z

    sput-boolean p0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRecover:Z

    sput-boolean p0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRebindFromRecover:Z

    return-void
.end method

.method public static final setBeforeLayoutLoadWhenEndRestore(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "restoreDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreDbData()V

    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/backrestore/restore/guardian/LayoutRestoreGuardian;->recoverLostDbLayout(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public static final setBeforeRestoreWhenEndParser(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "restoreDataList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordBackupXmlData(Ljava/util/List;)V

    return-void
.end method

.method public static final setEndAppRestore()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mAppRestoreStarted:Z

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreLogHelper;->onAppRestoreEnd()V

    return-void
.end method

.method public static final setEndCloudRestore()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mCloudRestoreStarted:Z

    return-void
.end method

.method public static final setEndLayoutRestore()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLayoutRestoreStarted:Z

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreLogHelper;->onLayoutRestoreEnd()V

    return-void
.end method

.method public static final setEndOrCancelLayoutLoad(Lcom/android/launcher3/model/BgDataModel;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bgDataModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoaderTaskWillEndFromRestore:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BRStatistics loaderEndOrCancel mode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BR-Launcher_BRShortStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreBgDataData(Lcom/android/launcher3/model/BgDataModel;)V

    goto :goto_66

    :cond_34
    sget-boolean p0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRecover:Z

    if-nez p0, :cond_66

    sget-boolean p0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRebindFromRecover:Z

    if-nez p0, :cond_66

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_58

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewLostCheck loaderEndOrCancel mode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherExceptionMonitor"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/exceptionmonitor/LauncherExceptionEvent;

    const/4 v1, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;-><init>(IZZ)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    :cond_66
    :goto_66
    sput-boolean v2, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoaderTaskWillEndFromRestore:Z

    sput-boolean v2, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoaderTaskStarted:Z

    sput-boolean v2, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoadShortcutFromRestore:Z

    invoke-static {}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->clearRestoreShortcuts()V

    return-void
.end method

.method public static final setFinishAllAppAdapterBindFromRestore(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "LauncherExceptionMonitor"

    const-string v1, "RestoreGuardian or ViewLostCheck finishAllAppAdapterBind!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    sget-object v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->Companion:Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;

    invoke-virtual {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_33

    sget-object v4, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-ne v1, v2, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    if-eqz v2, :cond_54

    invoke-virtual {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_45

    sget-object v2, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_45
    invoke-virtual {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_54

    sget-object v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_54
    return-void
.end method

.method public static final setFinishWorkspaceBindFromRestore(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "LauncherExceptionMonitor"

    const-string v1, "RestoreGuardian or ViewLostCheck finishWorkspaceBind!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    sget-object v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->Companion:Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;

    invoke-virtual {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_23

    sget-object v2, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_23
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_4e

    sget-object v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e

    :cond_3f
    invoke-virtual {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_4e

    sget-object v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRecoverLostTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static final setStartAppRestore()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mAppRestoreStarted:Z

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreLogHelper;->onAppRestoreStart()V

    return-void
.end method

.method public static final setStartCloudRestore()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mCloudRestoreStarted:Z

    return-void
.end method

.method public static final setStartLayoutLoad()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoaderTaskStarted:Z

    sget-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRestore:Z

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoaderTaskWillEndFromRestore:Z

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mFinishBindWillEndFromRestore:Z

    return-void
.end method

.method public static final setStartLayoutLoadFromRecover()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRecover:Z

    return-void
.end method

.method public static final setStartLayoutLoadFromRestoreWhenApp()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRestore:Z

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoadShortcutFromRestore:Z

    return-void
.end method

.method public static final setStartLayoutLoadFromRestoreWhenLayout()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mForceReLoadFromRestore:Z

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLoadShortcutFromRestore:Z

    return-void
.end method

.method public static final setStartLayoutRestore()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mLayoutRestoreStarted:Z

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreLogHelper;->onLayoutRestoreStart()V

    return-void
.end method

.method public static final setStartRebindFromRecover()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/util/RestoreStateHelper;->mRebindFromRecover:Z

    return-void
.end method
