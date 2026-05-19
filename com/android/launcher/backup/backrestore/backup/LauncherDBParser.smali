.class public Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final APPWIDGET_ID_INDEX:I = 0xf

.field private static final APPWIDGET_PROVIDER_INDEX:I = 0x10

.field private static final CARD_CATEGORY_INDEX:I = 0x15

.field private static final CARD_EDITABLE_ATTRIBUTES_INDEX:I = 0x18

.field private static final CARD_IDENTIFICATION_INDEX_INDEX:I = 0x19

.field private static final CARD_SERVICE_ID_INDEX:I = 0x14

.field private static final CARD_TYPE_INDEX:I = 0x13

.field private static final CELLX_INDEX:I = 0x6

.field private static final CELLY_INDEX:I = 0x7

.field private static final CONTAINER_INDEX:I = 0x4

.field private static final FOLDER_RECOMMEND_ID_INDEX:I = 0x17

.field public static final ICON_INDEX:I = 0x16

.field private static final ICON_PACKAGE_INDEX:I = 0xb

.field private static final ICON_RESOURCE_INDEX:I = 0xc

.field private static final ICON_TYPE_INDEX:I = 0xa

.field private static final ID_INDEX:I = 0x0

.field private static final INTENT_INDEX:I = 0x3

.field public static final ITEM_PROJECTION:[Ljava/lang/String;

.field public static final ITEM_PROJECTION_SIMPLE:[Ljava/lang/String;

.field private static final ITEM_TYPE_INDEX:I = 0x1

.field private static final PROFILE_ID_INDEX:I = 0x9

.field private static final RANK_INDEX:I = 0x8

.field private static final RESTORED_INDEX:I = 0x11

.field private static final SCREEN_ID_INDEX:I = 0x0

.field private static final SCREEN_INDEX:I = 0x5

.field public static final SCREEN_PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_RANK_INDEX:I = 0x1

.field private static final SPANX_INDEX:I = 0xd

.field private static final SPANY_INDEX:I = 0xe

.field public static final TAG:Ljava/lang/String; = "BR-Launcher_LauncherDBParser"

.field private static final TITLE_INDEX:I = 0x2

.field private static final USER_ID_INDEX:I = 0x12


# direct methods
.method public static constructor <clinit>()V
    .registers 27

    const-string v0, "_id"

    const-string/jumbo v1, "screenRank"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->SCREEN_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "itemType"

    const-string/jumbo v3, "title"

    const-string v4, "intent"

    const-string v5, "container"

    const-string/jumbo v6, "screen"

    const-string v7, "cellX"

    const-string v8, "cellY"

    const-string/jumbo v9, "rank"

    const-string/jumbo v10, "profileId"

    const-string v11, "iconType"

    const-string v12, "iconPackage"

    const-string v13, "iconResource"

    const-string/jumbo v14, "spanX"

    const-string/jumbo v15, "spanY"

    const-string v16, "appWidgetId"

    const-string v17, "appWidgetProvider"

    const-string/jumbo v18, "restored"

    const-string/jumbo v19, "user_id"

    const-string v20, "card_type"

    const-string/jumbo v21, "service_id"

    const-string v22, "card_category"

    const-string v23, "icon"

    const-string/jumbo v24, "recommendId"

    const-string v25, "editable_attributes"

    const-string/jumbo v26, "theme_card_identification"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->ITEM_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "itemType"

    const-string/jumbo v3, "title"

    const-string v4, "intent"

    const-string v5, "container"

    const-string/jumbo v6, "screen"

    const-string v7, "cellX"

    const-string v8, "cellY"

    const-string/jumbo v9, "rank"

    const-string/jumbo v10, "profileId"

    const-string v11, "iconType"

    const-string v12, "iconPackage"

    const-string v13, "iconResource"

    const-string/jumbo v14, "spanX"

    const-string/jumbo v15, "spanY"

    const-string v16, "appWidgetId"

    const-string v17, "appWidgetProvider"

    const-string/jumbo v18, "restored"

    const-string/jumbo v19, "user_id"

    const-string v20, "card_type"

    const-string/jumbo v21, "service_id"

    const-string v22, "card_category"

    const-string v23, "icon"

    const-string v24, "editable_attributes"

    const-string/jumbo v25, "theme_card_identification"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->ITEM_PROJECTION_SIMPLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackupDataModeMapFromDB(Landroid/content/Context;)Landroid/util/ArrayMap;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "getBackupDataFromDB, mode:"

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v6, v0

    :goto_10
    if-ge v6, v5, :cond_a6

    aget-object v7, v4, v6

    :try_start_14
    invoke-static {v1, v7}, Lcom/android/launcher/mode/LauncherModeManager;->getScreenContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v7}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v10, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->SCREEN_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "screenRank"

    move-object v8, v15

    move-object v9, v0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    sget-object v8, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne v7, v8, :cond_41

    sget-object v10, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->ITEM_PROJECTION_SIMPLE:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v16, "itemType"

    move-object v8, v15

    move-object v9, v14

    move-object v15, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_50

    :cond_41
    sget-object v10, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->ITEM_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v16, "itemType"

    move-object v8, v15

    move-object v9, v14

    move-object v15, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_50
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_7c

    const-string v9, "Backup"

    sget-object v10, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " db itemUri: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", screenUri: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v15, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_84} :catch_85

    goto :goto_a2

    :catch_85
    move-exception v0

    sget-object v8, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " db query error, e: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10

    :cond_a6
    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcuts(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->getBackupModeDataList(Landroid/content/Context;Landroid/util/ArrayMap;Ljava/util/Map;)Landroid/util/ArrayMap;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_f4

    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f4

    const-string v4, "getBackupDataFromDB，No standard table, use drawer table data as standard data."

    invoke-static {v0, v4}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/backup/mode/BackupDataModel;

    new-instance v4, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {v4}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    invoke-virtual {v4, v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    if-eqz v3, :cond_f1

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    invoke-virtual {v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setLayoutMap(Landroid/util/SparseArray;)V

    :cond_f1
    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f4
    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_136

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_136

    const-string v4, "getBackupDataFromDB，No drawer table, use standard table data as drawer data."

    invoke-static {v0, v4}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    new-instance v2, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    if-eqz v0, :cond_133

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->setLayoutMap(Landroid/util/SparseArray;)V

    :cond_133
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_136
    return-object v1
.end method

.method private static getBackupModeDataList(Landroid/content/Context;Landroid/util/ArrayMap;Ljava/util/Map;)Landroid/util/ArrayMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Landroid/util/Pair<",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_54

    aget-object v4, v1, v3

    invoke-static {p0, v4}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_37

    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBackupModeDataMap, mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " dbModeBackup is not hasTable"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Backup"

    invoke-static {v6, v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_37
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    if-eqz v5, :cond_51

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/database/Cursor;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/database/Cursor;

    invoke-static {p0, v4, v6, v5, p2}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->parseBackupDataModeFromDB(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/Map;)Lcom/android/launcher/backup/mode/BackupDataModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_54
    return-object v0
.end method

.method public static initBaseBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;JIIIII)V
    .registers 8

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setId(J)V

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellX(I)V

    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellY(I)V

    invoke-virtual {p0, p5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setUserId(I)V

    invoke-virtual {p0, p6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setStatus(I)V

    int-to-long p1, p7

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setProfileId(J)V

    return-void
.end method

.method private static parseBackupDataModeFromDB(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/Map;)Lcom/android/launcher/backup/mode/BackupDataModel;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Lcom/android/launcher/backup/mode/BackupDataModel;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nparseBackupDataModeFromDB -- mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->parseDeviceLayoutParameter(Landroid/content/Context;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->parseDrawerModeSetting(Landroid/content/Context;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-static {p0, p1}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->parseModeLayoutParameter(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {p2, v5}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->parseListScreenInfo(Landroid/database/Cursor;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, p3

    move-object v3, p1

    move-object v4, p0

    move-object v6, v0

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->parseListItemInfo(Landroid/database/Cursor;Lcom/android/launcher/mode/LauncherMode;Landroid/content/Context;Ljava/util/Map;Lcom/android/launcher/backup/mode/BackupDataModel;Ljava/util/Map;)V

    return-object v0
.end method

.method public static parseDeviceLayoutParameter(Landroid/content/Context;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const-string v3, "layout_cellcount_x"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    const-string v3, "layout_cellcount_y"

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "layout_is_compact"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseDeviceLayoutParameter --"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " cellCountX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cellCountY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newIsCompactLayout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    invoke-direct {v3, v2, v0, p0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;-><init>(IIZLcom/android/launcher/mode/LauncherMode;)V

    return-object v3
.end method

.method private static parseDrawerModeSetting(Landroid/content/Context;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;
    .registers 6

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isDrawerAppGlobalSearch(Landroid/content/Context;)Z

    move-result p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseDrawerModeSetting -- isShowIndicateApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAddToWorkSpace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Backup"

    invoke-static {v4, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    new-instance v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;-><init>(ZZZ)V

    return-object v2
.end method

.method private static parseListItemInfo(Landroid/database/Cursor;Lcom/android/launcher/mode/LauncherMode;Landroid/content/Context;Ljava/util/Map;Lcom/android/launcher/backup/mode/BackupDataModel;Ljava/util/Map;)V
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_4d6

    :try_start_22
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseListItemInfo: cursor count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dynamicShortcutNotSupportList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getDynamicShortcutNotSupportList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", disableAllDynamicShortcut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getDisableAllDynamicShortcut()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_61} :catch_4b5
    .catchall {:try_start_22 .. :try_end_61} :catchall_4b2

    const/4 v3, 0x2

    const/4 v6, 0x3

    const-string v14, "Backup"

    const/4 v15, 0x1

    if-eqz v1, :cond_401

    const/4 v1, 0x0

    :try_start_69
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7e} :catch_3dc
    .catchall {:try_start_69 .. :try_end_7e} :catchall_4b2

    move-object/from16 v25, v8

    const/4 v6, 0x5

    :try_start_81
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v6, 0x6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v6, 0x7

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8f} :catch_3d6
    .catchall {:try_start_81 .. :try_end_8f} :catchall_4b2

    move-object/from16 v26, v12

    const/16 v12, 0x8

    :try_start_93
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_97} :catch_3cc
    .catchall {:try_start_93 .. :try_end_97} :catchall_4b2

    move-object/from16 v27, v9

    const/16 v9, 0x9

    :try_start_9b
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v9, 0x12

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v28, v12

    const/16 v12, 0x11

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v16, p2

    move-wide/from16 v17, v4

    move/from16 v19, v12

    move/from16 v20, v2

    move-object/from16 v21, v15

    invoke-static/range {v16 .. v21}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->filterDownloadOrNewInstallingAppWhenBackup(Landroid/content/Context;JIILjava/lang/String;)Z

    move-result v16
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_bb} :catch_3c1
    .catchall {:try_start_9b .. :try_end_bb} :catchall_4b2

    if-eqz v16, :cond_c4

    move-object/from16 v8, v25

    move-object/from16 v12, v26

    move-object/from16 v9, v27

    goto :goto_5d

    :cond_c4
    move-object/from16 v39, v10

    :try_start_c6
    new-instance v10, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-direct {v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;-><init>()V

    move-object/from16 v16, v10

    move-wide/from16 v17, v4

    move/from16 v19, v22

    move/from16 v20, v6

    move/from16 v21, v9

    move/from16 v22, v12

    invoke-static/range {v16 .. v23}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->initBaseBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;JIIIII)V

    move-wide/from16 v16, v4

    move/from16 v18, v1

    move/from16 v19, v8

    move-object/from16 v20, p3

    move-object/from16 v21, v10

    invoke-static/range {v16 .. v21}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->resetHotseatAndDesktopItemOldScreenIdForOplus60(JIILjava/util/Map;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result v6
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_e8} :catch_3b5
    .catchall {:try_start_c6 .. :try_end_e8} :catchall_4b2

    if-nez v6, :cond_118

    :try_start_ea
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t backup no oldScreenId app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_100} :catch_10a
    .catchall {:try_start_ea .. :try_end_100} :catchall_4b2

    move-object/from16 v8, v25

    move-object/from16 v12, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v39

    goto/16 :goto_5d

    :catch_10a
    move-exception v0

    move-object/from16 v9, p1

    move-object v3, v0

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    move-object/from16 v12, v39

    goto/16 :goto_3e4

    :cond_118
    :try_start_118
    sget-object v6, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Add backup oldScreenId: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v8, v1, v3}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateBaseBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IILjava/lang/String;)V

    invoke-static {v15}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->parseComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_139} :catch_3b5
    .catchall {:try_start_118 .. :try_end_139} :catchall_4b2

    const/4 v3, 0x0

    if-eqz v1, :cond_141

    :try_start_13c
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_142

    :cond_141
    move-object v8, v3

    :goto_142
    if-eqz v1, :cond_148

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_148} :catch_10a
    .catchall {:try_start_13c .. :try_end_148} :catchall_4b2

    :cond_148
    if-eqz v2, :cond_32c

    const/4 v1, 0x1

    if-eq v2, v1, :cond_16e

    const/4 v1, 0x3

    if-eq v2, v1, :cond_246

    const/16 v1, 0x64

    const/16 v3, 0x10

    const/16 v4, 0xf

    const/16 v5, 0xe

    const/16 v6, 0xd

    if-eq v2, v1, :cond_1c2

    const/4 v1, 0x5

    if-eq v2, v1, :cond_174

    const/4 v1, 0x6

    if-eq v2, v1, :cond_16e

    :cond_162
    :goto_162
    move-object/from16 v9, p1

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    move-object/from16 v12, v39

    goto/16 :goto_3fb

    :cond_16e
    move-object/from16 v9, p1

    move-object/from16 v12, v39

    goto/16 :goto_29e

    :cond_174
    :try_start_174
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v1, v2, v4, v3}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateWidgetBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IIILjava/lang/String;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_187} :catch_188
    .catchall {:try_start_174 .. :try_end_187} :catchall_4b2

    goto :goto_1a1

    :catch_188
    move-exception v0

    move-object v1, v0

    :try_start_18a
    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseOneItemInfo -- itemType: widget, update itemInfo e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a1
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_162

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseOneItemInfo -- itemType: widget, itemInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1c1} :catch_10a
    .catchall {:try_start_18a .. :try_end_1c1} :catchall_4b2

    goto :goto_162

    :cond_1c2
    :try_start_1c2
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/16 v1, 0x13

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/16 v1, 0x14

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v1, 0x15

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const/16 v1, 0x18

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f0

    move/from16 v24, v2

    goto :goto_1f2

    :cond_1f0
    const/16 v24, 0x0

    :goto_1f2
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    const/16 v1, 0x19

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_200

    const/4 v15, 0x1

    goto :goto_201

    :cond_200
    const/4 v15, 0x0

    :goto_201
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    move-object/from16 v29, v10

    invoke-static/range {v29 .. v38}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateCardBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_20a} :catch_20b
    .catchall {:try_start_1c2 .. :try_end_20a} :catchall_4b2

    goto :goto_224

    :catch_20b
    move-exception v0

    move-object v1, v0

    :try_start_20d
    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseOneItemInfo -- itemType: card, update itemInfo e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_224
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_162

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseOneItemInfo -- itemType: card, itemInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_244} :catch_10a
    .catchall {:try_start_20d .. :try_end_244} :catchall_4b2

    goto/16 :goto_162

    :cond_246
    move-object/from16 v9, p1

    :try_start_248
    invoke-static {v10, v9, v7}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateFolderBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;Landroid/database/Cursor;)V
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_24b} :catch_24e
    .catchall {:try_start_248 .. :try_end_24b} :catchall_4b2

    :goto_24b
    move-object/from16 v12, v39

    goto :goto_268

    :catch_24e
    move-exception v0

    move-object v1, v0

    :try_start_250
    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseOneItemInfo -- itemType: folder, update itemInfo e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_267} :catch_292
    .catchall {:try_start_250 .. :try_end_267} :catchall_4b2

    goto :goto_24b

    :goto_268
    :try_start_268
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_288

    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseOneItemInfo -- itemType: folder, itemInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_288} :catch_290
    .catchall {:try_start_268 .. :try_end_288} :catchall_4b2

    :cond_288
    move-object/from16 v4, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    goto/16 :goto_3fb

    :catch_290
    move-exception v0

    goto :goto_295

    :catch_292
    move-exception v0

    move-object/from16 v12, v39

    :goto_295
    move-object v3, v0

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    goto/16 :goto_3e4

    :goto_29e
    move-object v1, v10

    move v6, v2

    move/from16 v2, v28

    move-object v3, v8

    move-object v4, v15

    move-object/from16 v5, p0

    move v8, v6

    move-object/from16 v6, p5

    :try_start_2a9
    invoke-static/range {v1 .. v6}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateShortcutBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Ljava/util/Map;)V
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2ac} :catch_2ae
    .catchall {:try_start_2a9 .. :try_end_2ac} :catchall_4b2

    :goto_2ac
    const/4 v1, 0x1

    goto :goto_2c8

    :catch_2ae
    move-exception v0

    move-object v1, v0

    :try_start_2b0
    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseOneItemInfo -- itemType: deep shortcut, update itemInfo e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2c7} :catch_322
    .catchall {:try_start_2b0 .. :try_end_2c7} :catchall_4b2

    goto :goto_2ac

    :goto_2c8
    if-ne v8, v1, :cond_2fa

    move-object/from16 v1, v27

    :try_start_2cc
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_2ec

    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseOneItemInfo -- itemType: deep shortcut, itemInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ec
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_2ec} :catch_2f2
    .catchall {:try_start_2cc .. :try_end_2ec} :catchall_4b2

    :cond_2ec
    move-object/from16 v4, v25

    move-object/from16 v2, v26

    goto/16 :goto_3fb

    :catch_2f2
    move-exception v0

    move-object v3, v0

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    goto/16 :goto_3e4

    :cond_2fa
    move-object/from16 v2, v26

    move-object/from16 v1, v27

    :try_start_2fe
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_31e

    sget-object v3, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseOneItemInfo -- itemType: shortcut, itemInfo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31e
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_31e} :catch_34f
    .catchall {:try_start_2fe .. :try_end_31e} :catchall_4b2

    :cond_31e
    :goto_31e
    move-object/from16 v4, v25

    goto/16 :goto_3fb

    :catch_322
    move-exception v0

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    :goto_327
    move-object v3, v0

    move-object/from16 v4, v25

    goto/16 :goto_3e4

    :cond_32c
    move-object/from16 v9, p1

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    move-object/from16 v12, v39

    :try_start_334
    invoke-static {v10}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->filterNewInstallingAppWhenBackup(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result v16
    :try_end_338
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_338} :catch_3b1
    .catchall {:try_start_334 .. :try_end_338} :catchall_4b2

    if-eqz v16, :cond_351

    :try_start_33a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Don\'t backup downloading app: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34e
    .catch Ljava/lang/Exception; {:try_start_33a .. :try_end_34e} :catch_34f
    .catchall {:try_start_33a .. :try_end_34e} :catchall_4b2

    goto :goto_31e

    :catch_34f
    move-exception v0

    goto :goto_327

    :cond_351
    :try_start_351
    invoke-static {v10}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->filterAutoInstallIconWhenBackup(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result v16
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_355} :catch_3b1
    .catchall {:try_start_351 .. :try_end_355} :catchall_4b2

    if-eqz v16, :cond_36c

    :try_start_357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Don\'t backup auto-install_icons app: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36b
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_36b} :catch_34f
    .catchall {:try_start_357 .. :try_end_36b} :catchall_4b2

    goto :goto_31e

    :cond_36c
    move/from16 v4, v28

    :try_start_36e
    invoke-static {v10, v4, v8, v3, v15}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateApplicationBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_36e .. :try_end_371} :catch_374
    .catchall {:try_start_36e .. :try_end_371} :catchall_4b2

    :goto_371
    move-object/from16 v4, v25

    goto :goto_38e

    :catch_374
    move-exception v0

    move-object v3, v0

    :try_start_376
    sget-object v4, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseOneItemInfo -- itemType: app, update itemInfo e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38d
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_38d} :catch_3b1
    .catchall {:try_start_376 .. :try_end_38d} :catchall_4b2

    goto :goto_371

    :goto_38e
    :try_start_38e
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_3fb

    sget-object v3, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseOneItemInfo -- itemType: application, itemInfo is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_38e .. :try_end_3ae} :catch_3af
    .catchall {:try_start_38e .. :try_end_3ae} :catchall_4b2

    goto :goto_3fb

    :catch_3af
    move-exception v0

    goto :goto_3e3

    :catch_3b1
    move-exception v0

    move-object/from16 v4, v25

    goto :goto_3e3

    :catch_3b5
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    move-object/from16 v12, v39

    goto :goto_3e3

    :catch_3c1
    move-exception v0

    move-object/from16 v9, p1

    move-object v12, v10

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    goto :goto_3e3

    :catch_3cc
    move-exception v0

    move-object v1, v9

    move-object v12, v10

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    move-object/from16 v9, p1

    goto :goto_3e3

    :catch_3d6
    move-exception v0

    move-object v1, v9

    move-object v2, v12

    move-object/from16 v4, v25

    goto :goto_3e0

    :catch_3dc
    move-exception v0

    move-object v4, v8

    move-object v1, v9

    move-object v2, v12

    :goto_3e0
    move-object/from16 v9, p1

    move-object v12, v10

    :goto_3e3
    move-object v3, v0

    :goto_3e4
    :try_start_3e4
    sget-object v5, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseListItemInfo: An error occurred while parsing certain data, e: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3fb
    :goto_3fb
    move-object v9, v1

    move-object v8, v4

    move-object v10, v12

    move-object v12, v2

    goto/16 :goto_5d

    :cond_401
    move-object v4, v8

    move-object v1, v9

    move-object v2, v12

    move-object v12, v10

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_40e
    :goto_40e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_432

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v9

    const/16 v10, -0x64

    if-ne v9, v10, :cond_40e

    invoke-virtual {v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_40e

    :cond_432
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v8, p3

    invoke-static {v5, v8, v6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->resetFolderItemsOldScreenIdWithFolderScreenIdForOplus60(Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/ArrayList;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x3

    invoke-virtual {v5, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x4

    invoke-virtual {v5, v3, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x6

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x5

    invoke-virtual {v5, v2, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_4d6

    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseListItemInfo: success, applicationInfoList.size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", deepShortcutInfoList.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folderInfoList.size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", widgetInfoList.size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardInfoList.size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b1
    .catch Ljava/lang/Exception; {:try_start_3e4 .. :try_end_4b1} :catch_4b5
    .catchall {:try_start_3e4 .. :try_end_4b1} :catchall_4b2

    goto :goto_4d6

    :catchall_4b2
    move-exception v0

    move-object v1, v0

    goto :goto_4d2

    :catch_4b5
    move-exception v0

    move-object v1, v0

    :try_start_4b7
    sget-object v2, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseListItemInfo: error, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d1
    .catchall {:try_start_4b7 .. :try_end_4d1} :catchall_4b2

    goto :goto_4d6

    :goto_4d2
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    :cond_4d6
    :goto_4d6
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method private static parseListScreenInfo(Landroid/database/Cursor;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
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

    if-eqz p0, :cond_b9

    :try_start_7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_9c
    .catchall {:try_start_7 .. :try_end_b} :catchall_9a

    const-string v2, "Backup"

    if-eqz v1, :cond_2a

    :try_start_f
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseListScreenInfo: cursor count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_78

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v7}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->convertToOldIdForOplus60(I)I

    move-result v4

    invoke-static {v7}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->convertToOldScreenIdForOplus60(I)I

    move-result v5

    invoke-static {v8}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->convertToOldScreenNumForOplus60(I)I

    move-result v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;-><init>(IIIII)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_74

    sget-object v3, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseOneScreenInfo -- screenInfo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_78
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_b9

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseListScreenInfo: success count is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_99} :catch_9c
    .catchall {:try_start_f .. :try_end_99} :catchall_9a

    goto :goto_b9

    :catchall_9a
    move-exception p1

    goto :goto_b5

    :catch_9c
    move-exception p1

    :try_start_9d
    sget-object v1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseListScreenInfo: error, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_9d .. :try_end_b4} :catchall_9a

    goto :goto_bb

    :goto_b5
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    :cond_b9
    :goto_b9
    if-eqz p0, :cond_be

    :goto_bb
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :cond_be
    return-object v0
.end method

.method private static parseModeLayoutParameter(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;
    .registers 5

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p0

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseModeLayoutParameter "

    const-string v2, "-- newCellCount = "

    invoke-static {v1, p1, v2}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-direct {p1, v0, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;-><init>(II)V

    return-object p1
.end method

.method public static updateApplicationBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRank(I)V

    if-eqz p2, :cond_8

    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    :cond_8
    if-eqz p3, :cond_d

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    :cond_d
    if-eqz p4, :cond_12

    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public static updateBaseBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setScreenId(I)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setContainer(I)V

    if-eqz p3, :cond_b

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static updateCardBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardType(I)V

    if-eqz p4, :cond_e

    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setServiceId(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setEditableAttrs(I)V

    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardIdentification(I)V

    invoke-virtual {p0, p5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardCategory(I)V

    invoke-virtual {p0, p6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetId(I)V

    const/4 p1, 0x0

    if-eqz p7, :cond_2a

    invoke-static {p7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_2b

    :cond_2a
    move-object p2, p1

    :goto_2b
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    goto :goto_33

    :cond_32
    move-object p3, p1

    :goto_33
    if-eqz p2, :cond_39

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    :cond_39
    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    if-eqz p7, :cond_47

    invoke-virtual {p0, p7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetProvider(Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method public static updateFolderBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;III)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateFolderBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;IIILandroid/database/Cursor;)V

    return-void
.end method

.method private static updateFolderBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;IIILandroid/database/Cursor;)V
    .registers 9

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const-string v1, "Backup"

    if-eq p1, v0, :cond_19

    sget-object v0, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    const-string v2, "ADD backup recommendId when not at simple mode!"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_10

    goto :goto_16

    :cond_10
    const/16 p4, 0x17

    invoke-interface {p5, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    :goto_16
    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRecommendId(I)V

    :cond_19
    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder(Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p1

    if-eqz p1, :cond_3e

    sget-object p1, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    const-string p4, "ADD backup span when big folder!"

    invoke-static {v1, p1, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_29

    goto :goto_2f

    :cond_29
    const/16 p1, 0xd

    invoke-interface {p5, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    :goto_2f
    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    if-nez p5, :cond_35

    goto :goto_3b

    :cond_35
    const/16 p1, 0xe

    invoke-interface {p5, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    :goto_3b
    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    :cond_3e
    return-void
.end method

.method public static updateFolderBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;Landroid/database/Cursor;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateFolderBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Lcom/android/launcher/mode/LauncherMode;IIILandroid/database/Cursor;)V

    return-void
.end method

.method private static updateShortcutBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLandroid/database/Cursor;Ljava/util/Map;)V
    .registers 10
    .param p5  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Landroid/database/Cursor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRank(I)V

    if-eqz p2, :cond_8

    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    :cond_8
    if-eqz p3, :cond_d

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    :cond_d
    const-string p1, "-"

    const-string p2, "Backup"

    if-nez p8, :cond_2a

    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconType(I)V

    if-nez p4, :cond_52

    sget-object p3, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    const-string p4, "ADD backup iconPack-Source when guardian: "

    invoke-static {p4, p5, p1, p6}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconPackage(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconResource(Ljava/lang/String;)V

    goto :goto_52

    :cond_2a
    const/16 p3, 0xa

    invoke-interface {p8, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconType(I)V

    if-nez p3, :cond_52

    const/16 p3, 0xb

    invoke-interface {p8, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0xc

    invoke-interface {p8, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->TAG:Ljava/lang/String;

    const-string p6, "ADD backup iconPack-Source when restore: "

    invoke-static {p6, p3, p1, p4}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconPackage(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconResource(Ljava/lang/String;)V

    :cond_52
    :goto_52
    invoke-static {p0, p7, p8, p9}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->updateBackupItemShortcutDetail(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;[BLandroid/database/Cursor;Ljava/util/Map;)V

    return-void
.end method

.method public static updateShortcutBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/util/Map;)V
    .registers 19
    .param p5  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateShortcutBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLandroid/database/Cursor;Ljava/util/Map;)V

    return-void
.end method

.method public static updateShortcutBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->updateShortcutBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLandroid/database/Cursor;Ljava/util/Map;)V

    return-void
.end method

.method public static updateWidgetBackupItemInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;IIILjava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_10
    move-object v2, v0

    :goto_11
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_17
    invoke-virtual {p0, v2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    invoke-virtual {p0, p3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetId(I)V

    if-eqz p4, :cond_33

    invoke-virtual {p0, p4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetProvider(Ljava/lang/String;)V

    :cond_33
    return-void
.end method
