.class public Lcom/android/launcher3/LauncherModel;
.super Landroid/content/pm/LauncherApps$Callback;
.source ""

# interfaces
.implements Lcom/android/launcher3/pm/InstallSessionTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherModel$ModelUpdateTask;,
        Lcom/android/launcher3/LauncherModel$CallbackTask;,
        Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    }
.end annotation


# static fields
.field private static final DEBUG_RECEIVER:Z = false

.field public static final TAG:Ljava/lang/String; = "Launcher.Model"


# instance fields
.field public final mApp:Lcom/android/launcher3/LauncherAppState;

.field public final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field public final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCallbacksList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataValidationCheck:Ljava/lang/Runnable;

.field public mIsLoaderTaskRunning:Z

.field private mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

.field public final mLock:Ljava/lang/Object;

.field private final mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

.field private mModelDestroyed:Z

.field public mModelLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Z)V
    .registers 8

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDestroyed:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    new-instance v1, Lcom/android/launcher3/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherModel$1;-><init>(Lcom/android/launcher3/LauncherModel;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mDataValidationCheck:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    new-instance v1, Lcom/android/launcher3/model/OplusAllAppsList;

    invoke-direct {v1, p3, p4}, Lcom/android/launcher3/model/OplusAllAppsList;-><init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-static {p1, p2, v1, v0, p5}, Lcom/android/launcher3/model/ModelDelegate;->newInstance(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Z)Lcom/android/launcher3/model/ModelDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->lambda$updateAndBindWorkspaceItem$2(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/ModelDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/LoaderTask;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/model/LoaderTask;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    return-object p1
.end method

.method public static synthetic b(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->lambda$addCallbacks$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->lambda$onUpateNecessaryStateAfterPackagesRemoved$3(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/LauncherModel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->lambda$initDownloadState$4()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/LauncherModel;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel;->lambda$loadAsync$1(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private initDownloadState()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/s1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/s1;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$addCallbacks$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 1

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->notifyObserversForLauncherReady(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private synthetic lambda$initDownloadState$4()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadApps()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_33

    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/download/OplusPackageInstallInfo;

    if-eqz v0, :cond_33

    const-string v1, "Launcher.Model"

    const-string v2, "init download state"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v0, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    :cond_33
    :goto_33
    return-void
.end method

.method private synthetic lambda$loadAsync$1(Ljava/util/function/Consumer;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onUpateNecessaryStateAfterPackagesRemoved$3(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/OplusLauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->clearBadgeNumberForPackageUser(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;Z)V

    :cond_2f
    return-void
.end method

.method private synthetic lambda$updateAndBindWorkspaceItem$2(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    return-object p1
.end method

.method public static loadWorkspaceScreensDb(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;
    .registers 3

    sget-object v0, Lcom/android/launcher/WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "screenRank"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/OplusLauncherDbUtils;->getScreenIdsFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public static removeCallback(Ljava/lang/Runnable;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Launcher.Model"

    const-string/jumbo v2, "removeTask."

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1b
    return-void
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_10

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    :cond_10
    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_17
    return-void
.end method

.method public static runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLoader([Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z
    .registers 13

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v2, :cond_25

    move v2, v3

    goto :goto_26

    :cond_25
    move v2, v4

    :goto_26
    if-nez v1, :cond_30

    if-eqz v2, :cond_30

    array-length v1, p1

    if-nez v1, :cond_2e

    goto :goto_30

    :cond_2e
    move v1, v4

    goto :goto_31

    :cond_30
    :goto_30
    move v1, v3

    :goto_31
    if-eqz v1, :cond_37

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p1

    :cond_37
    array-length v5, p1

    if-lez v5, :cond_130

    array-length v5, p1

    move v6, v4

    move v7, v6

    :goto_3d
    if-ge v6, v5, :cond_66

    aget-object v8, p1, v6

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v9

    if-eqz v9, :cond_4c

    instance-of v9, v8, Lcom/android/launcher/Launcher;

    if-eqz v9, :cond_4c

    move v7, v3

    :cond_4c
    instance-of v9, v8, Lcom/android/launcher/Launcher;

    if-eqz v9, :cond_56

    move-object v9, v8

    check-cast v9, Lcom/android/launcher/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher/Launcher;->cleanFancyIconAndEngine()V

    :cond_56
    sget-object v9, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/a3;

    invoke-direct {v10, v8}, Lcom/android/launcher3/a3;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_66
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startLoader,hasLauncherCallback:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/model/LoaderStateHelper;->setReadyLayoutLoad()V

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v6, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v8, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-static {v5, v6, v8, v4, p1}, Lcom/android/launcher3/model/OplusLoaderFactory;->getLoaderResults(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/LoaderResults;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startLoader: loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isRunning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", page = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", bindDirectly: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_cb

    const-string v6, "Launcher.Model"

    new-instance v8, Ljava/lang/Throwable;

    const-string v9, "Launcher.Model"

    invoke-direct {v8, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d0

    :cond_cb
    const-string v6, "Launcher.Model"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d0
    if-eqz v2, :cond_11a

    if-eqz v7, :cond_d9

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyItemCellXIfNecessary(Lcom/android/launcher3/model/BgDataModel;)V

    :cond_d9
    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/BaseLoaderResults;->bindWorkspace(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/BaseLoaderResults;->bindAllApps()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    instance-of v1, p1, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    if-eqz v1, :cond_10d

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    if-nez v1, :cond_107

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->createVirtualFolder()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    :cond_107
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindVirtualFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_10d
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->initDownloadState()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderResults;->isOrderedScreenIdsEmpty()Z

    move-result p0

    if-eqz p0, :cond_118

    monitor-exit v0

    return v4

    :cond_118
    monitor-exit v0

    return v3

    :cond_11a
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-static {v1, v2, v3, v5, p1}, Lcom/android/launcher3/model/OplusLoaderFactory;->getLoaderTask(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)Lcom/android/launcher3/model/LoaderTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_130
    monitor-exit v0

    return v4

    :catchall_132
    move-exception p0

    monitor-exit v0
    :try_end_134
    .catchall {:try_start_15 .. :try_end_134} :catchall_132

    throw p0
.end method

.method public static updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V
    .registers 6

    const-string/jumbo v0, "updateWorkspaceScreenOrder begin : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/launcher/WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    const/4 v2, 0x0

    :goto_30
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    if-ltz v3, :cond_3f

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_42
    new-instance p1, Lcom/android/launcher3/LauncherModel$8;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/launcher3/LauncherModel$8;-><init>(Landroid/net/Uri;Lcom/android/launcher3/util/IntArray;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addAndBindAddedWorkspaceItems(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->preAddApps()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, -0x1

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->getPreferSecondScreen()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    new-instance v1, Lcom/android/launcher3/model/OplusAddWorkspaceItemsTask;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/model/OplusAddWorkspaceItemsTask;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public addAndBindAddedWorkspaceItems(Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->preAddApps()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    new-instance v0, Lcom/android/launcher3/model/OplusAddWorkspaceItemsTask;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/OplusAddWorkspaceItemsTask;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public addCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 6

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_6
    sget-boolean v1, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_35

    const-string v1, "b/200572078"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallbacks pointer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of p0, p1, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_48

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/t1;

    invoke-direct {v1, p1}, Lcom/android/launcher3/t1;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->addCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherModel;->startLoader([Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public batchAndBindAddedWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/LauncherModel$CallbackTask;[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/android/launcher3/LauncherModel$CallbackTask;",
            "[I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->preAddApps()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    new-instance v0, Lcom/android/launcher3/model/BatchAddDrawerIconsTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/model/BatchAddDrawerIconsTask;-><init>(Ljava/util/List;Lcom/android/launcher3/LauncherModel$CallbackTask;[I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/LauncherModel$1;)V

    return-object v0
.end method

.method public destroy()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDestroyed:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/r0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/r0;-><init>(Lcom/android/launcher3/model/ModelDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    array-length v0, p4

    if-lez v0, :cond_6a

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "All apps list: size="

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    const-string v2, "   title=\""

    invoke-static {p1, v2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" bitmapIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v3, v3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e

    :cond_67
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_6a
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/model/ModelDelegate;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/BgDataModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    move-object v1, p1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/launcher3/LauncherModel$ModelUpdateTask;->init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;Ljava/util/concurrent/Executor;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public forceReload()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    :cond_13
    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getBgAllAppsList()Lcom/android/launcher3/model/OplusAllAppsList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    check-cast p0, Lcom/android/launcher3/model/OplusAllAppsList;

    return-object p0
.end method

.method public getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getLauncher()Lcom/android/launcher/Launcher;
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_11

    check-cast v2, Lcom/android/launcher/Launcher;

    goto :goto_15

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return-object v2
.end method

.method public getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    return-object p0
.end method

.method public getSuperPowerSaveModeLauncher()Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    if-eqz v3, :cond_11

    check-cast v2, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    goto :goto_15

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return-object v2
.end method

.method public getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;
    .registers 12
    .param p3  # Lcom/android/launcher3/model/BgDataModel$Callbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v7, Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object v0, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/ModelWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-object v7
.end method

.method public hasCallbacks()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isModelLoaded()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    if-nez v1, :cond_11

    iget-boolean p0, p0, Lcom/android/launcher3/LauncherModel;->mModelDestroyed:Z

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public loadAsync(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/BgDataModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v1, v0, p2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v1, Lcom/android/launcher3/model/ShortcutsChangedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/android/launcher3/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_26
    return-void
.end method

.method public onBroadcastIntent(Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Launcher.Model"

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    iget-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2d

    const-string v0, "development_mode_flag"

    invoke-static {p1, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDevelopersOptionsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eq v1, v3, :cond_2d

    invoke-static {p1, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo p0, "onBroadcastIntent: Not need to reload because development mode change."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto/16 :goto_b3

    :cond_32
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    const-string v6, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    if-nez v4, :cond_5e

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_5e

    :cond_4b
    const-string p1, "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b3

    new-instance p1, Lcom/android/launcher3/model/ReloadStringCacheTask;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-direct {p1, v0}, Lcom/android/launcher3/model/ReloadStringCacheTask;-><init>(Lcom/android/launcher3/model/ModelDelegate;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_b3

    :cond_5e
    :goto_5e
    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_b3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    :cond_74
    new-instance v1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v4, 0x7

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v1, v4, p1, v3}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_7f
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    :cond_8b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User PROFILE state change: user:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",action:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/model/UserLockStateChangedTask;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/model/UserLockStateChangedTask;-><init>(Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public onInstallSessionCreated(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/LauncherModel$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$7;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onInstallSessionCreated(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/launcher3/LauncherModel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$2;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/pm/PackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_10
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, p2, v1, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;Z[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public varargs onPackageChanged(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "onPackageChanged pkgs = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .registers 5

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;F)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_c
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    sget-object v0, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GAME_CENTER:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GAMES_HELP:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_10
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->setHideGameIconModeInSetting(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset hide_game_icon_mode_flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getHideGameIconModeInSetting(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameAccelerationBoxHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    sget-object v0, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GLOBAL_SEARCH:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->setShowDialogAuthorizeState(Landroid/content/Context;I)V

    :cond_4e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onUpateNecessaryStateAfterPackagesRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;-><init>(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 5

    new-instance p3, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p2, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public varargs onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "package removed received "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/predictedapps/PredictedAppManager;->onPackagesRemoved(I[Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 5

    if-nez p3, :cond_b

    new-instance p3, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p2, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_b
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_NEW_INSTALLS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/launcher3/LauncherModel$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/LauncherModel$3;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/ShortcutsChangedTask;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/launcher3/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onUpateNecessaryStateAfterPackagesRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpateNecessaryStateAfterPackagesRemoved pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/c1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/c1;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_3d
    if-ge v1, v0, :cond_47

    aget-object v2, p0, v1

    invoke-interface {v2, p1, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->notifyUninstallEndAction(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_47
    return-void
.end method

.method public onUpdateSessionDisplay(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->updateSessionCache(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    iget-object p1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onWidgetLabelsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/LauncherModel$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$4;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onWorkspaceUiChanged()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/r1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/r1;-><init>(Lcom/android/launcher3/model/ModelDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rebindCallbacks()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    :cond_9
    return-void
.end method

.method public refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 3
    .param p1  # Lcom/android/launcher3/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/android/launcher3/LauncherModel$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$6;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-eqz p1, :cond_20

    monitor-exit v0

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public removeCallbacksOnly(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public resetLoadedFlag()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public setPackageState(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;-><init>(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public startLoader()Z
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherModel;->startLoader([Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    move-result p0

    return p0
.end method

.method public stopLoader()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    const-string p0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopLoader oldTask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderTask;->stopLocked()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_27
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public updateAndBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/w0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/w0;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/LauncherModel$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$5;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/function/Supplier;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public validateModelDataOnResume()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mDataValidationCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mDataValidationCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method
