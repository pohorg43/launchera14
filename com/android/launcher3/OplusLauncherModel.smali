.class public Lcom/android/launcher3/OplusLauncherModel;
.super Lcom/android/launcher3/LauncherModel;
.source ""

# interfaces
.implements Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;


# static fields
.field public static final ACTION_COTA_MOUNT_COMPLETED:Ljava/lang/String; = "oplus.intent.action.COTA_MOUNT_COMPLETED"

.field private static final CLEAR_PACKAGE_INSTALL_REASON_DELAY:I = 0x493e0

.field private static final LOG_USER:Ljava/lang/String; = " , user = "

.field private static final MAIN_THREAD_TIME_OUT_SECOND:I = 0x4

.field private static final MIN_QUERY_USER_UNLOCK_DELAY:J = 0x3e8L

.field private static final QUERY_TIMES_LIMIT:J = 0x7530L

.field private static final ROM_UPDATE_CONFIG_LIST:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field public static final ROM_UPDATE_CONFIG_SUCCESS:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field public static final SPLITSCREEN_RUSFILE_CHANGED:Ljava/lang/String; = "android.intent.action.RUS_FILE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "OplusLauncherModel"

.field public static final UXDESIGN_ACTION_ICON_LAUNCH:Ljava/lang/String; = "com.oplus.uxdesign.action.ICON_LAUNCH"

.field public static final UXDESIGN_ACTION_ICON_UPDATED:Ljava/lang/String; = "com.oplus.uxdesign.action.ICON_UPDATED"

.field public static final UXDESIGN_PKG_NAME:Ljava/lang/String; = "com.oplus.uxdesign"

.field private static final WORK_THREAD_TIME_OUT_SECOND:I = 0x14


# instance fields
.field private mIconLaunchServiceIntent:Landroid/content/Intent;

.field private mIsAppRestoring:Z

.field private mIsCloudRecoveryStarted:Z

.field private mIsPowerSaveMode:Ljava/lang/Boolean;

.field private mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

.field private final mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryDelay:J

.field private mQueryTimes:J

.field private final mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/LauncherModel;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Z)V

    const-wide/16 p1, 0xfa0

    iput-wide p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mQueryDelay:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mQueryTimes:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsAppRestoring:Z

    iput-boolean p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsCloudRecoveryStarted:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsPowerSaveMode:Ljava/lang/Boolean;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    instance-of p1, p4, Lcom/android/launcher3/OplusAppFilter;

    if-eqz p1, :cond_25

    check-cast p4, Lcom/android/launcher3/OplusAppFilter;

    invoke-virtual {p4}, Lcom/android/launcher3/OplusAppFilter;->init()V

    :cond_25
    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->getInstance()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher/NewUpdatedAppsManager;->setCallback(Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;)V

    new-instance p1, Lcom/android/launcher3/util/LooperExecutor;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/OplusLauncherModel;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mQueryTimes:J

    return-wide v0
.end method

.method public static synthetic access$014(Lcom/android/launcher3/OplusLauncherModel;J)J
    .registers 5

    iget-wide v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mQueryTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mQueryTimes:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/OplusLauncherModel;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mQueryDelay:J

    return-wide v0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/OplusLauncherModel;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mQueryDelay:J

    return-wide p1
.end method

