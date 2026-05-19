.class public final Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->restoreLostApps(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nViewLostCheckHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewLostCheckHelper.kt\ncom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1005:1\n1855#2,2:1006\n1855#2,2:1012\n215#3:1008\n216#3:1011\n37#4,2:1009\n1#5:1014\n*S KotlinDebug\n*F\n+ 1 ViewLostCheckHelper.kt\ncom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1\n*L\n315#1:1006,2\n344#1:1012,2\n333#1:1008\n333#1:1011\n336#1:1009,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $lostBgAllAppsMemAppPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic $lostDesktopDbAppItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $lostDesktopMemAppItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $lostDesktopMemAppPkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic $lostDesktopViewAppItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $lostFolderMemAppItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/launcher/Launcher;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;>;",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostBgAllAppsMemAppPkgs:Ljava/util/List;

    iput-object p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostDesktopMemAppPkgs:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostDesktopMemAppItems:Ljava/util/List;

    iput-object p5, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostDesktopDbAppItems:Ljava/util/List;

    iput-object p6, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostDesktopViewAppItems:Ljava/util/List;

    iput-object p7, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostFolderMemAppItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method

.method private static final execute$lambda$4$lambda$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    const-string v0, "$newAdded"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic l(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->execute$lambda$4$lambda$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "ViewLostCheck"

    const-string v4, "app"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "dataModel"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "apps"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostBgAllAppsMemAppPkgs:Ljava/util/List;

    iget-object v5, v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$launcher:Lcom/android/launcher/Launcher;

    iget-object v6, v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostDesktopMemAppPkgs:Ljava/util/Map;

    iget-object v7, v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostDesktopMemAppItems:Ljava/util/List;

    iget-object v8, v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostDesktopDbAppItems:Ljava/util/List;

    iget-object v9, v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostDesktopViewAppItems:Ljava/util/List;

    iget-object v10, v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$restoreLostApps$1;->$lostFolderMemAppItems:Ljava/util/List;

    :try_start_27
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v2, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_32
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh4/j;

    iget-object v14, v13, Lh4/j;->a:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v13, v13, Lh4/j;->b:Ljava/lang/Object;

    check-cast v13, Landroid/os/UserHandle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v12

    const-string/jumbo v12, "restoreLostApps, bgAllAppsMemPkgs lost user:"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "; pkg:"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v14, v13}, Lcom/android/launcher3/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-object/from16 v12, p1

    goto :goto_32

    :cond_6b
    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v2, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v11}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v13, 0x1

    xor-int/2addr v4, v13

    if-eqz v4, :cond_9d

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v13

    if-eqz v4, :cond_9d

    iget-object v4, v2, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v2, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5, v12}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->loadTitleAndIconIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v2, v12}, Lcom/android/exceptionmonitor/util/d;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_9d
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v13

    const/4 v4, 0x0

    if-eqz v2, :cond_105

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ad
    :goto_ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_105

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/2addr v12, v13

    if-eqz v12, :cond_ad

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreLostApps, desktopMemPkgs lost user:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "; pkgs:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v12, v4, [Ljava/lang/String;

    invoke-interface {v6, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v12

    new-instance v14, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    array-length v15, v6

    invoke-static {v6, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-direct {v14, v13, v11, v6}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_ad

    :cond_105
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v13

    if-eqz v2, :cond_147

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_110
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_147

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restoreLostApps, desktopMemItems lost mem:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v11, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v11, :cond_143

    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v11

    move-object v12, v6

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v11, v12, v4}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    :cond_143
    invoke-virtual {v1, v5, v6, v13}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_110

    :cond_147
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v13

    if-eqz v2, :cond_18a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    const-class v4, Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {v2, v4}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_18a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreLostApps, desktopDbItems lost dbs.size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.OplusModelWriter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    invoke-virtual {v0, v5, v8, v13}, Lcom/android/launcher3/model/OplusModelWriter;->addItems(Landroid/content/Context;Ljava/util/List;Z)V

    :cond_18a
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    if-eqz v0, :cond_199

    sget-object v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-static {v0, v1, v10}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->access$addFolderContentRunInMain(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Lcom/android/launcher3/model/BgDataModel;Ljava/util/List;)V

    :cond_199
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    if-nez v0, :cond_1b5

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    if-nez v0, :cond_1b5

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    if-nez v0, :cond_1b5

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    if-eqz v0, :cond_1bd

    :cond_1b5
    sget-object v0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->INSTANCE:Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;

    invoke-static {v0, v5}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->access$rebindCallbacksRunInMain(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setStartRebindFromRecover()V

    :cond_1bd
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_1bf
    .catchall {:try_start_27 .. :try_end_1bf} :catchall_1c0

    goto :goto_1c5

    :catchall_1c0
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1c5
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1cc

    goto :goto_1d2

    :cond_1cc
    const-string/jumbo v1, "restoreLostApps e:"

    invoke-static {v1, v0, v3}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1d2
    return-void
.end method
