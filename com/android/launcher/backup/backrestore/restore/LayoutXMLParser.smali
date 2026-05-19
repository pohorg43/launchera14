.class public Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOG_PARSER:Ljava/lang/String; = "parseBackupDataModeFromXml "

.field public static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutXMLParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestoreModeDataList(Landroid/util/ArrayMap;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/io/FileDescriptor;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_62

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/FileDescriptor;

    invoke-static {v5}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->isXmlAvailable(Ljava/io/FileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_39

    sget-object v5, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRestoreModeDataList, mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " xmlModeRestoreFile is not available"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Backup"

    invoke-static {v6, v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_39
    sget-object v6, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\ngetRestoreModeDataList -- mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->getXmlContent(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseBackupDataModeFromXml(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Lcom/android/launcher/backup/mode/BackupDataModel;

    move-result-object v5

    if-eqz v5, :cond_5f

    invoke-virtual {v5, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_62
    return-object v0
.end method

.method private static parseBackupDataModeFromXml(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Lcom/android/launcher/backup/mode/BackupDataModel;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Backup"

    const/4 v3, 0x0

    const-string/jumbo v4, "parseBackupDataModeFromXml "

    if-nez v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mode -- xmlModeContent is null!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseHeaderLayoutInfo(Ljava/lang/String;)Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;

    move-result-object v5

    if-nez v5, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mode -- layoutInfo is null!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mode --"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dbVersion = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;->mDbVersion:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", minDowngradeVersion = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;->mMinDowngradeVersion:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isExpVersion = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;->mIsExpVersion:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", dynamicShortcutNotSupportList="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getDynamicShortcutNotSupportList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", disableAllDynamicShortcut="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getDisableAllDynamicShortcut()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v7, v6, v2}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x4d

    iget v5, v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;->mMinDowngradeVersion:I

    if-ge v2, v5, :cond_ca

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mode -- cloudDBMinDowngradeVer is over SCHEMA_VERSION!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_ca
    new-instance v2, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_fa
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    new-instance v12, Ljava/io/StringReader;

    invoke-direct {v12, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_10e
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v1, v14, :cond_314

    if-eq v1, v12, :cond_116

    goto :goto_174

    :cond_116
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v12, "DRAWER_MODE_SETTING"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12a

    invoke-static {v11}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseDrawerModeSetting(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    goto :goto_174

    :cond_12a
    const-string v12, "MODE_PARAMETERS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13a

    invoke-static {v11, v0}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseModeLayoutParameter(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    goto :goto_174

    :cond_13a
    const-string/jumbo v12, "screen"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14b

    invoke-static {v11}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseOneScreenInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_174

    :cond_14b
    const-string v12, "application"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_178

    invoke-static {v11}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseOneItemInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setItemType(I)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v12, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "parseOneItemInfo -- itemType: application, itemInfo is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_174
    move-object/from16 v16, v2

    goto/16 :goto_30a

    :cond_178
    const-string/jumbo v12, "shortcut"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_17f} :catch_336

    const-string v13, ", restoreDynamicSupportState:"

    const-string v14, ", backupDynamicSupportState:"

    const-string v15, ", dynamicSupportState error!"

    if-eqz v12, :cond_1d0

    :try_start_187
    invoke-static {v11}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseOneItemInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->updateBackupItemShortcutDetail(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    move-object/from16 p1, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string/jumbo v2, "parseOneItemInfo -- itemType: deep shortcut, itemInfo is "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_1ab

    move-object/from16 v1, p1

    goto :goto_1c4

    :cond_1ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c4
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30a

    :cond_1d0
    move-object/from16 v16, v2

    move-object/from16 p1, v15

    const-string v0, "folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    invoke-static {v11}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseOneItemInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parseOneItemInfo -- itemType: folder, itemInfo is "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30a

    :cond_1fc
    const-string/jumbo v0, "widget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_225

    invoke-static {v11}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseOneItemInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parseOneItemInfo -- itemType: widget, itemInfo is "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30a

    :cond_225
    const-string/jumbo v0, "url_shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_273

    invoke-static {v11}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseOneItemInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->updateBackupItemShortcutDetail(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseOneItemInfo -- itemType: shortcut, itemInfo is "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_24e

    move-object/from16 v15, p1

    goto :goto_267

    :cond_24e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_267
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30a

    :cond_273
    const-string v0, "card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30a

    invoke-static {v11}, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->parseOneItemInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    move-result-object v0

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v1
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_28b} :catch_336

    const-string v2, ", isisCardAvailable: "

    if-nez v1, :cond_2cd

    :try_start_28f
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v1

    if-nez v1, :cond_29a

    goto :goto_2cd

    :cond_29a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parseOneItemInfo -- restore an unavailable card, CardType: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30a

    :cond_2cd
    :goto_2cd
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v1

    if-nez v1, :cond_2de

    invoke-static {}, Lcom/android/launcher3/card/LauncherCardUtil;->getUncertainLauncherCardInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2de
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parseOneItemInfo -- itemType: card, itemInfo is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30a
    :goto_30a
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto/16 :goto_10e

    :cond_314
    move-object/from16 v16, v2

    invoke-virtual {v3, v13, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3, v12, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {v3, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setLayoutMap(Landroid/util/SparseArray;)V
    :try_end_334
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_334} :catch_336

    move-object v2, v0

    goto :goto_340

    :catch_336
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseBackupDataModeFromXml error occur, e: "

    invoke-static {v2, v0, v1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_340
    return-object v2
.end method

.method public static parseDeviceLayoutParameter(Landroid/content/Context;Ljava/io/FileDescriptor;Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;
    .registers 28

    move-object/from16 v0, p0

    const-string/jumbo v1, "recommend_switch"

    const-string v2, "is_pull_up_gsearch"

    const-string v3, "key_enable_branch_search_notification"

    const-string/jumbo v4, "show_inputmethod_in_drawer_switch"

    const-string v5, "key_is_show_search_box"

    const-string v6, "is_double_click_lock"

    const-string/jumbo v7, "super_power_save_launcher_app_count"

    const-string v8, "launcher_simple_mode_bubbletext_font_size_key"

    const-string v9, "launcher_bubbletext_font_size"

    const-string/jumbo v10, "setting_app_startup_anim_speed"

    sget-object v11, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v11}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v11

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->startRestore()V

    :try_start_27
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->getXmlContent(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_5e9

    const-string v14, "Backup"

    if-nez v13, :cond_5c1

    :try_start_33
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v13

    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    new-instance v15, Ljava/io/StringReader;

    invoke-direct {v15, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_47} :catch_5e9

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_54
    if-eq v12, v15, :cond_623

    const/4 v15, 0x2

    if-eq v12, v15, :cond_5f

    :goto_59
    move-object/from16 v23, v13

    move-object/from16 v13, p2

    goto/16 :goto_5b6

    :cond_5f
    :try_start_5f
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_5bf

    const/4 v15, 0x0

    :goto_64
    if-ge v15, v12, :cond_5b2

    move/from16 p1, v11

    :try_start_68
    invoke-interface {v13, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v22, v12

    invoke-interface {v13, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, v13

    const-string v13, "cellCountX"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_81

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto :goto_b4

    :cond_81
    const-string v13, "cellCountY"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8e

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto :goto_b4

    :cond_8e
    const-string v13, "cellCountX_OS8"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    goto :goto_b4

    :cond_9b
    const-string v13, "cellCountY_OS8"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto :goto_b4

    :cond_a8
    const-string v13, "isCompact"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b7

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    :goto_b4
    move/from16 v11, p1

    goto :goto_c3

    :cond_b7
    const-string v13, "current_launcher_mode"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :goto_c3
    move-object/from16 v13, p2

    move/from16 v24, v15

    goto/16 :goto_5a6

    :cond_c9
    const-string v13, "icon_fallen_switch"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f6

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v15

    const-string/jumbo v15, "parseDeviceLayoutParameter: iconFallenOn = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "sp_key_icon_fallen_switch"

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v0, v11, v12}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_3d3

    :cond_f6
    move/from16 v24, v15

    const-string v13, "dock_expand_switch"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_124

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: taskbarExpandAreaEnable = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarExpandAreaSettingEnable(Z)V

    goto/16 :goto_3d3

    :cond_124
    const-string/jumbo v13, "show_taskbar_switch"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_151

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: taskbarEnable = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnableForBackupRestore(Z)V

    goto/16 :goto_3d3

    :cond_151
    const-string/jumbo v13, "show_allApps_switch"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17e

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: allAppsEnable = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarAllAppsSettingEnable(Z)V

    goto/16 :goto_3d3

    :cond_17e
    const-string/jumbo v13, "show_globalSearch_switch"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ab

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: globalSearchEnable = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarGlobalSearchSettingEnable(Z)V

    goto/16 :goto_3d3

    :cond_1ab
    const-string/jumbo v13, "show_fileManager_switch"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d8

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: fileManagerEnable = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarFileManagerSettingEnable(Z)V

    goto/16 :goto_3d3

    :cond_1d8
    const-string/jumbo v13, "show_longpress_switch"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: longPressEnable = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarLongPressSettingEnable(Z)V

    goto/16 :goto_3d3

    :cond_205
    const-string v13, "launcher_layout_locked"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_218

    sget-object v11, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v0, v12}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setLauncherLayoutLocked(Landroid/content/Context;Z)V

    goto/16 :goto_3d3

    :cond_218
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_227

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v10, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3d3

    :cond_227
    const-string v13, "launcher_slide_down_type"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_59b

    const-string v13, "launcher_slide_down_type_simple"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_239

    goto/16 :goto_59b

    :cond_239
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_263

    invoke-static {v0, v9, v12}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "last_launcher_system_font_scale"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v11, v13}, Lcom/android/common/util/LauncherSharedPrefs;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    sget-object v11, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v11, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/common/util/FontManager;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/common/util/FontManager;->setFontSizeToSettings(IZ)V

    goto/16 :goto_3d3

    :cond_263
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27d

    invoke-static {v0, v8, v12}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "last_launcher_simple_system_font_scale"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v11, v12}, Lcom/android/common/util/LauncherSharedPrefs;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    goto/16 :goto_3d3

    :cond_27d
    const-string/jumbo v13, "super_power_save_launcher_app_list"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2bf

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_2a3

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: superPowerSaveAppList = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3d3

    const-string/jumbo v11, "null"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d3

    const-string v11, "[]"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d3

    invoke-static {v0, v12}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->saveSuperPowerSaveModelItemInfoList(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3d3

    :cond_2bf
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2eb

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_2e2

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: superPowerSaveAppCount = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v0, v7, v11}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3d3

    :cond_2eb
    const-string v13, "display_memory_information_recent_task"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31d

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_310

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: recentTaskDisplayRamType = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_310
    invoke-static/range {p0 .. p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->saveMemoDisplaySwitch(I)Z

    goto/16 :goto_3d3

    :cond_31d
    const-string v13, "display_phone_manager_entrance"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_351

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_342

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: recentTaskDisplayPhoneManagerType = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_342
    sget-object v11, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v11, v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->savePhoneManagerSwitch(I)Z

    goto/16 :goto_3d3

    :cond_351
    const-string v13, "back_up_installed_default_apps"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_376

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: installedDefaultApps = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_376
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->restoreInstalledApps(Ljava/lang/String;)V

    goto :goto_3d3

    :cond_37e
    const-string v13, "back_up_lock_apps"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3ab

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_3a3

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: lockAppsList = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a3
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->restoreLockApps(Ljava/lang/String;)V

    goto :goto_3d3

    :cond_3ab
    const-string v13, "back_up_is_has_super_lock_function"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d7

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: isHasSuperLockFunction = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    :cond_3d3
    :goto_3d3
    move-object/from16 v13, p2

    goto/16 :goto_5a4

    :cond_3d7
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e5

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v0, v6, v11}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3d3

    :cond_3e5
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_405

    sget-boolean v13, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v13, :cond_405

    sget-object v13, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v13}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v13

    if-eqz v13, :cond_405

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "key_store_from_backup"

    const/4 v13, 0x1

    invoke-static {v0, v12, v13}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0, v5, v11}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3d3

    :cond_405
    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_413

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v0, v4, v11}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3d3

    :cond_413
    const-string v13, "is_search_entry_enable"

    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_424

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Lcom/android/launcher3/search/SearchEntry;->setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V

    goto :goto_3d3

    :cond_424
    const-string/jumbo v13, "oplus_customize_personalized_search_switch_status"

    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_45b

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v11

    if-eqz v11, :cond_3d3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_450

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: customize personalized search switch status = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_450
    sget-object v11, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v0, v12}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearch(Landroid/content/Context;Z)V

    goto/16 :goto_3d3

    :cond_45b
    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_48c

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v13

    if-eqz v13, :cond_48c

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "readLauncherSettingsFromFile -- branch search notification = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v0, v3, v11}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v12, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v12, v0, v11}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearchNotification(Landroid/content/Context;Z)V

    goto/16 :goto_3d3

    :cond_48c
    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4c2

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v13

    if-eqz v13, :cond_4c2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_4b9

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: pull up google search = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b9
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v0, v2, v11}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_3d3

    :cond_4c2
    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4ff

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_4e5

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: recommend switch = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e5
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v1, v12}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v11

    if-eqz v11, :cond_3d3

    invoke-static/range {p0 .. p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->restoreRecommendValue(Z)V

    goto/16 :goto_3d3

    :cond_4ff
    const-string v13, "folder_content_recommend_switch"

    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_533

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v13

    if-eqz v13, :cond_533

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_52a

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: folder recommend content switch = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52a
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v0, v11}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    goto/16 :goto_3d3

    :cond_533
    const-string/jumbo v13, "used_drawer_mode"

    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_564

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_559

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: used drawer mode = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_559
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sget-object v12, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v12, v0, v11}, Lcom/android/launcher/guide/DrawerGuideManager;->setUsedDrawerMode(Landroid/content/Context;Z)V

    goto/16 :goto_3d3

    :cond_564
    const-string/jumbo v13, "max_drawer_guide_show_count"

    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_595

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_58a

    sget-object v11, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseDeviceLayoutParameter: drawer guide count = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v11, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_58a
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v12, v0, v11}, Lcom/android/launcher/guide/DrawerGuideManager;->setDrawerGuideCount(Landroid/content/Context;I)V

    goto/16 :goto_3d3

    :cond_595
    move-object/from16 v13, p2

    invoke-virtual {v13, v0, v11, v12}, Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;->readLauncherSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a4

    :cond_59b
    :goto_59b
    move-object/from16 v13, p2

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v0, v11}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)V
    :try_end_5a4
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_5a4} :catch_5ae

    :goto_5a4
    move/from16 v11, p1

    :goto_5a6
    add-int/lit8 v15, v24, 0x1

    move/from16 v12, v22

    move-object/from16 v13, v23

    goto/16 :goto_64

    :catch_5ae
    move-exception v0

    move/from16 v11, p1

    goto :goto_5f3

    :cond_5b2
    move/from16 p1, v11

    goto/16 :goto_59

    :goto_5b6
    :try_start_5b6
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_5ba
    .catch Ljava/lang/Exception; {:try_start_5b6 .. :try_end_5ba} :catch_5bf

    const/4 v15, 0x1

    move-object/from16 v13, v23

    goto/16 :goto_54

    :catch_5bf
    move-exception v0

    goto :goto_5f3

    :cond_5c1
    :try_start_5c1
    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseDeviceLayoutParameter setDrawerAndStandardDeviceInfoCompatOplus32 4x6 when don\'t have parameters backup file"

    invoke-static {v14, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->setDrawerAndStandardDeviceInfoCompatOplus32()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [I

    const/4 v3, 0x0

    aget v16, v2, v3

    check-cast v1, [I

    const/4 v2, 0x1

    aget v17, v1, v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20
    :try_end_5e2
    .catch Ljava/lang/Exception; {:try_start_5c1 .. :try_end_5e2} :catch_5e9

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    goto :goto_623

    :catch_5e9
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v21, v3

    :goto_5f3
    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseDeviceLayoutParameter setDrawerAndStandardDeviceInfoCompatOplus32 4x6 when don\'t have parameters backup file, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->setDrawerAndStandardDeviceInfoCompatOplus32()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [I

    const/4 v3, 0x0

    aget v16, v2, v3

    check-cast v1, [I

    const/4 v2, 0x1

    aget v17, v1, v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    :cond_623
    :goto_623
    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->restoreIsHasSuperLockFunction(Z)V

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->endRestore()V

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getCellCountForNew(IIII)[I

    move-result-object v0

    const-string/jumbo v1, "parseDeviceLayoutParameter --"

    const-string v2, " targetCellCountX = "

    invoke-static {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetCellCountY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, v0, v2

    const-string v3, ", newIsCompactLayout = "

    const-string v5, ", newMode = "

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v11}, Lcom/android/launcher/mode/LauncherMode;->create(I)Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;-><init>(IIZLcom/android/launcher/mode/LauncherMode;)V

    return-object v1
.end method

.method private static parseDrawerModeSetting(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;
    .registers 9

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isDefaultAddNewAppsToWorkspaceInDrawerMode()Z

    move-result v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isGlobalSearchInDrawerModeSwitchOn()Z

    move-result v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v3, v2, :cond_42

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "show_indicate_app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3f

    :cond_26
    const-string v7, "add_app_to_workspace"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3f

    :cond_33
    const-string v7, "app_global_search"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_42
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_5a

    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseDrawerModeSetting -- isShowIndicateApp: "

    const-string v3, ", isAddToWorkSpace: "

    const-string v5, ", isAppGlobalSearch: "

    invoke-static {v2, v4, v3, v0, v5}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Backup"

    invoke-static {v2, v1, v3, p0}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_5a
    new-instance p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;-><init>(ZZZ)V

    return-object p0
.end method

.method private static parseHeaderLayoutInfo(Ljava/lang/String;)Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;
    .registers 10

    const-string v0, "Backup"

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    :goto_16
    const/4 v2, 0x1

    if-eq p0, v2, :cond_b7

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1e

    goto/16 :goto_99

    :cond_1e
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "LAYOUT"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_99

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_32
    if-ge v2, p0, :cond_66

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dbVersion"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_63

    :cond_49
    const-string/jumbo v8, "minDowngradeVersion"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_63

    :cond_57
    const-string v8, "isExpVersion"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_63
    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_66
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_93

    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseHeaderLayoutInfo -- dBVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minDowngradeVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isExpVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    new-instance p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;-><init>(IIZ)V

    return-object p0

    :cond_99
    :goto_99
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9d} :catch_9f

    goto/16 :goto_16

    :catch_9f
    move-exception p0

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseHeaderLayoutInfo error occur, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_c5

    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseHeaderLayoutInfo failed, headerLayoutInfo is null"

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseModeLayoutParameter(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v1, v6, :cond_4a

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cellCountX"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_47

    :cond_21
    const-string v8, "cellCountY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_47

    :cond_2e
    const-string v8, "cellCountX_OS8"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_47

    :cond_3b
    const-string v8, "cellCountY_OS8"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4a
    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getCellCountForNew(IIII)[I

    move-result-object p0

    aget v1, p0, v0

    if-eqz v1, :cond_7b

    const/4 v1, 0x1

    aget v2, p0, v1

    if-nez v2, :cond_58

    goto :goto_7b

    :cond_58
    sget-object v2, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parseModeLayoutParameter "

    const-string v4, "-- targetCellCount = "

    invoke-static {v3, p1, v4}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    aget v0, p0, v0

    aget p0, p0, v1

    invoke-direct {p1, v0, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;-><init>(II)V

    return-object p1

    :cond_7b
    :goto_7b
    const-string/jumbo p1, "parseModeLayoutParameter failed, targetCellCount = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string v0, "Backup"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseOneItemInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;
    .registers 8

    new-instance v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-direct {v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21e

    :try_start_c
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setId(J)V

    goto/16 :goto_21a

    :cond_25
    const-string/jumbo v5, "title"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {v0, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_21a

    :cond_33
    const-string v5, "intent"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v0, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    goto/16 :goto_21a

    :cond_40
    const-string/jumbo v5, "packageName"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v0, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    goto/16 :goto_21a

    :cond_4e
    const-string v5, "className"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-virtual {v0, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    goto/16 :goto_21a

    :cond_5b
    const-string v5, "container"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setContainer(I)V

    goto/16 :goto_21a

    :cond_6c
    const-string/jumbo v5, "screenId"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setOldScreenId(I)V

    goto/16 :goto_21a

    :cond_7e
    const-string/jumbo v5, "screen"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setScreenId(I)V

    goto/16 :goto_21a

    :cond_90
    const-string v5, "cellX"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellX(I)V

    goto/16 :goto_21a

    :cond_a1
    const-string v5, "cellY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellY(I)V

    goto/16 :goto_21a

    :cond_b2
    const-string/jumbo v5, "spanX"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    goto/16 :goto_21a

    :cond_c4
    const-string/jumbo v5, "spanY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    goto/16 :goto_21a

    :cond_d6
    const-string/jumbo v5, "rank"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRank(I)V

    goto/16 :goto_21a

    :cond_e8
    const-string v5, "appWidgetId"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetId(I)V

    goto/16 :goto_21a

    :cond_f9
    const-string v5, "iconType"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10a

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconType(I)V

    goto/16 :goto_21a

    :cond_10a
    const-string v5, "iconPackage"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    invoke-virtual {v0, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconPackage(Ljava/lang/String;)V

    goto/16 :goto_21a

    :cond_117
    const-string v5, "iconResource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    invoke-virtual {v0, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconResource(Ljava/lang/String;)V

    goto/16 :goto_21a

    :cond_124
    const-string v5, "dynamicShortcutSupportState"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setDynamicShortcutSupportState(I)V

    goto/16 :goto_21a

    :cond_135
    const-string v5, "info"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-static {v4}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutInfoFromStr(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto/16 :goto_21a

    :cond_146
    const-string v5, "icon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_157

    invoke-static {v4}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutIconFromStr(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setShortcutIcon([B)V

    goto/16 :goto_21a

    :cond_157
    const-string/jumbo v5, "user_id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_169

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setUserId(I)V

    goto/16 :goto_21a

    :cond_169
    const-string/jumbo v5, "profileId"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17c

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setProfileId(J)V

    goto/16 :goto_21a

    :cond_17c
    const-string/jumbo v5, "restored"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18e

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setStatus(I)V

    goto/16 :goto_21a

    :cond_18e
    const-string v5, "appWidgetProvider"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19b

    invoke-virtual {v0, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetProvider(Ljava/lang/String;)V

    goto/16 :goto_21a

    :cond_19b
    const-string v5, "card_type"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ab

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardType(I)V

    goto :goto_21a

    :cond_1ab
    const-string/jumbo v5, "recommendId"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bc

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRecommendId(I)V

    goto :goto_21a

    :cond_1bc
    const-string/jumbo v5, "service_id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c9

    invoke-virtual {v0, v4}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setServiceId(Ljava/lang/String;)V

    goto :goto_21a

    :cond_1c9
    const-string v5, "card_category"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardCategory(I)V

    goto :goto_21a

    :cond_1d9
    const-string v5, "editable_attributes"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setEditableAttrs(I)V

    goto :goto_21a

    :cond_1e9
    const-string/jumbo v5, "theme_card_identification"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21a

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardIdentification(I)V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f9} :catch_1fa

    goto :goto_21a

    :catch_1fa
    move-exception v3

    sget-object v4, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseOneItemInfo itemInfo is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21a
    :goto_21a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_21e
    return-object v0
.end method

.method private static parseOneScreenInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;
    .registers 10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v7, v2

    move v8, v7

    :goto_8
    if-ge v1, v0, :cond_72

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_ac

    goto :goto_50

    :sswitch_21
    const-string/jumbo v6, "screenNum"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_50

    :cond_2b
    const/4 v5, 0x3

    goto :goto_50

    :sswitch_2d
    const-string/jumbo v6, "screenId"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_50

    :cond_37
    const/4 v5, 0x2

    goto :goto_50

    :sswitch_39
    const-string/jumbo v6, "screenRank"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto :goto_50

    :cond_43
    const/4 v5, 0x1

    goto :goto_50

    :sswitch_45
    const-string/jumbo v6, "new_id"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    packed-switch v5, :pswitch_data_be

    goto :goto_6f

    :pswitch_54  #0x3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8, v3}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getRestoredScreenRankCompatOplus60(II)I

    move-result v8

    goto :goto_6f

    :pswitch_5d  #0x2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v7, v3}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getRestoredIdCompatOplus60(II)I

    move-result v7

    goto :goto_6f

    :pswitch_66  #0x1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_6f

    :pswitch_6b  #0x0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_72
    if-eq v7, v2, :cond_76

    if-ne v8, v2, :cond_8a

    :cond_76
    const-string p0, "can not parse new id or rank! id = "

    const-string v0, ", rank = "

    invoke-static {p0, v7, v0, v8}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    const-string v1, "Backup"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v1, v0, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    new-instance p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;-><init>(IIIII)V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/LayoutXMLParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseOneScreenInfo -- screenInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_ac
    .sparse-switch
        -0x3e841be6 -> :sswitch_45
        -0x18e19548 -> :sswitch_39
        -0x1888a159 -> :sswitch_2d
        0x7748b7a -> :sswitch_21
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_6b  #00000000
        :pswitch_66  #00000001
        :pswitch_5d  #00000002
        :pswitch_54  #00000003
    .end packed-switch
.end method
