.class public Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;
.super Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncService;
.source ""


# static fields
.field public static final KEY_HANDLE_MSG:Ljava/lang/String; = "handle_msg_result_msg"

.field public static final KEY_HANDLE_MSG_RESULT:Ljava/lang/String; = "handle_msg_result"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRestoreSucceed:Z

.field private mIsStartSucceed:Z

.field private mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

.field private mOnlyHasStandardData:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;

    const-string v0, "BR-Launcher_LauncherCloudSyncAgent"

    sput-object v0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    return-void
.end method

.method private getBackupDataModeMapFromDB()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/backup/LauncherDBParser;->getBackupDataModeMapFromDB(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method private getRestoreDataModeListFromJson(Lcom/google/gson/JsonObject;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;

    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;-><init>(Lcom/google/gson/JsonObject;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getRestoreModeDataList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_55

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    if-ne v1, v3, :cond_55

    sget-object v1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string v3, "getRestoreDataFromJson，No drawer table, use standard table data as drawer data."

    invoke-static {v1, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {v1}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->setLayoutMap(Landroid/util/SparseArray;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    :cond_55
    return-object p1
.end method


# virtual methods
.method public cancel(Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p1, "Backup"

    const-string v0, "cancel! "

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    const-string v0, "Backup"

    if-eqz p1, :cond_f

    sget-object p1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string v1, "getAllData -- begin!"

    invoke-static {v0, p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->getBackupDataModeMapFromDB()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p1, "getAllData -- end! No data found to backup!"

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_22
    new-instance v1, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;

    iget-object v3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncService;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generatorAppLayoutToJson(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_75

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Le2/c;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "add_metadata_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "add_metadata_md5"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllData -- end! backupBundle:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_75
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p1, "getAllData -- end! GeneratorAppLayoutJsonData failed!"

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Lcom/heytap/cloud/sdk/AgentService;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onMetaDataBackupEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 6

    const-string p0, "Backup"

    if-eqz p1, :cond_34

    const-string p2, "handle_msg_result"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    sget-object v0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMetaDataBackupEnd -- result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_3c

    const-string p2, "handle_msg_result_msg"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onMetaDataBackupEnd -- msg = "

    invoke-static {p2, p1, p0, v0}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_34
    sget-object p1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onMetaDataBackupEnd -- result = false"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onMetaDataBackupStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p1, "Backup"

    const-string/jumbo p2, "onMetaDataBackupStart"

    invoke-static {p1, p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onMetaDataRecoveryEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z
    .registers 6

    const-string p2, "Backup"

    if-eqz p1, :cond_13

    const-string v0, "handle_msg_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMetaDataRecoveryEnd -- result = "

    invoke-static {v2, v0, p2, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_13
    sget-object v0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMetaDataRecoveryEnd -- result = false"

    invoke-static {p2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    iget-boolean p2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_29

    iget-object p2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    invoke-virtual {p2, v1, v2, v0}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->onRestoreEnd(Landroid/content/Context;ZZ)V

    :cond_29
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    iput-boolean p2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    iput-boolean p2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "restore_started"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "cloudRecoveryStatusChanged"

    invoke-static {p0, p2, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setEndCloudRestore()V

    if-nez p1, :cond_57

    sget-object p0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    sget-object p1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p2, "failed, bundle is null"

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    return v0
.end method

.method public onMetaDataRecoveryStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->setStartCloudRestore()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p2, "Backup"

    const-string/jumbo v0, "onMetaDataRecoveryStart"

    invoke-static {p2, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    new-instance p1, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    invoke-direct {p1}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x1

    const-string/jumbo v0, "restore_started"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "cloudRecoveryStatusChanged"

    invoke-static {p0, p2, p1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public processBackupResultFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processBackupResultFromServer, opType:"

    const-string p3, "Backup"

    invoke-static {p2, p1, p3, p0}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;
    .registers 7

    const/4 p1, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_bb

    const-string v0, "Backup"

    if-eqz p3, :cond_11

    :try_start_9
    sget-object p3, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processRecoveryDataFromServer -- begin!"

    invoke-static {v0, p3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz p2, :cond_ab

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result p3

    if-nez p3, :cond_1b

    goto/16 :goto_ab

    :cond_1b
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p3

    check-cast p3, Lcom/google/gson/JsonObject;

    if-nez p3, :cond_34

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processRecoveryDataFromServer -- end! appLayoutData is null!"

    invoke-static {p0, p2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string p3, "failed, appLayoutData is null"

    invoke-virtual {p2, p0, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_34
    invoke-direct {p0, p3}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->getRestoreDataModeListFromJson(Lcom/google/gson/JsonObject;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4e

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processRecoveryDataFromServer -- end! restore mode data list is empty!"

    invoke-static {p0, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string p3, "failed, mode data is empty"

    invoke-virtual {p2, p0, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4e
    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    invoke-virtual {v1, p3}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->setRestoreData(Ljava/util/List;)V

    iget-object p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    invoke-virtual {p3, v1, v2}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->onRestoreStart(Landroid/content/Context;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    if-eqz p3, :cond_86

    iget-object p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->onRestoringReady(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->onRestoring(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    iget-object p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;

    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->onRestoringComplete(Landroid/content/Context;)V

    iget-boolean p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    if-eqz p3, :cond_86

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "processRecoveryDataFromServer -- end! mIsRestoreSucceed true!"

    invoke-static {v0, p0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_86
    sget-object p2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    sget-object p3, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed, start restore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    :cond_ab
    :goto_ab
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processRecoveryDataFromServer -- end! jsonArray is null!"

    invoke-static {p0, p2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string p3, "failed, jsonArray is null"

    invoke-virtual {p2, p0, p3}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_ba} :catch_bb

    return-object p1

    :catch_bb
    move-exception p0

    sget-object p2, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "processRecoveryDataFromServer -- end! e: "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    const-string v0, "failed, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e9
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processRecoveryDataFromServer -- end! mIsRestoreSucceed false!"

    invoke-static {p0, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