.method private addPackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;I)V
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3b

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_3b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addPackageInstallReason key:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", left key size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static checkItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    new-instance v2, Lcom/android/launcher/badge/c;

    invoke-direct {v2, v1, p0, v0}, Lcom/android/launcher/badge/c;-><init>(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .registers 8

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_23

    const-string v0, "Checking item: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/117332845"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const-string v1, "OplusLauncherModel"

    if-eqz v0, :cond_52

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_52

    :cond_49
    const-string p0, "Taskbar"

    const-string/jumbo p1, "no need check subscribe and expand item"

    invoke-static {p0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    if-eqz p0, :cond_fd

    if-eq p1, p0, :cond_fd

    instance-of v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_c3

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_c3

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c3

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c3

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    iget-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_c3

    iget-object v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_c3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v3, v4, :cond_c3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v3, v4, :cond_c3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v3, v4, :cond_c3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v3, v4, :cond_c3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v3, v4, :cond_c3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne v3, v4, :cond_c3

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v3, v4, :cond_c3

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v0, v2, :cond_c3

    return-void

    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", modelItem: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkItemInfoLocked Failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_fd
    return-void
.end method

.method private checkMultiAppUnlock(Landroid/content/Context;I)V
    .registers 4

    if-eqz p2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/common/multiapp/MultiAppManager;->getAddedMultiApp()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2a

    const-string p2, "OplusLauncherModel"

    const-string v0, "checkMultiAppUnlock: has added multi-App"

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    new-instance p2, Lcom/android/launcher3/OplusLauncherModel$3;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/OplusLauncherModel$3;-><init>(Lcom/android/launcher3/OplusLauncherModel;Landroid/os/UserManager;)V

    iget-wide p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mQueryDelay:J

    invoke-static {p2, p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_2a
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/OplusLauncherModel;ILjava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->lambda$findScreenIndexForCard$6(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->lambda$checkItemInfo$13(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private getPackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 4

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private getTimeOutSeconds()I
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-eqz p0, :cond_11

    const/4 p0, 0x4

    return p0

    :cond_11
    const/16 p0, 0x14

    return p0
.end method

.method public static synthetic h(Lcom/android/launcher3/OplusLauncherModel;I)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->lambda$getScreenIndexById$0(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/launcher3/OplusLauncherModel;)Lcom/android/launcher3/model/BgDataModel;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherModel;->lambda$cloneBgDataModelInWorkHandler$7()Lcom/android/launcher3/model/BgDataModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->lambda$updateRusConfigListFromRus$10(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->lambda$findScreenIndexForWidget$4(Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->lambda$findWidgetInfoList$3(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$checkItemInfo$13(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private synthetic lambda$cloneBgDataModelInWorkHandler$7()Lcom/android/launcher3/model/BgDataModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_21
    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3b

    :cond_4f
    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_64

    :cond_78
    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->pinnedShortcutCounts:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget p0, p0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput p0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    return-object v0
.end method

.method private synthetic lambda$findScreenIndexForCard$6(ILjava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v2, p1, :cond_8

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_8

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_2c
    return-void
.end method

.method private synthetic lambda$findScreenIndexForWidget$4(Landroid/content/ComponentName;)Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    iget p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$findScreenIndexForWidget$5(Landroid/content/ComponentName;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_8

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_30
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0, p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p0

    if-nez p0, :cond_5a

    const/4 p0, 0x1

    goto :goto_5b

    :cond_5a
    const/4 p0, 0x0

    :goto_5b
    if-eqz p0, :cond_62

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_62
    return-void
.end method

.method private synthetic lambda$findWidgetInfoInWorkHandler$2(Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$findWidgetInfoList$3(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method private synthetic lambda$getScreenIndexById$0(I)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isShortcutExist$1(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v0, v0, Lcom/android/launcher/model/BgDataModelHelper;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/MutableInt;

    if-eqz p0, :cond_24

    iget p0, p0, Landroid/util/MutableInt;->value:I

    if-lez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$isShortcutExist$14(Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->getShortcutIdIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    move v1, v2

    :cond_2d
    return v1
.end method

.method private synthetic lambda$notifyUxdesignNewAppAdded$12(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_6c

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_86

    :try_start_12
    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIconLaunchServiceIntent:Landroid/content/Intent;

    if-nez v1, :cond_28

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oplus.uxdesign.action.ICON_LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oplus.uxdesign"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/common/util/PackageUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIconLaunchServiceIntent:Landroid/content/Intent;

    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_69

    :try_start_29
    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIconLaunchServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4f

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mIconLaunchServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string p0, "OplusLauncherModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUxdesignNewAppAdded. Start uxdesignService success. packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    :cond_4f
    const-string p1, "OplusLauncherModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUxdesignNewAppAdded. mIconLaunchServiceIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mIconLaunchServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_68} :catch_86

    goto :goto_8f

    :catchall_69
    move-exception p1

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw p1

    :cond_6c
    :goto_6c
    const-string p1, "OplusLauncherModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUxdesignNewAppAdded. mApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_85} :catch_86

    return-void

    :catch_86
    move-exception p0

    const-string p1, "OplusLauncherModel"

    const-string/jumbo v0, "notifyUxdesignNewAppAdded. e = "

    invoke-static {v0, p0, p1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_8f
    return-void
.end method

.method private static synthetic lambda$onBroadcastIntent$8(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->rePinShortcutForXmlParse(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$removePackagesInstallReasonDelay$9(Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/OplusLauncherModel;->removePackageInstallReason(Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method private static synthetic lambda$updateHideTaskbarAppListFromRus$11(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->loadHideTaskbarNewestList(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$updateRusConfigListFromRus$10(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/android/common/rus/ExtraAppCategoryManager;->getInstance()Lcom/android/common/rus/ExtraAppCategoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/rus/ExtraAppCategoryManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/common/rus/ExtraAppCategoryManager;->getInstance()Lcom/android/common/rus/ExtraAppCategoryManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    goto/16 :goto_a1

    :cond_17
    invoke-static {}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->getInstance()Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->getInstance()Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    goto/16 :goto_a1

    :cond_2e
    invoke-static {}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->getInstance()Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->getInstance()Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    goto :goto_a1

    :cond_44
    sget-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v0, p2}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    goto :goto_a1

    :cond_54
    invoke-static {}, Lcom/android/common/rus/LauncherCommonConfigManager;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/rus/LauncherCommonConfigManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/android/common/rus/LauncherCommonConfigManager;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    goto :goto_a1

    :cond_6a
    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    goto :goto_a1

    :cond_80
    const-string v0, "launcher_app_list_for_hide_taskbar_view_local"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-direct {p0, p2}, Lcom/android/launcher3/OplusLauncherModel;->updateHideTaskbarAppListFromRus(Landroid/content/Context;)V

    goto :goto_a1

    :cond_8c
    invoke-static {}, Lcom/android/launcher3/widget/WidgetControlConfigManager;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetControlConfigManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a1

    invoke-static {}, Lcom/android/launcher3/widget/WidgetControlConfigManager;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    :cond_a1
    :goto_a1
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->lambda$isShortcutExist$1(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/android/launcher3/OplusLauncherModel;Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->lambda$removePackagesInstallReasonDelay$9(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private notifyUxdesignNewAppAdded(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic o(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusLauncherModel;->lambda$updateHideTaskbarAppListFromRus$11(Landroid/content/Context;)V

    return-void
.end method

.method private varargs onAppIconUpdated([Ljava/lang/String;)V
    .registers 11

    const-string/jumbo v0, "onAppIconUpdated. packageName = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v2

    array-length v3, p1

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_a6

    aget-object v5, p1, v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_86

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_42

    goto :goto_86

    :cond_42
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    :try_start_56
    invoke-static {v0, v6}, Lcom/oplus/compat/content/pm/PackageManagerNative;->clearCachedIconForActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    :try_end_59
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_70

    :catch_5a
    move-exception v7

    const-string/jumbo v8, "onAppIconUpdated error, "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAppIconUpdated. clearCachedIconForActivity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_86
    :goto_86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAppIconUpdated. Has no launcher activity infos. pkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", matches = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_a6
    const/4 v0, 0x2

    new-instance v1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method private onGreenPointAppsUpdate(Ljava/util/ArrayList;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5b

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, p2, v1, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_27
    array-length v2, p1

    if-ge v1, v2, :cond_3e

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5a

    new-instance p1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    sget-object v1, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, p2, v1, v0}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_5a
    return-void

    :cond_5b
    :goto_5b
    const-string p0, "OplusLauncherModel"

    const-string/jumbo p1, "onGreenPointAppsUpdate pkgNames is invalid "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onMultiAppPackageAdded(Ljava/lang/String;Z)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMultiAppPackageAdded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->enableAndResetCache()V

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    const/4 v1, 0x1

    if-eqz p2, :cond_37

    const/4 p2, 0x2

    goto :goto_40

    :cond_37
    new-instance p2, Lcom/android/launcher3/OplusLauncherModel$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/OplusLauncherModel$1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    move p2, v1

    :goto_40
    new-instance v2, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-direct {v2, p2, v0, v1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method private onMultiAppPackageRemoved(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->enableAndResetCache()V

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    new-instance v1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x3

    invoke-direct {v1, v3, v0, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    new-instance v0, Lcom/android/launcher3/OplusLauncherModel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/OplusLauncherModel$2;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onMultiAppPackageRenamed(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->updateAppForSort(Ljava/lang/String;)V

    :cond_21
    new-instance v1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public static synthetic p(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusLauncherModel;->lambda$onBroadcastIntent$8(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->lambda$isShortcutExist$14(Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->lambda$findScreenIndexForWidget$5(Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removePackageInstallReason(Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_4b

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removePackageInstallReason key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", left key size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", left key:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->lambda$notifyUxdesignNewAppAdded$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->lambda$findWidgetInfoInWorkHandler$2(Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method private updateHideTaskbarAppListFromRus(Landroid/content/Context;)V
    .registers 3

    const-string p0, "OplusLauncherModel"

    const-string v0, "HideTaskbarAppList  updateHideTaskbarAppListFromRus"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/r1;

    invoke-direct {p0, p1}, Lcom/android/launcher3/r1;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateRusConfigListFromRus(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/c1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/c1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLauncherFinishBindFlag(Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setFinishedUpdateExpandFlag(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->setSwitchChangedDuringIdpNotMatchFlag(Z)V

    const-string v0, "Hotseat_expand"

    const-string v1, "beginLoader setEnableUpdateExpandFlag:false"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    move-result-object p0

    return-object p0
.end method

.method public cloneBgDataModelInWorkHandler()Lcom/android/launcher3/model/BgDataModel;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher3/h1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/h1;-><init>(Lcom/android/launcher3/OplusLauncherModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_b
    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherModel;->getTimeOutSeconds()I

    move-result p0

    int-to-long v1, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/BgDataModel;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    const-string v0, "cloneBgDataModelInWorkHandler, exception = "

    const-string v1, "OplusLauncherModel"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/model/AllAppsList;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordBgDataGridData(Lcom/android/launcher3/model/BgDataModel;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public findScreenIndexForCard(ILjava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher/badge/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher3/OplusLauncherModel;ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public findScreenIndexForWidget(Landroid/content/ComponentName;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/launcher3/f1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/android/launcher3/f1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :try_start_10
    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherModel;->getTimeOutSeconds()I

    move-result p0

    int-to-long v2, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findScreenIndexForWidget, exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", provider = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public findScreenIndexForWidget(Landroid/content/ComponentName;Ljava/lang/Runnable;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher3/c1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/c1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public findWidgetInfoInWorkHandler(Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/launcher/f;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/f;-><init>(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :try_start_f
    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherModel;->getTimeOutSeconds()I

    move-result p0

    int-to-long v2, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findWidgetInfoInWorkHandler, exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", provider = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public findWidgetInfoList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/launcher3/f1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/launcher3/f1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :try_start_14
    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherModel;->getTimeOutSeconds()I

    move-result p0

    int-to-long v2, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findWidgetInfoList, exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", provider = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIsPowerSaveModeState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsPowerSaveMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsPowerSaveMode:Ljava/lang/Boolean;

    :cond_1d
    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsPowerSaveMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getNewUpdatedAppsManager()Lcom/android/launcher/NewUpdatedAppsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    return-object p0
.end method

.method public getScreenIndexById(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher3/i1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/i1;-><init>(Lcom/android/launcher3/OplusLauncherModel;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :try_start_b
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScreenIndexById, exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", screenId = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;
    .registers 4
    .param p3  # Lcom/android/launcher3/model/BgDataModel$Callbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    return-object p0
.end method

.method public getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;
    .registers 12
    .param p3  # Lcom/android/launcher3/model/BgDataModel$Callbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v7, Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object v0, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/OplusModelWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-object v7
.end method

.method public isCloudRecoveryStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsCloudRecoveryStarted:Z

    return p0
.end method

.method public isLoaderTaskRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean p0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isShortcutExist(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher3/g1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/g1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_b
    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherModel;->getTimeOutSeconds()I

    move-result p0

    int-to-long v1, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShortcutExist, exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", itemInfo = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isShortcutExist(Lcom/android/launcher3/shortcuts/ShortcutKey;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/badge/h;

    invoke-direct {v0, p1}, Lcom/android/launcher/badge/h;-><init>(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isShortcutExistFromItemsIdMap(Lcom/android/launcher3/shortcuts/ShortcutKey;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "OplusLauncherModel"

    if-eqz v1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_c

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/android/launcher3/util/ShortcutUtil;->getShortcutIdIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    move v1, v4

    goto :goto_48

    :cond_47
    move v1, v0

    :goto_48
    if-eqz v1, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isShortcutExistFromItemsIdMap = true, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShortcutExistFromItemsIdMap = false, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onAddGreenPointApps(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsAppRestoring:Z

    if-nez v0, :cond_9

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusLauncherModel;->onGreenPointAppsUpdate(Ljava/util/ArrayList;I)V

    :cond_9
    return-void
.end method

.method public onAppLabelRenamed(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->updateAppForSort(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public onBroadcastIntent(Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive, action = "

    const-string v2, "OplusLauncherModel"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherModel;->onBroadcastIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "oplus.intent.action.MULTI_APP_RENAME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string/jumbo v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->onMultiAppPackageRenamed(Ljava/lang/String;)V

    goto/16 :goto_1c4

    :cond_2a
    const-string/jumbo v3, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4e

    const-string v0, "ROM_UPDATE_CONFIG_LIST"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1c4

    :goto_3c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1c4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/OplusLauncherModel;->updateRusConfigListFromRus(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_4e
    const-string v3, "com.oplus.notificationmanager.action.UPDATE_NOTIFICATION_INFO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-static {v1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->onNotificationCenterSettingChange(Landroid/content/Intent;)V

    goto/16 :goto_1c4

    :cond_5f
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlocked user = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->removeLoadingView()V

    goto :goto_95

    :cond_90
    const-string v0, "ACTION_USER_UNLOCKED, launcher null."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_95
    if-eqz p1, :cond_a1

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/launcher3/s1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/s1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_a1
    invoke-static {v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->recordUnlockTime()V

    new-instance v0, Lcom/android/launcher3/model/OplusUserUnlockedTask;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, v2}, Lcom/android/launcher3/model/OplusUserUnlockedTask;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/OplusLauncherModel;->checkMultiAppUnlock(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocked user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/card/CardPermissionManager;->syncCardPermissionState(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1c4

    :cond_d2
    const-string v3, "com.oplus.backuprestore.restore_app_start"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsAppRestoring:Z

    goto/16 :goto_1c4

    :cond_df
    const-string v3, "com.oplus.backuprestore.restore_app_end"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    iput-boolean v4, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsAppRestoring:Z

    goto/16 :goto_1c4

    :cond_eb
    const-string v3, "com.oplus.uxdesign.action.ICON_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive. packages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1c4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusLauncherModel;->onAppIconUpdated([Ljava/lang/String;)V

    goto/16 :goto_1c4

    :cond_124
    const-string v3, "android.app.action.PROVISIONING_SUCCESSFUL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ac

    const-string v3, "android.app.action.MANAGED_PROFILE_PROVISIONED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_136

    goto/16 :goto_1ac

    :cond_136
    const-string/jumbo v3, "oplus.intent.action.COTA_MOUNT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    invoke-static {v1}, Lcom/android/launcher/DefaultWorkspaceHelper;->setCotaCustomizer(Landroid/content/Context;)V

    goto/16 :goto_1c4

    :cond_144
    const-string v3, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_1c4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlocked profile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/model/OplusUserUnlockedTask;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_1c4

    :cond_174
    const-string p1, "android.intent.action.RUS_FILE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18b

    const-string p0, "SPLITSCREEN_RUSFILE_CHANGED broadcastreceiver"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getCanSplitMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto :goto_1c4

    :cond_18b
    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c4

    const-string p1, "ACTION_POWER_SAVE_MODE_CHANGED"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "power"

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsPowerSaveMode:Ljava/lang/Boolean;

    goto :goto_1c4

    :cond_1ac
    :goto_1ac
    const-string/jumbo p0, "profile provision action: "

    invoke-static {p0, v0, v2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0}, Lcom/android/launcher3/pm/UserCache;->enableAndResetCache()V

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->onManagedStateChange()V

    :cond_1c4
    :goto_1c4
    return-void
.end method

.method public onMarketRecommendDataAdd(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1, p1}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;-><init>(ILcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onMarketRecommendDataUpdate()V
    .registers 6

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->isRecommendEnable()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;-><init>(ILcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_2b

    :cond_1d
    new-instance v0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;-><init>(ILcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onMarketUninstall()V
    .registers 6

    new-instance v0, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;-><init>(ILcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onNewBannedAppsStarted([Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OplusLauncherModel"

    const-string/jumbo v1, "onNewBannedAppsStarted"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_56

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto :goto_56

    :cond_f
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    new-instance v2, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_35
    if-eqz p1, :cond_56

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_56

    const/4 v0, 0x3

    new-instance v1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageAdded, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->packageFilterForExtraLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    :cond_2a
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserHandle(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->onMultiAppPackageAdded(Ljava/lang/String;Z)V

    goto :goto_51

    :cond_39
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->getPackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/OplusLauncherModel;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;I)V

    const-string/jumbo v0, "onPackageAdded"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/OplusLauncherModel;->removePackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-object p2, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {p2}, Lcom/android/common/config/FeatureOption;->isSupportIconStyle()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->notifyUxdesignNewAppAdded(Ljava/lang/String;)V

    :cond_51
    :goto_51
    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz p0, :cond_5d

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->sendMessage(ILjava/lang/Object;)V

    :cond_5d
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;I)V
    .registers 11

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->packageFilterForExtraLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v2, 0x1

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v4, 0x1

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    move-object v1, v0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;ZI[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageChanged, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->packageFilterForExtraLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    :cond_2a
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserHandle(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->isPackageUninstalling(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_5f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onPackageChanged for multi app package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", it is in uninstalling, so ignore this callback!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5f
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onPackageChanged for multi app not added: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7f
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherModel;->onMultiAppPackageAdded(Ljava/lang/String;Z)V

    :cond_83
    return-void
.end method

.method public onPackageInstallStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageInstallStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    iget v0, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    iget-object v0, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    const-string v1, "INSTALL_STATUS_FAILED"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/OplusLauncherModel;->removePackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_35

    :cond_2c
    iget-object v0, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    iget p1, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->installReason:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/OplusLauncherModel;->addPackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;I)V

    :goto_35
    return-void
.end method

.method public onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher/download/DownloadAppsManager;->handleIncrementDownloadChanged(Ljava/lang/String;Landroid/os/UserHandle;F)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "OplusLauncherModel"

    const-string v5, "InstallApp"

    const/4 v6, 0x0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_33

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v6

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "[onPackageLoadingProgressChanged]pkg:%s,user:%s,progress:%f,oplus download"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_46

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p0

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher/download/DownloadAppsManager;->notifyExpansionsDownloadFinish(Ljava/lang/String;Z)V

    :cond_46
    return-void

    :cond_47
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_62

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v6

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "[onPackageLoadingProgressChanged]pkg:%s,user:%s,progress:%f,google download"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageRemoved, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherModel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserHandle(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->onMultiAppPackageRemoved(Ljava/lang/String;)V

    goto :goto_34

    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    :goto_34
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->sendMessage(ILjava/lang/Object;)V

    :cond_40
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->sendRemovePackageBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_51
    const-string/jumbo v0, "onPackageRemoved"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/OplusLauncherModel;->removePackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoveGreenPointApps(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusLauncherModel;->onGreenPointAppsUpdate(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public varargs onUninstallApps(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p1, p2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public preAddWidgetProviderInWorkHandler(Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Z)Lcom/android/launcher/widget/AddWidgetProviderCallableResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launcher is loading, can\'t add any widget on workspace, provider = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1e
    new-instance v7, Lcom/android/launcher/widget/AddWidgetProviderCallable;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/widget/AddWidgetProviderCallable;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Z)V

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mWorkHandleExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherModel;->getTimeOutSeconds()I

    move-result p0

    int-to-long p2, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;

    return-object p0
.end method

.method public removePackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_10

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/OplusLauncherModel;->removePackageInstallReason(Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public removePackagesInstallReasonDelay([Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1e

    aget-object v3, p1, v2

    new-instance v4, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v4, v3, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/c1;

    invoke-direct {p2, p0, v0, p3}, Lcom/android/launcher3/c1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/util/List;Ljava/lang/String;)V

    const-wide/32 v0, 0x493e0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    return-void
.end method

.method public setCloudRecoveryState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusLauncherModel;->mIsCloudRecoveryStarted:Z

    return-void
.end method

.method public startBindHotseatForFoldStateChange([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    if-eqz v1, :cond_18

    array-length v4, p1

    if-nez v4, :cond_16

    goto :goto_18

    :cond_16
    move v4, v3

    goto :goto_19

    :cond_18
    :goto_18
    move v4, v2

    :goto_19
    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p1

    :cond_1f
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-static {v4, v5, p0, v3, p1}, Lcom/android/launcher3/model/OplusLoaderFactory;->getLoaderResults(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/LoaderResults;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string v4, "OplusLauncherModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startBindHotseatForFoldStateChange,bindDirectly:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",loaderResults:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_62

    instance-of p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    if-eqz p1, :cond_62

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->startHotseatBindingForFoldStateChange()V

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p1, v3, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindHotSeatItems(ZZ)V

    check-cast p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->finishBindHotseatForFoldStateChange(Lcom/android/launcher3/util/IntSet;)V

    :cond_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public updatePackageInstallReason(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 6

    iget v0, p1, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    const-string v1, ""

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_15
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object v1, v2

    :cond_1c
    :goto_1c
    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/OplusLauncherModel;->getPackageInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    iput v2, p1, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    :cond_24
    if-nez v0, :cond_2e

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_63

    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePackageInstallReason appInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", oldInstallReason:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pkg:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", left key size:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherModel;->mPackageUserInstallReasonMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    return-void
.end method
