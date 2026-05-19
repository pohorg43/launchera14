.class public Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_CELL_COUNT_X_FOR_OPLUS32:I = 0x4

.field private static final DEFAULT_CELL_COUNT_Y_FOR_OPLUS32:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutXMLGeneratorForOplus32"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBackupDataStandardToXml(Landroid/content/Context;Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;)Z
    .registers 9

    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherLayoutUtils;->generateBackupLayoutData(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/bean/WorkSpaceScreenData;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/android/launcher/bean/WorkSpaceScreenData;->getScreenId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/launcher/bean/WorkSpaceScreenData;->getScreenRank()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v2, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_43
    iget-object v4, v2, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    iget-object v4, v2, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v4, :cond_5a

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_5d
    new-instance p0, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p0, v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->setLayoutMap(Landroid/util/SparseArray;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->generateListScreenInfo(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v1, v2, p0}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->generateListItemInfo(Ljava/util/ArrayList;Ljava/util/Map;Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v1

    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    const-string v4, "generate backup data to xml for oplus32-- mode:standard"

    invoke-static {v2, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_a3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-static {p1, p0}, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGenerator;->generateBackupDataModeToXml(Lcom/android/launcher/backup/backrestore/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result p0

    if-eqz p0, :cond_a3

    const/4 v3, 0x1

    :cond_a3
    return v3
.end method

.method private static generateListItemInfo(Ljava/util/ArrayList;Ljava/util/Map;Lcom/android/launcher/backup/mode/BackupDataModel;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :try_start_1a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_2fb

    const-string v8, "Backup"

    if-eqz v7, :cond_3c

    :try_start_22
    sget-object v7, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateListItemInfo: current count is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_40
    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x6

    const/4 v11, 0x3

    if-eqz v9, :cond_25d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v15, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-direct {v15}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;-><init>()V

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    int-to-long v12, v12

    invoke-virtual {v15, v12, v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setId(J)V

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v15, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellX(I)V

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v15, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellY(I)V

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    int-to-long v12, v12

    iget v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    move-object/from16 p0, v15

    move v15, v5

    move-object/from16 v16, p1

    move-object/from16 v17, p0

    invoke-static/range {v12 .. v17}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->resetHotseatAndDesktopItemOldScreenIdForOplus60(JIILjava/util/Map;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_91

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Add backup oldScreenId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v5, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    move-object/from16 v12, p0

    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setScreenId(I)V

    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setContainer(I)V

    iget-object v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a8

    const-string v5, ""

    goto :goto_ae

    :cond_a8
    iget-object v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_ae
    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v13, 0x0

    if-eqz v5, :cond_1ee

    if-eq v5, v6, :cond_12e

    if-eq v5, v11, :cond_10e

    const/4 v11, 0x5

    if-eq v5, v11, :cond_c2

    if-eq v5, v10, :cond_12e

    :cond_bf
    :goto_bf
    const/4 v14, 0x0

    goto/16 :goto_40

    :cond_c2
    check-cast v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v5, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v5, :cond_cd

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_ce

    :cond_cd
    move-object v10, v13

    :goto_ce
    if-eqz v5, :cond_d4

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    :cond_d4
    if-eqz v5, :cond_d9

    invoke-virtual {v12, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    :cond_d9
    invoke-virtual {v12, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    iget v5, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetId(I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_bf

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateOneItemInfo -- itemType: widget, itemInfo is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v5, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    :cond_10e
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_bf

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateOneItemInfo -- itemType: folder, itemInfo is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v5, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    :cond_12e
    move-object v5, v9

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v10, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_133} :catch_2fb

    const/4 v14, 0x0

    if-eqz v10, :cond_13b

    :try_start_136
    invoke-virtual {v10, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_13c

    :cond_13b
    move-object v10, v13

    :goto_13c
    invoke-virtual {v12, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_148

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_149

    :cond_148
    move-object v10, v13

    :goto_149
    if-eqz v10, :cond_14f

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    :cond_14f
    invoke-virtual {v12, v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    iget v10, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v12, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRank(I)V

    iget-object v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v12, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setUserId(I)V

    iget-object v10, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v10, :cond_178

    iget-object v10, v10, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_178

    iget-object v10, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v10, v10, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_178

    move v10, v14

    goto :goto_179

    :cond_178
    move v10, v6

    :goto_179
    invoke-virtual {v12, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconType(I)V

    if-nez v10, :cond_1a8

    iget-object v5, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v10, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    sget-object v11, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD backup iconPack-Source "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconPackage(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconResource(Ljava/lang/String;)V

    :cond_1a8
    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v5, v6, :cond_1cd

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateOneItemInfo -- itemType: deep shortcut, itemInfo is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v5, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_1cd
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateOneItemInfo -- itemType: shortcut, itemInfo is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v5, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_1ee
    const/4 v14, 0x0

    invoke-static {v9}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->filterNewInstallingAppWhenBackup(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_20d

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Don\'t backup downloading app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_20d
    move-object v5, v9

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v10, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_219

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_21a

    :cond_219
    move-object v10, v13

    :goto_21a
    if-eqz v10, :cond_221

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    goto :goto_222

    :cond_221
    move-object v11, v13

    :goto_222
    invoke-virtual {v12, v11}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    if-eqz v10, :cond_22b

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    :cond_22b
    invoke-virtual {v12, v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRank(I)V

    iget-object v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setUserId(I)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateOneItemInfo -- itemType: deep application, itemInfo is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v5, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_25d
    const/4 v14, 0x0

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_267
    :goto_267
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v12

    const/16 v13, -0x64

    if-ne v12, v13, :cond_267

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v12

    invoke-virtual {v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v12, v13, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_267

    :cond_28b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v9, p1

    invoke-static {v5, v9, v7}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->resetFolderItemsOldScreenIdWithFolderScreenIdForOplus60(Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/ArrayList;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v5, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v5, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_2f7

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateListItemInfo: success, applicationInfoList.size = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deepShortcutInfoList.size = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", folderInfoList.size = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", widgetInfoList.size = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_2f7} :catch_2f9

    :cond_2f7
    move v5, v6

    goto :goto_317

    :catch_2f9
    move-exception v0

    goto :goto_2fd

    :catch_2fb
    move-exception v0

    const/4 v14, 0x0

    :goto_2fd
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateListItemInfo: error, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v14

    :goto_317
    return v5
.end method

.method private static generateListScreenInfo(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a5

    const-string v2, "Backup"

    if-eqz v1, :cond_27

    :try_start_d
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateListScreenInfo: screen count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->convertToOldIdForOplus60(I)I

    move-result v5

    invoke-static {v8}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->convertToOldScreenIdForOplus60(I)I

    move-result v6

    invoke-static {v9}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->convertToOldScreenNumForOplus60(I)I

    move-result v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;-><init>(IIIII)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_80

    sget-object v3, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateOneScreenInfo -- screenInfo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_84
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_ad

    sget-object p0, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateListScreenInfo: success count is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a4} :catch_a5

    goto :goto_ad

    :catch_a5
    move-exception p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    const-string v1, "generateListScreenInfo: error, e: "

    invoke-static {v1, p0, p1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_ad
    :goto_ad
    return-object v0
.end method

.method public static rectToCellColorsOS32(Landroid/content/res/Resources;II)[I
    .registers 5

    const v0, 0x7f07113c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f07113b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p2, p2

    div-float/2addr p2, p0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    const/4 p2, 0x4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x6

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    sget-object p2, Lcom/android/launcher/backup/backrestore/backup/LayoutXMLGeneratorForOplus32;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rectToCellColorsOS32 -- spanX-Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput p1, p2, v0

    const/4 p1, 0x1

    aput p0, p2, p1

    return-object p2
.end method
