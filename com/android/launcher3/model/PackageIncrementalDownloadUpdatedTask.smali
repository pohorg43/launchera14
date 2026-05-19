.class public Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mProgress:I

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .registers 8

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mUser:Landroid/os/UserHandle;

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p3

    float-to-double v0, p2

    const-wide v2, 0x3f50624dd2f1a9fcL  # 0.001

    cmpl-double p2, v0, v2

    if-lez p2, :cond_17

    const/high16 p2, 0x42c80000  # 100.0f

    mul-float/2addr p3, p2

    float-to-int p2, p3

    goto :goto_19

    :cond_17
    const/16 p2, 0x64

    :goto_19
    iput p2, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mProgress:I

    iput-object p1, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;Lcom/android/launcher3/pm/PackageInstallInfo;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->lambda$execute$1(Lcom/android/launcher3/pm/PackageInstallInfo;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private static synthetic lambda$execute$0(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method private synthetic lambda$execute$1(Lcom/android/launcher3/pm/PackageInstallInfo;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget p0, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p0, p0, -0x401

    iput p0, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {p3, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->lambda$execute$0(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 8

    new-instance p1, Lcom/android/launcher3/pm/PackageInstallInfo;

    iget-object v0, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mProgress:I

    iget-object v2, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mUser:Landroid/os/UserHandle;

    const/4 v3, 0x2

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/android/launcher3/pm/PackageInstallInfo;-><init>(Ljava/lang/String;IILandroid/os/UserHandle;)V

    monitor-enter p3

    :try_start_d
    invoke-virtual {p3, p1}, Lcom/android/launcher3/model/AllAppsList;->updatePromiseInstallInfo(Lcom/android/launcher3/pm/PackageInstallInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    new-instance v2, Lcom/android/launcher3/model/m;

    invoke-direct {v2, v1}, Lcom/android/launcher3/model/m;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    goto :goto_1b

    :cond_36
    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    monitor-exit p3
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_52

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p2

    :try_start_40
    iget-object v0, p0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v1, Lcom/android/launcher3/r2;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/launcher3/r2;-><init>(Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;Lcom/android/launcher3/pm/PackageInstallInfo;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_4f

    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    return-void

    :catchall_4f
    move-exception p0

    :try_start_50
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0

    :catchall_52
    move-exception p0

    :try_start_53
    monitor-exit p3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method
