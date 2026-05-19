.class public Lcom/android/launcher3/model/OplusPackageUpdatedTask;
.super Lcom/android/launcher3/model/PackageUpdatedTask;
.source ""


# static fields
.field private static final PROGRESS_LEVEL:I = 0x64

.field public static final TAG:Ljava/lang/String; = "OplusPackageUpdatedTask"


# instance fields
.field private mInstallReason:I

.field private mIsTriggerReport:Z


# direct methods
.method public varargs constructor <init>(ILandroid/os/UserHandle;ZI[Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;Z[Ljava/lang/String;)V

    iput p4, p0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->mInstallReason:I

    return-void
.end method

.method public varargs constructor <init>(ILandroid/os/UserHandle;Z[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->mIsTriggerReport:Z

    return-void
.end method

.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->mIsTriggerReport:Z

    return-void
.end method

.method private exitDeleteState()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/model/b1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/launcher3/model/OplusPackageUpdatedTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private filterRemoveAppsWhenUpdate(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_9

    :cond_26
    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v2

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_38
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, p3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed remove info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusPackageUpdatedTask"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4c

    :cond_7d
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    new-instance p1, Lcom/android/launcher3/model/f1;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/model/f1;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_8c
    return-void
.end method

.method private getShouldAddInDrawerModeWhenUpdate(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030055

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, "OplusPackageUpdatedTask"

    if-nez v3, :cond_31

    const-string v2, "getShouldAddInDrawerModeWhenUpdate targetComponent is null"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_31
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.stk"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v5, :cond_47

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVodafoneCustomizer()Z

    move-result v5

    if-nez v5, :cond_4d

    :cond_47
    const-string v2, "getShouldAddInDrawerModeWhenUpdate stk not allowed to add to workspace when update"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    :cond_4d
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_5b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v7, :cond_5f

    iget-object v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    const-string v3, "getShouldAddInDrawerModeWhenUpdate ,find same user and pg ,user = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " component = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_a6

    :cond_a5
    move v3, v0

    :goto_a6
    if-nez v3, :cond_ab

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ab
    :goto_ab
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    :cond_af
    return-object p0
.end method

.method private isInfoUpdated(Landroid/content/Context;Ljava/util/HashSet;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Z)Z"
        }
    .end annotation

    iget-object p0, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    iget-object p1, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    if-eqz p1, :cond_1e

    iput-object p1, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    const/4 p4, 0x1

    :cond_1e
    return p4
.end method

.method private static synthetic lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 4

    const-string/jumbo v0, "removedComponents add : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPackageUpdatedTask"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$execute$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAddedToWorkspace(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$execute$3(Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p14

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->isInfoUpdated(Landroid/content/Context;Ljava/util/HashSet;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z

    move-result v7

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    const-string v9, "OplusPackageUpdatedTask"

    if-eqz v8, :cond_2d0

    move-object/from16 v10, p3

    invoke-interface {v10, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v11

    const/4 v12, 0x3

    if-eqz v11, :cond_50

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "forceKeepShortcuts add: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    move-object/from16 v13, p4

    invoke-virtual {v13, v11}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v11, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v11, v12, :cond_50

    return-void

    :cond_50
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v11

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v11, :cond_1e4

    if-eqz p5, :cond_1e4

    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, v14, :cond_8c

    new-instance v4, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v11, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v4, v2, v11}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    new-array v15, v14, [Ljava/lang/String;

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-virtual {v4, v11, v15}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_80

    goto :goto_af

    :cond_80
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5, v4, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    move v4, v14

    move v7, v4

    goto :goto_b2

    :cond_8c
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "."

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "downloadAppClassName"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v4

    iget-object v11, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v8, v11}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    goto :goto_b2

    :cond_af
    :goto_af
    move v4, v6

    goto :goto_b2

    :cond_b1
    move v4, v14

    :goto_b2
    sget-object v11, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v11}, Lcom/android/common/config/FeatureOption;->isDisableDownloadProgress()Z

    move-result v11

    const-string v15, "Restored shortcut no longer valid "

    if-nez v11, :cond_1a6

    const/high16 v11, 0x40000000  # 2.0f

    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v12

    if-eqz v12, :cond_e2

    if-nez v4, :cond_e2

    iget-object v12, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v12}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v12

    if-eqz v12, :cond_e2

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d6

    goto/16 :goto_287

    :cond_d6
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_288

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void

    :cond_e2
    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v11

    if-eqz v11, :cond_162

    iget-object v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v11}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v11

    if-nez v11, :cond_f8

    iget-object v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v11}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v11

    if-eqz v11, :cond_162

    :cond_f8
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_10c

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_10c

    move v3, v14

    goto :goto_10d

    :cond_10c
    move v3, v6

    :goto_10d
    if-eqz v3, :cond_123

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_117

    goto/16 :goto_287

    :cond_117
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_288

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void

    :cond_123
    const-string v2, ", onlyOneLaunchIcon = "

    if-nez v4, :cond_140

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid package, remove it: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3, v9}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_140
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/ItemInfo;->setToBeInstalledApp()V

    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set state for  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_288

    :cond_162
    if-nez v4, :cond_1a2

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isAutoInstallApp()Z

    move-result v3

    if-eqz v3, :cond_188

    const-string v0, "Target invalid but isAutoInstallApp, updateWorkspaceItemIntent, className: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_288

    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto/16 :goto_287

    :cond_188
    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a2
    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto/16 :goto_287

    :cond_1a6
    if-nez v4, :cond_1c2

    invoke-virtual {v5, v12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    goto/16 :goto_287

    :cond_1b6
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_288

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void

    :cond_1c2
    if-nez v4, :cond_1e0

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e0
    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto/16 :goto_287

    :cond_1e4
    if-eqz p5, :cond_261

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    :try_start_1ee
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    iget-object v3, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v3}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_1f8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ee .. :try_end_1f8} :catch_1f9

    goto :goto_20f

    :catch_1f9
    move-exception v0

    const-string v3, " Unknown component "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_20f
    iget-object v3, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v10, v3}, Lcom/android/launcher3/model/AllAppsList;->findAppInfoByPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_21f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v14, :cond_21f

    move v4, v14

    goto :goto_220

    :cond_21f
    move v4, v6

    :goto_220
    if-eqz v0, :cond_239

    if-eqz v4, :cond_239

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_239

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_239

    move v7, v14

    :cond_239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isTargetValid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", onlyOneStartComponent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v9}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_288

    :cond_261
    if-eqz p5, :cond_288

    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_288

    iget-object v0, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v10, v0}, Lcom/android/launcher3/model/AllAppsList;->findAppInfoByPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_277

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_277

    move v0, v14

    goto :goto_278

    :cond_277
    move v0, v6

    :goto_278
    if-eqz v0, :cond_288

    iget-object v0, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-eqz v0, :cond_281

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->resetMarketRecommendAppInfo()V

    :cond_281
    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_288

    :goto_287
    move v7, v14

    :cond_288
    :goto_288
    if-eqz p5, :cond_2bd

    move-object/from16 v2, p10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2a6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29b

    goto :goto_2a6

    :cond_29b
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v0

    goto :goto_2a8

    :cond_2a6
    :goto_2a6
    const/16 v0, 0x64

    :goto_2a8
    invoke-virtual {v5, v0, v13}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_2b3

    const/16 v2, 0xca

    if-ne v0, v2, :cond_2bd

    :cond_2b3
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v0

    move-object/from16 v2, p11

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    move v7, v14

    :cond_2bd
    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v2

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-eq v2, v0, :cond_2ca

    goto :goto_2cb

    :cond_2ca
    move v14, v6

    :goto_2cb
    invoke-direct {v1, v5, v7}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->setPointAheadIconText(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z

    move-result v7

    goto :goto_2d1

    :cond_2d0
    move v14, v6

    :goto_2d1
    if-nez v7, :cond_2d5

    if-eqz v14, :cond_2d8

    :cond_2d5
    invoke-virtual/range {p13 .. p14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d8
    if-eqz v7, :cond_308

    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_308

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/model/OplusModelWriter;

    if-eqz v2, :cond_303

    iget-boolean v2, v1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->mIsTriggerReport:Z

    if-eqz v2, :cond_2fa

    iput-boolean v6, v1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->mIsTriggerReport:Z

    iget-object v1, v1, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/statistics/LauncherStatistics;->statsAppChangedToInstalled(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_2fa
    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    const-string/jumbo v1, "new cn/states/icon/title need update"

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/model/OplusModelWriter;->updateNonPositionAttrInDatabase(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)V

    goto :goto_308

    :cond_303
    const-string v0, "error in model writer type"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_308
    :goto_308
    return-void
.end method

.method private static synthetic lambda$execute$4(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$exitDeleteState$7()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-static {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private static synthetic lambda$filterRemoveAppsWhenUpdate$5(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppInfosRemoved(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$removeInvalidWidgetIfNeeded$6(Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    if-nez p0, :cond_2c

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWidget(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "removeInvalidWidgetIfNeeded item:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusPackageUpdatedTask"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public static loadTitleAndIconIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_4

    :cond_21
    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/model/OplusPackageUpdatedTask;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$exitDeleteState$7()V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$removeInvalidWidgetIfNeeded$6(Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/model/OplusPackageUpdatedTask;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 15

    invoke-direct/range {p0 .. p14}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$3(Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic r(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public static synthetic s(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$4(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private setPointAheadIconText(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z
    .registers 5

    iget p0, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v0, 0x1

    const/16 v1, 0xf

    if-ne p0, v1, :cond_c

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    :goto_a
    move p2, v0

    goto :goto_13

    :cond_c
    const/16 v1, 0x10

    if-ne p0, v1, :cond_13

    iput-boolean v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    goto :goto_a

    :cond_13
    :goto_13
    return p2
.end method

.method public static synthetic t(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic u(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$filterRemoveAppsWhenUpdate$5(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic v(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 44

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v7

    const-string v1, "OplusPackageUpdatedTask"

    const-string v2, "PackageUpdatedTask: In children mode: "

    const-string v3, ", In loading and binding: "

    invoke-static {v2, v7, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eqz v7, :cond_41

    iget v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v3, v2, :cond_39

    if-ne v3, v1, :cond_41

    :cond_39
    const-string v0, "OplusPackageUpdatedTask"

    const-string v1, "In children mode, don\'t handle OP_ADD or OP_HIDE_CLEAR_CACHE"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v12

    iget-object v10, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    array-length v9, v10

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    new-instance v8, Ljava/util/HashSet;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v2

    goto :goto_65

    :cond_5f
    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v8, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v2

    :goto_65
    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isSupportMultiApp:Z

    if-eqz v3, :cond_79

    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v3}, Lcom/android/launcher3/pm/UserCache;->isSystemUser()Z

    move-result v3

    if-eqz v3, :cond_79

    const/4 v3, 0x1

    goto :goto_7a

    :cond_79
    const/4 v3, 0x0

    :goto_7a
    move/from16 v16, v3

    if-nez v7, :cond_8a

    if-eqz v16, :cond_8a

    sget-object v3, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-static {v8, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    :cond_8a
    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v4}, Lcom/android/launcher3/pm/UserCache;->hasWorkProfile()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-virtual {v3, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v4}, Lcom/android/launcher3/pm/UserCache;->getProfileUserHandler()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    :cond_aa
    move-object v6, v2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v2

    move-object/from16 v17, v4

    const-string v4, "OplusPackageUpdatedTask"

    const-string/jumbo v18, "mOp = "

    move-object/from16 v19, v5

    invoke-static/range {v18 .. v18}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v18, v8

    iget v8, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mUser = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", currUser = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", pkgs = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    move-object/from16 v20, v5

    const/4 v5, 0x2

    packed-switch v4, :pswitch_data_a82

    move-object/from16 v21, v1

    move-object v0, v2

    move-object/from16 v27, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    packed-switch v4, :pswitch_data_a94

    move-object/from16 v1, v21

    :goto_11b
    const/4 v0, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x7

    goto/16 :goto_612

    :pswitch_120  #0x7
    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    invoke-virtual {v3, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v13, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_145

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    goto :goto_14b

    :cond_145
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    :goto_14b
    invoke-virtual {v11, v6, v1}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v0

    invoke-virtual {v11, v5, v0}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->exitDeleteState()V

    const/4 v0, 0x5

    :goto_159
    const/4 v2, 0x4

    const/4 v3, 0x7

    move-object/from16 v27, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    goto/16 :goto_612

    :pswitch_168  #0x5, 0x6
    const/4 v0, 0x5

    if-ne v4, v0, :cond_171

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    goto :goto_176

    :cond_171
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    :goto_176
    invoke-virtual {v11, v6, v1}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    goto :goto_159

    :pswitch_17a  #0x3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_180
    if-ge v3, v9, :cond_199

    aget-object v4, v10, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18f

    aget-object v4, v10, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18f
    aget-object v4, v10, v3

    iget-object v5, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v5}, Lcom/android/launcher3/dot/DotUtils;->removeItemFromNumberBadgeSupportPackageList(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_180

    :cond_199
    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v2, v3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeIconsForPkgs(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    :pswitch_19e  #0x4
    const/4 v2, 0x0

    :goto_19f
    if-ge v2, v9, :cond_255

    if-eqz v7, :cond_1c0

    aget-object v3, v10, v2

    invoke-virtual {v0, v3}, Lcom/android/launcher/model/ChildrenModeManager;->inChildrenModeApps(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c0

    const-string v3, "OplusPackageUpdatedTask"

    const-string v4, "OP_UNAVAILABLE: in children mode apps, skip: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v10, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ed

    :cond_1c0
    aget-object v3, v10, v2

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v4}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v3, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d7

    aget-object v4, v10, v2

    invoke-static {v13, v4}, Lcom/android/launcher/download/DownloadAppUtils;->clearAllDownloadIcons(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1f2

    :cond_1d7
    if-eqz v7, :cond_1f2

    const-string v3, "OplusPackageUpdatedTask"

    const-string v4, "OP_UNAVAILABLE: in children mode, skip: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v10, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1ed
    move-object/from16 v21, v1

    move-object/from16 v22, v6

    goto :goto_24d

    :cond_1f2
    :goto_1f2
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v4

    aget-object v5, v10, v2

    invoke-virtual {v4, v5}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "OplusPackageUpdatedTask"

    const-string v16, "execute: mAllAppsList.removePackage user = "

    move-object/from16 v21, v1

    invoke-static/range {v16 .. v16}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v22, v6

    iget-object v6, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mult = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_24d

    invoke-static {v13}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    aget-object v5, v10, v2

    iget-object v6, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24d

    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v1

    aget-object v5, v10, v2

    invoke-virtual {v1, v5}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    if-eqz v4, :cond_24d

    invoke-static {v13}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    aget-object v4, v10, v2

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v1, v10, v2

    invoke-virtual {v11, v1, v3}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_24d
    :goto_24d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v21

    move-object/from16 v6, v22

    goto/16 :goto_19f

    :cond_255
    move-object/from16 v21, v1

    move-object/from16 v22, v6

    iget v0, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_274

    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    const/4 v0, 0x5

    const/4 v3, 0x7

    move-object/from16 v27, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v6, v20

    move-object/from16 v19, v22

    goto/16 :goto_612

    :cond_274
    const/4 v0, 0x5

    const/4 v1, 0x7

    move-object/from16 v27, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v6, v20

    move-object/from16 v19, v22

    goto/16 :goto_609

    :pswitch_283  #0x2
    move-object/from16 v22, v6

    const/16 v21, 0x4

    const/16 v23, 0x5

    new-instance v1, Landroidx/core/location/a;

    invoke-direct {v1, v8}, Landroidx/core/location/a;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v11, v1}, Lcom/android/launcher3/model/AllAppsList;->trackRemoves(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v24

    const/4 v1, 0x0

    move v6, v1

    :goto_294
    if-ge v6, v9, :cond_423

    if-eqz v7, :cond_2d7

    :try_start_298
    aget-object v1, v10, v6

    invoke-virtual {v0, v1}, Lcom/android/launcher/model/ChildrenModeManager;->inChildrenModeApps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d7

    const-string v1, "OplusPackageUpdatedTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_UPDATE: in children mode apps, skip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v1

    aget-object v3, v10, v6

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher/download/DownloadAppsManager;->onPackageUpdateTask(ILjava/lang/String;)V

    move-object/from16 v26, v0

    move-object v0, v2

    move-object/from16 v27, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v22

    move-object/from16 v39, v20

    move/from16 v20, v6

    move-object/from16 v6, v39

    goto/16 :goto_401

    :cond_2d7
    const/4 v1, 0x2

    aget-object v3, v10, v6

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_314

    aget-object v1, v10, v6

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v3}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->getInstance()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v1

    aget-object v3, v10, v6

    invoke-virtual {v1, v3}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v25

    iget-object v3, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    aget-object v4, v10, v6

    iget-object v5, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object v1, v2

    move-object/from16 v26, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v13

    move-object/from16 v27, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v28, v20

    move/from16 v20, v6

    move-object/from16 v19, v22

    move/from16 v6, v25

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateHiddenPackage(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto/16 :goto_390

    :cond_314
    move-object/from16 v26, v0

    move-object v0, v2

    move-object/from16 v27, v8

    move-object/from16 v8, v17

    move-object/from16 v28, v20

    move/from16 v20, v6

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v22

    aget-object v2, v10, v20

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->findAppInfoByPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_334

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_335

    :cond_334
    const/4 v3, 0x0

    :goto_335
    aget-object v4, v10, v20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_35f

    const/4 v3, 0x0

    :goto_341
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_35f

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_35c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35c
    add-int/lit8 v3, v3, 0x1

    goto :goto_341

    :cond_35f
    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v2

    aget-object v3, v10, v20

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher/download/DownloadAppsManager;->onPackageUpdateTask(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_374

    aget-object v1, v10, v20

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    :cond_374
    if-eqz v16, :cond_3ab

    if-eqz v7, :cond_393

    const-string v1, "OplusPackageUpdatedTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_UPDATE: in children mode, skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v10, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_390
    move-object/from16 v6, v28

    goto :goto_401

    :cond_393
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v1

    aget-object v2, v10, v20

    invoke-virtual {v1, v2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ab

    aget-object v1, v10, v20

    sget-object v2, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v1, v10, v20

    invoke-virtual {v11, v13, v1, v2}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    :cond_3ab
    aget-object v1, v10, v20

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v1, v10, v20

    aget-object v2, v10, v20

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v6, v28

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_3eb

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v3, v10, v20

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v2

    if-eqz v2, :cond_3eb

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v2

    aget-object v3, v10, v20

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->checkNewsPageIsExit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3eb
    invoke-static {v13}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    aget-object v4, v10, v20

    invoke-direct {v2, v3, v13, v4}, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;-><init>(Landroid/os/UserHandle;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V
    :try_end_401
    .catchall {:try_start_298 .. :try_end_401} :catchall_415

    :goto_401
    add-int/lit8 v1, v20, 0x1

    move-object v2, v0

    move-object/from16 v20, v6

    move-object/from16 v22, v19

    move-object/from16 v0, v26

    move v6, v1

    move-object/from16 v19, v9

    move/from16 v9, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v27

    goto/16 :goto_294

    :catchall_415
    move-exception v0

    move-object v1, v0

    if-eqz v24, :cond_422

    :try_start_419
    invoke-interface/range {v24 .. v24}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_41c
    .catchall {:try_start_419 .. :try_end_41c} :catchall_41d

    goto :goto_422

    :catchall_41d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_422
    :goto_422
    throw v1

    :cond_423
    move-object/from16 v27, v8

    move-object/from16 v8, v17

    move-object/from16 v6, v20

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v22

    const/4 v0, 0x2

    const/4 v1, 0x7

    if-eqz v24, :cond_436

    invoke-interface/range {v24 .. v24}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    :cond_436
    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    invoke-interface {v2, v0}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    move-object v5, v0

    move/from16 v16, v1

    move/from16 v7, v17

    goto/16 :goto_619

    :pswitch_443  #0x1
    move-object/from16 v27, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    const/4 v1, 0x0

    move/from16 v7, v17

    :goto_452
    if-ge v1, v7, :cond_4da

    aget-object v4, v10, v1

    iget-object v5, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v4, v5}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_46a

    aget-object v4, v10, v1

    iget-object v5, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v5}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_46a
    sget-object v4, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v4}, Lcom/android/common/config/FeatureOption;->isDisableDownloadProgress()Z

    move-result v4

    if-nez v4, :cond_484

    aget-object v4, v10, v1

    iget-object v5, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v5}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v4

    aget-object v5, v10, v1

    const/4 v0, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher/download/DownloadAppsManager;->onPackageUpdateTask(ILjava/lang/String;)V

    goto :goto_485

    :cond_484
    const/4 v0, 0x1

    :goto_485
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v4

    if-eqz v4, :cond_490

    aget-object v4, v10, v1

    invoke-static {v4, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    :cond_490
    instance-of v0, v11, Lcom/android/launcher3/model/OplusAllAppsList;

    if-eqz v0, :cond_4a7

    aget-object v0, v10, v1

    move-object v4, v11

    check-cast v4, Lcom/android/launcher3/model/OplusAllAppsList;

    aget-object v5, v10, v1

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget v3, v15, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->mInstallReason:I

    invoke-virtual {v4, v13, v5, v2, v3}, Lcom/android/launcher3/model/OplusAllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b4

    :cond_4a7
    aget-object v0, v10, v1

    aget-object v2, v10, v1

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4b4
    aget-object v0, v10, v1

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v0, v2}, Lcom/android/launcher3/model/AllAppsList;->findAppInfoByPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4d1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d1

    aget-object v2, v10, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d1
    aget-object v0, v10, v1

    invoke-static {v0}, Lcom/android/launcher3/dot/DotUtils;->addItemToNumberBadgeSupportPackageList(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_452

    :cond_4da
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    goto/16 :goto_11b

    :pswitch_4e3  #0x12
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v10

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v10

    const/4 v5, 0x0

    :goto_4eb
    if-ge v5, v4, :cond_529

    aget-object v1, v10, v5

    iget-object v2, v11, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_526

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    move-object/from16 v20, v2

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51f

    iget-object v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v23, v1

    iget-object v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_521

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_521

    :cond_51f
    move-object/from16 v23, v1

    :cond_521
    :goto_521
    move-object/from16 v2, v20

    move-object/from16 v1, v23

    goto :goto_4f5

    :cond_526
    add-int/lit8 v5, v5, 0x1

    goto :goto_4eb

    :cond_529
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_606

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v13}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher/pkg/PackageDeleteManager;->uninstallApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    goto :goto_52d

    :pswitch_541  #0x11
    const/4 v0, 0x0

    :goto_542
    if-ge v0, v7, :cond_606

    aget-object v1, v10, v0

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v1, v10, v0

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v2}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_542

    :pswitch_555  #0x10
    array-length v1, v10

    const/4 v2, 0x0

    :goto_557
    if-ge v2, v1, :cond_593

    aget-object v3, v10, v2

    const-string v4, "OplusPackageUpdatedTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v1

    const-string v1, "[OP_ADD_GREEN_POINT_APPS] pkg: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_588

    invoke-virtual {v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageMultiProtected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_580

    goto :goto_588

    :cond_580
    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/model/OplusAllAppsList;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/model/OplusAllAppsList;->updateNewUpdatedAppFlag(Ljava/lang/String;Z)V

    goto :goto_58e

    :cond_588
    :goto_588
    const/4 v1, 0x1

    iget-object v4, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateNewUpdatedAppFlag(Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V

    :goto_58e
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v20

    goto :goto_557

    :cond_593
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/16 v1, 0x400

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    goto/16 :goto_11b

    :pswitch_59d  #0xf
    array-length v1, v10

    const/4 v2, 0x0

    :goto_59f
    if-ge v2, v1, :cond_5eb

    aget-object v3, v10, v2

    const-string v4, "OplusPackageUpdatedTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v1

    const-string v1, "[OP_REMOVE_GREEN_POINT_APPS] pkg: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d0

    invoke-virtual {v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageMultiProtected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c8

    goto :goto_5d0

    :cond_5c8
    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/model/OplusAllAppsList;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/model/OplusAllAppsList;->updateNewUpdatedAppFlag(Ljava/lang/String;Z)V

    goto :goto_5e6

    :cond_5d0
    :goto_5d0
    const/4 v1, 0x0

    iget-object v4, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateNewUpdatedAppFlag(Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e6

    move-object v4, v11

    check-cast v4, Lcom/android/launcher3/model/OplusAllAppsList;

    invoke-virtual {v4, v3, v1}, Lcom/android/launcher3/model/OplusAllAppsList;->updateNewUpdatedAppFlag(Ljava/lang/String;Z)V

    :cond_5e6
    :goto_5e6
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v20

    goto :goto_59f

    :cond_5eb
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/16 v1, 0x400

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    goto/16 :goto_11b

    :pswitch_5f5  #0xe
    array-length v0, v10

    const/4 v1, 0x0

    :goto_5f7
    if-ge v1, v0, :cond_606

    aget-object v2, v10, v1

    move-object v3, v11

    check-cast v3, Lcom/android/launcher3/model/OplusAllAppsList;

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/model/OplusAllAppsList;->removePackageForHide(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f7

    :cond_606
    const/4 v0, 0x5

    const/4 v1, 0x7

    const/4 v2, 0x4

    :goto_609
    move/from16 v23, v0

    move/from16 v16, v1

    move-object/from16 v5, v21

    move/from16 v21, v2

    goto :goto_619

    :goto_612
    move/from16 v23, v0

    move-object v5, v1

    move/from16 v21, v2

    move/from16 v16, v3

    :goto_619
    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/operators/GeneralCotaCustomizer;

    if-eqz v1, :cond_62f

    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v13, v1}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->isLauncherLayoutAdded(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_62f

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/operators/GeneralCotaCustomizer;

    invoke-virtual {v1, v13}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->resetDatabaseAndReload(Landroid/content/Context;)V

    :cond_62f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v6

    iget-object v6, v11, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_70f

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v6

    move/from16 v17, v7

    const-string v7, "OplusPackageUpdatedTask"

    move-object/from16 v20, v12

    const-string v12, "handle added appinfo, inLoaded = "

    invoke-static {v12, v6, v7}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v6, :cond_695

    monitor-enter p2

    :try_start_66d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_671
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v7, v14, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v7, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_671

    :cond_68f
    monitor-exit p2

    goto/16 :goto_713

    :catchall_692
    move-exception v0

    monitor-exit p2
    :try_end_694
    .catchall {:try_start_66d .. :try_end_694} :catchall_692

    throw v0

    :cond_695
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v7, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v12, 0x2

    if-ne v7, v12, :cond_6b1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v7

    if-eqz v7, :cond_6b1

    invoke-direct {v15, v13, v8, v1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->getShouldAddInDrawerModeWhenUpdate(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6b4

    :cond_6b1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_6b4
    const-string v1, "OplusPackageUpdatedTask"

    const-string v7, "bindAppsAddedToWorkspace -- shouldAdd.size = "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_713

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6d4
    :goto_6d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_705

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    iget-boolean v8, v15, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->mIsTriggerReport:Z

    if-eqz v8, :cond_6f9

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v12, -0x1

    if-eq v8, v12, :cond_6f9

    const/4 v8, 0x0

    iput-boolean v8, v15, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->mIsTriggerReport:Z

    iget-object v8, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/statistics/LauncherStatistics;->statsAppChangedToInstalled(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_6f9
    iget-object v8, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    instance-of v12, v8, Lcom/android/launcher3/OplusLauncherModel;

    if-eqz v12, :cond_6d4

    check-cast v8, Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/OplusLauncherModel;->updatePackageInstallReason(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_6d4

    :cond_705
    const/4 v1, 0x0

    new-instance v7, Lcom/android/launcher3/model/l;

    invoke-direct {v7, v6}, Lcom/android/launcher3/model/l;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v15, v7}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    goto :goto_714

    :cond_70f
    move/from16 v17, v7

    move-object/from16 v20, v12

    :cond_713
    :goto_713
    const/4 v1, 0x0

    :goto_714
    iget-object v6, v11, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v11, Lcom/android/launcher3/model/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v11, Lcom/android/launcher3/model/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_76d

    instance-of v6, v0, Lcom/android/launcher/operators/GeneralCustomizer;

    if-eqz v6, :cond_73a

    sget-object v6, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v6}, Lcom/android/common/util/AppFeatureUtils;->isLayoutSpCustomize()Z

    move-result v6

    if-eqz v6, :cond_73a

    check-cast v0, Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {v0, v4, v13}, Lcom/android/launcher/operators/GeneralCustomizer;->checkUpdateApp(Ljava/util/ArrayList;Landroid/content/Context;)Z

    :cond_73a
    invoke-static {v13, v4}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->loadTitleAndIconIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, v11, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v13, v0}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->loadTitleAndIconIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/android/launcher3/model/d1;

    const/4 v6, 0x1

    invoke-direct {v0, v4, v6}, Lcom/android/launcher3/model/d1;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v15, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v13}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->onPackageUpdate(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_74f

    :cond_76d
    iget-object v0, v11, Lcom/android/launcher3/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    instance-of v6, v0, Lcom/android/launcher3/OplusLauncherModel;

    if-eqz v6, :cond_781

    check-cast v0, Lcom/android/launcher3/OplusLauncherModel;

    iget-object v6, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    const-string v7, "PackageUpdateTask"

    invoke-virtual {v0, v10, v6, v7}, Lcom/android/launcher3/OplusLauncherModel;->removePackagesInstallReasonDelay([Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_781
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->isSystemUser()Z

    move-result v0

    if-eqz v0, :cond_7df

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v6, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7df

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_79d
    :goto_79d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    sget-object v7, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79d

    iget-object v6, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_7bc

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_7be

    :cond_7bc
    const-string v6, ""

    :goto_7be
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_79d

    const-string v7, "OplusPackageUpdatedTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removedMultiAppPackages add: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_79d

    :cond_7df
    iget v0, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_84e

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7e8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    :try_start_7f5
    invoke-static {v13}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    iget-object v8, v7, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v12, v7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v12}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_801
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f5 .. :try_end_801} :catch_802

    goto :goto_81a

    :catch_802
    move-exception v0

    const-string v8, "OplusPackageUpdatedTask"

    const-string v12, " unknown component "

    invoke-static {v12}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_81a
    iget-object v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v8

    if-nez v8, :cond_82a

    iget-object v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v8

    if-eqz v8, :cond_82c

    :cond_82a
    if-nez v0, :cond_849

    :cond_82c
    const-string v0, "OplusPackageUpdatedTask"

    const-string/jumbo v8, "removedComponents --add: "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v7, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v8, v27

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_84b

    :cond_849
    move-object/from16 v8, v27

    :goto_84b
    move-object/from16 v27, v8

    goto :goto_7e8

    :cond_84e
    move-object/from16 v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v22, Lcom/android/launcher3/util/IntSet;

    invoke-direct/range {v22 .. v22}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iget v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-eq v1, v6, :cond_87a

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v5, v1, :cond_867

    goto :goto_87a

    :cond_867
    const/4 v0, 0x2

    move-object/from16 v29, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move v4, v6

    move-object/from16 v27, v8

    move-object/from16 v37, v10

    move-object v3, v13

    move-object v1, v14

    move-object v6, v15

    move/from16 v36, v17

    goto/16 :goto_969

    :cond_87a
    :goto_87a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    move-object/from16 v24, v2

    const/4 v2, 0x2

    if-eq v1, v6, :cond_892

    if-ne v1, v2, :cond_88e

    goto :goto_892

    :cond_88e
    const/4 v1, 0x0

    move/from16 v25, v1

    goto :goto_894

    :cond_892
    :goto_892
    move/from16 v25, v6

    :goto_894
    monitor-enter p2

    :try_start_895
    iget-object v6, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/launcher3/model/g1;
    :try_end_899
    .catchall {:try_start_895 .. :try_end_899} :catchall_a7b

    move-object v1, v2

    move-object/from16 v30, v2

    move-object/from16 v29, v24

    move-object/from16 v2, p0

    move-object/from16 v31, v3

    move-object v3, v13

    move-object/from16 v32, v4

    move-object/from16 v4, v18

    move-object/from16 v24, v5

    move-object/from16 v5, v19

    move-object/from16 v33, v6

    move-object/from16 v19, v28

    move-object/from16 v6, v22

    move-object/from16 v34, v7

    move/from16 v7, v25

    move-object/from16 v27, v8

    move-object/from16 v35, v18

    move-object v8, v0

    move/from16 v36, v17

    move-object/from16 v37, v10

    move-object/from16 v10, v27

    move-object/from16 v11, p3

    move-object/from16 p3, v12

    move-object/from16 v17, v20

    move-object/from16 v12, v19

    move-object/from16 v38, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v24

    move-object/from16 v15, p3

    :try_start_8d0
    invoke-direct/range {v1 .. v15}, Lcom/android/launcher3/model/g1;-><init>(Lcom/android/launcher3/model/OplusPackageUpdatedTask;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V
    :try_end_8d3
    .catchall {:try_start_8d0 .. :try_end_8d3} :catchall_a77

    move-object/from16 v1, p2

    move-object/from16 v3, v30

    move-object/from16 v2, v33

    :try_start_8d9
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v2

    move-object/from16 v4, p3

    move-object/from16 v3, v38

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/appedit/AppCustomizerManager;->reqUpdateWorkspaceItemInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8ed
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_934

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_934

    iget-object v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v35

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_931

    iget v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v7, v7, -0xb

    iput v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v7, v34

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_938

    :cond_931
    move-object/from16 v7, v34

    goto :goto_938

    :cond_934
    move-object/from16 v7, v34

    move-object/from16 v8, v35

    :goto_938
    move-object/from16 v34, v7

    move-object/from16 v35, v8

    goto :goto_8ed

    :cond_93d
    move-object/from16 v6, p0

    move-object/from16 v7, v34

    const/4 v2, 0x2

    monitor-exit p2
    :try_end_943
    .catchall {:try_start_8d9 .. :try_end_943} :catchall_a7f

    invoke-virtual {v6, v4}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_956

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v0

    const-string/jumbo v4, "removed because the target component is invalid"

    invoke-virtual {v6, v0, v4}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    :cond_956
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_966

    new-instance v0, Lcom/android/launcher3/model/e1;

    const/4 v4, 0x1

    invoke-direct {v0, v7, v4}, Lcom/android/launcher3/model/e1;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    goto :goto_968

    :cond_966
    const/4 v0, 0x1

    move v4, v0

    :goto_968
    move v0, v2

    :goto_969
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget v5, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_9ca

    const/16 v8, 0xe

    if-eq v5, v8, :cond_9ca

    const/16 v8, 0x11

    if-ne v5, v8, :cond_97c

    goto :goto_9ca

    :cond_97c
    if-ne v5, v0, :cond_9c5

    const/4 v5, 0x0

    move/from16 v8, v36

    :goto_981
    if-ge v5, v8, :cond_9c7

    invoke-static {v3}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v9

    move-object/from16 v10, v37

    aget-object v11, v10, v5

    iget-object v12, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v11, v12}, Lcom/android/launcher/OplusLauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v9

    if-nez v9, :cond_9b9

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->isAppRestoring()Z

    move-result v9

    if-nez v9, :cond_9ac

    const-string v9, "OplusPackageUpdatedTask"

    const-string v11, "add remove package :"

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v5

    invoke-static {v11, v12, v9}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v9, v10, v5

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9b9

    :cond_9ac
    const-string v9, "OplusPackageUpdatedTask"

    const-string v11, "app restoring, ignore remove package :"

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v5

    invoke-static {v11, v12, v9}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b9
    :goto_9b9
    aget-object v9, v10, v5

    iget-object v11, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v11}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->removeInvalidWidgetIfNeeded(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v37, v10

    goto :goto_981

    :cond_9c5
    move/from16 v8, v36

    :cond_9c7
    move-object/from16 v10, v37

    goto :goto_9d1

    :cond_9ca
    :goto_9ca
    move/from16 v8, v36

    move-object/from16 v10, v37

    invoke-static {v2, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_9d1
    const-string v5, "OplusPackageUpdatedTask"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v11, "removedPackages: "

    const/4 v12, 0x0

    aput-object v11, v9, v12

    aput-object v2, v9, v4

    const-string v11, ", removedComponents: "

    aput-object v11, v9, v0

    move-object/from16 v11, v27

    aput-object v11, v9, v7

    const-string v0, ", removedMultiAppPackages: "

    aput-object v0, v9, v21

    move-object/from16 v7, v29

    aput-object v7, v9, v23

    const/4 v0, 0x6

    const-string v13, ", forceKeepShortcuts: "

    aput-object v13, v9, v0

    aput-object v22, v9, v16

    invoke-static {v5, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a05

    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a3e

    :cond_a05
    iget-object v0, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v0, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object v0

    sget-object v5, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-static {v7, v5, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    iget-object v5, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v11, v5, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    const-string/jumbo v5, "removed because the corresponding package or component is removed"

    invoke-virtual {v6, v0, v5}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v5, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v5}, Lcom/android/launcher3/model/ItemInstallQueue;->removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    :cond_a3e
    move-object/from16 v5, v31

    move-object/from16 v2, v32

    invoke-direct {v6, v3, v5, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->filterRemoveAppsWhenUpdate(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_a5a

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarCombineIconDisable()Z

    move-result v0

    if-nez v0, :cond_a5a

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v12}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    :cond_a5a
    iget v0, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v0, v4, :cond_a76

    :goto_a5e
    if-ge v12, v8, :cond_a73

    iget-object v0, v1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v3, v10, v12

    iget-object v4, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    add-int/lit8 v12, v12, 0x1

    goto :goto_a5e

    :cond_a73
    invoke-virtual {v6, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    :cond_a76
    return-void

    :catchall_a77
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_a7d

    :catchall_a7b
    move-exception v0

    move-object v1, v14

    :goto_a7d
    :try_start_a7d
    monitor-exit v1
    :try_end_a7e
    .catchall {:try_start_a7d .. :try_end_a7e} :catchall_a7f

    throw v0

    :catchall_a7f
    move-exception v0

    goto :goto_a7d

    nop

    :pswitch_data_a82
    .packed-switch 0x1
        :pswitch_443  #00000001
        :pswitch_283  #00000002
        :pswitch_17a  #00000003
        :pswitch_19e  #00000004
        :pswitch_168  #00000005
        :pswitch_168  #00000006
        :pswitch_120  #00000007
    .end packed-switch

    :pswitch_data_a94
    .packed-switch 0xe
        :pswitch_5f5  #0000000e
        :pswitch_59d  #0000000f
        :pswitch_555  #00000010
        :pswitch_541  #00000011
        :pswitch_4e3  #00000012
    .end packed-switch
.end method

.method public removeInvalidWidgetIfNeeded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    const/4 v2, 0x0

    instance-of v3, v1, Lcom/android/launcher3/OplusLauncherAppWidgetHost;

    if-eqz v3, :cond_22

    check-cast v1, Lcom/android/launcher3/OplusLauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherAppWidgetHost;->getAllLauncherAppWidgetHostView()Landroid/util/SparseArray;

    move-result-object v2

    :cond_22
    move-object v7, v2

    if-eqz v7, :cond_90

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2e

    goto/16 :goto_90

    :cond_2e
    new-instance v8, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    move v9, v1

    :goto_3d
    if-ltz v9, :cond_90

    :try_start_3f
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_85

    invoke-virtual {v6}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-nez v1, :cond_4d

    goto :goto_8d

    :cond_4d
    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v3, :cond_52

    goto :goto_8d

    :cond_52
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_8d

    :cond_5d
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_76

    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_76

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_76

    goto :goto_8d

    :cond_76
    iget-object v10, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Lcom/android/exceptionmonitor/util/e;

    move-object v1, v11

    move-object v2, v8

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/exceptionmonitor/util/e;-><init>(Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8d

    :catch_85
    const-string v1, "OplusPackageUpdatedTask"

    const-string/jumbo v2, "removeInvalidWidgetIfNeeded()   Array index out of range: 0"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    add-int/lit8 v9, v9, -0x1

    goto :goto_3d

    :cond_90
    :goto_90
    return-void
.end method
