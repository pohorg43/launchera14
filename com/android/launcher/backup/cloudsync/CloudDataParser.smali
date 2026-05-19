.class Lcom/android/launcher/backup/cloudsync/CloudDataParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOG_PARSE_MODE:Ljava/lang/String; = "parseBackupDataModeFromJson, mode:"

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_CloudDataParser"


# instance fields
.field private final mAppLayoutJson:Lcom/google/gson/JsonObject;

.field private final mContext:Landroid/content/Context;

.field private final mModeTags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mModeTags:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mAppLayoutJson:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->initModeTags()V

    return-void
.end method

.method private static getJsonElementAsBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private static getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result p0

    return p0
.end method

.method private static getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I
    .registers 7

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    if-eq p2, p0, :cond_42

    if-eqz p3, :cond_42

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is null! itemInfo is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Backup"

    invoke-static {p3, v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const-string p2, "card_category"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_64

    const-string/jumbo p2, "screen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    goto :goto_64

    :cond_54
    const-string p0, "current_launcher_mode"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result p0

    return p0

    :cond_63
    const/4 p0, 0x0

    :cond_64
    :goto_64
    return p0
.end method

.method private static getJsonElementAsLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsLong(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getJsonElementAsLong(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)J
    .registers 6

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p0

    return-wide p0

    :cond_f
    const/4 p0, -0x1

    if-eq p2, p0, :cond_42

    if-eqz p3, :cond_42

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_42

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null! itemInfo is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Backup"

    invoke-static {p2, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, -0x1

    if-eq p2, p0, :cond_42

    if-eqz p3, :cond_42

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_42

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null! itemInfo is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Backup"

    invoke-static {p2, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const-string p0, ""

    return-object p0
.end method

.method private initModeTags()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mModeTags:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    const-string v2, "LAYOUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mModeTags:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    const-string v2, "LAYOUT_DRAW"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mModeTags:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const-string v2, "LAYOUT_SIMPLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mModeTags:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    array-length v0, v0

    if-eq p0, v0, :cond_30

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "tags size is not same as mode values length"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method private parseAppLayoutFromJson()Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mAppLayoutJson:Lcom/google/gson/JsonObject;

    const-string v1, "app_list"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseThirdPartAppListFromJson(Lcom/google/gson/JsonArray;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_38

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mModeTags:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    iget-object v6, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mAppLayoutJson:Lcom/google/gson/JsonObject;

    invoke-virtual {v6, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseBackupDataModeFromJson(Lcom/android/launcher/mode/LauncherMode;Lcom/google/gson/JsonObject;)Lcom/android/launcher/backup/mode/BackupDataModel;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_38
    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mAppLayoutJson:Lcom/google/gson/JsonObject;

    const-string v1, "SHORTCUT_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method private parseBackupDataModeFromJson(Lcom/android/launcher/mode/LauncherMode;Lcom/google/gson/JsonObject;)Lcom/android/launcher/backup/mode/BackupDataModel;
    .registers 10

    const/4 v0, 0x0

    const-string v1, "Backup"

    const-string/jumbo v2, "parseBackupDataModeFromJson, mode:"

    if-nez p2, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " backupDataModeJson is null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    invoke-static {v1, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_27
    invoke-static {p2}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseHeaderLayoutInfo(Lcom/google/gson/JsonObject;)Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_52

    sget-object v4, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string v5, " dbVersion = "

    invoke-static {v2, p1, v5}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;->mDbVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", minDowngradeVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;->mMinDowngradeVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isExpVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;->mIsExpVersion:Z

    invoke-static {v5, v6, v1, v4}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_52
    const/16 v1, 0x4d

    iget v3, v3, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;->mMinDowngradeVersion:I

    if-ge v1, v3, :cond_77

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cloudDBMinDowngradeVer is over SCHEMA_VERSION!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_77
    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nparseBackupDataModeFromJson -- mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseDeviceLayoutParameter(Lcom/google/gson/JsonObject;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    invoke-static {p2}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseDrawerModeSetting(Lcom/google/gson/JsonObject;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-static {p2, p1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseModeLayoutParameter(Lcom/google/gson/JsonObject;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseListScreenInfo(Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p2, v0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseListItemInfo(Lcom/google/gson/JsonObject;Lcom/android/launcher/backup/mode/BackupDataModel;)V

    return-object v0
.end method

.method private parseDeviceLayoutParameter(Lcom/google/gson/JsonObject;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;
    .registers 15

    const-string v0, "LAYOUT_PARAMETERS"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_39f

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_39f

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "cellCountX"

    invoke-static {p1, v0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v0

    const-string v1, "cellCountY"

    invoke-static {p1, v1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v1

    const-string v2, "cellCountX_OS8"

    invoke-static {p1, v2}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v2

    const-string v3, "cellCountY_OS8"

    invoke-static {p1, v3}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v3

    const-string v4, "isCompact"

    invoke-static {p1, v4}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "current_launcher_mode"

    invoke-static {p1, v5}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v5

    const-string v6, "icon_fallen_switch"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Backup"

    if-eqz v7, :cond_5f

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_56

    sget-object v7, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "parseDeviceLayoutParameter: isIconFallenOn = "

    invoke-static {v9, v6, v8, v7}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_56
    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "sp_key_icon_fallen_switch"

    invoke-static {v7, v9, v6}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_67

    :cond_5f
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: isIconFallenOn is missing, ignore it."

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_67
    const-string v6, "dock_expand_switch"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarExpandAreaSettingEnable(Z)V

    goto :goto_89

    :cond_81
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseLauncherSettings -- isDockExpand is missing, ignore it."

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_89
    const-string/jumbo v6, "show_taskbar_switch"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a4

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnableForBackupRestore(Z)V

    goto :goto_ac

    :cond_a4
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseLauncherSettings -- isTaskbarEnable is missing, ignore it. "

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_ac
    const-string/jumbo v6, "show_allApps_switch"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c7

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarAllAppsSettingEnable(Z)V

    goto :goto_cf

    :cond_c7
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseLauncherSettings -- isAllAppsEnable is missing, ignore it. "

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_cf
    const-string/jumbo v6, "show_globalSearch_switch"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ea

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarGlobalSearchSettingEnable(Z)V

    goto :goto_f2

    :cond_ea
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseLauncherSettings -- isGlobalSearchEnable is missing, ignore it. "

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f2
    const-string/jumbo v6, "show_fileManager_switch"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10d

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarFileManagerSettingEnable(Z)V

    goto :goto_115

    :cond_10d
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseLauncherSettings -- isFileManagerEnable is missing, ignore it. "

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_115
    const-string/jumbo v6, "show_longpress_switch"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13c

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v7

    if-nez v7, :cond_131

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    if-eqz v6, :cond_12f

    goto :goto_131

    :cond_12f
    const/4 v6, 0x0

    goto :goto_132

    :cond_131
    :goto_131
    const/4 v6, 0x1

    :goto_132
    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarLongPressSettingEnable(Z)V

    goto :goto_144

    :cond_13c
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseLauncherSettings -- isLongPressEnable is missing, ignore it. "

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_144
    const-string v6, "launcher_layout_locked"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16a

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_162

    sget-object v7, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "parseDeviceLayoutParameter: isLayoutLocked = "

    invoke-static {v9, v6, v8, v7}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_162
    sget-object v7, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v9, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9, v6}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setLauncherLayoutLocked(Landroid/content/Context;Z)V

    goto :goto_172

    :cond_16a
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: isLayoutLocked is missing, ignore it."

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_172
    const-string/jumbo v6, "setting_app_startup_anim_speed"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    const-string v9, ""

    if-nez v7, :cond_17f

    move-object v7, v9

    goto :goto_183

    :cond_17f
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    :goto_183
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_193

    iget-object v10, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_19b

    :cond_193
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: animSpeed is empty."

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_19b
    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v6

    if-eqz v6, :cond_1a4

    const-string v6, "launcher_slide_down_type_simple"

    goto :goto_1a6

    :cond_1a4
    const-string v6, "launcher_slide_down_type"

    :goto_1a6
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_1c3

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_1c3

    sget-object v7, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "parseDeviceLayoutParameter: slideType = "

    invoke-static {v10, v6, v8, v7}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1c3
    const-string v6, "launcher_bubbletext_font_size"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v10, "null"

    if-eqz v7, :cond_206

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_1e4

    sget-object v11, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "parseDeviceLayoutParameter: fontSize = "

    invoke-static {v12, v7, v8, v11}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_206

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_206

    iget-object v11, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v11, v6, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    const-string v11, "last_launcher_system_font_scale"

    invoke-static {v6, v11, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    :cond_206
    const-string v6, "launcher_simple_mode_bubbletext_font_size_key"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_246

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_224

    sget-object v11, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "parseDeviceLayoutParameter: fontSimpleTextSize = "

    invoke-static {v12, v7, v8, v11}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_224
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_246

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_246

    iget-object v11, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v11, v6, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    const-string v11, "last_launcher_simple_system_font_scale"

    invoke-static {v6, v11, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    :cond_246
    const-string/jumbo v6, "super_power_save_launcher_app_list"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-nez v6, :cond_250

    goto :goto_254

    :cond_250
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    :goto_254
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27c

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27c

    const-string v6, "[]"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_276

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: superPowerSaveAppList = "

    invoke-static {v7, v9, v8, v6}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_276
    iget-object v6, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->saveSuperPowerSaveModelItemInfoList(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_284

    :cond_27c
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: superPowerSaveAppList is missing, ignore it."

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_284
    const-string/jumbo v6, "super_power_save_launcher_app_count"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a9

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_2a3

    sget-object v9, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "parseDeviceLayoutParameter: superPowerSaveAppCount = "

    invoke-static {v10, v7, v8, v9}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2a3
    iget-object v9, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2b1

    :cond_2a9
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: superPowerSaveAppCount is missing, ignore it."

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b1
    const-string v6, "display_memory_information_recent_task"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_2d4

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->saveMemoDisplaySwitch(I)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_2d4

    sget-object v7, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "parseDeviceLayoutParameter: recentTaskDisplayRamType = "

    invoke-static {v9, v6, v8, v7}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2d4
    const-string v6, "display_phone_manager_entrance"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_2f9

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    sget-object v7, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->savePhoneManagerSwitch(I)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2f9

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: recentTaskDisplayPhoneManagerType = "

    invoke-static {v7, v6, v8, p0}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2f9
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->startRestore()V

    const-string p0, "back_up_installed_default_apps"

    invoke-virtual {p1, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_321

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_31a

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: installedDefaultApps = "

    invoke-static {v7, p0, v8, v6}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31a
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->restoreInstalledApps(Ljava/lang/String;)V

    :cond_321
    const-string p0, "back_up_lock_apps"

    invoke-virtual {p1, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_342

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_33b

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parseDeviceLayoutParameter: lockAppsList = "

    invoke-static {v7, p0, v8, v6}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33b
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->restoreLockApps(Ljava/lang/String;)V

    :cond_342
    const-string p0, "back_up_is_has_super_lock_function"

    invoke-virtual {p1, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object p1

    if-eqz p0, :cond_356

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    if-eqz p0, :cond_356

    const/4 p0, 0x1

    goto :goto_357

    :cond_356
    const/4 p0, 0x0

    :goto_357
    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->restoreIsHasSuperLockFunction(Z)V

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->endRestore()V

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getCellCountForNew(IIII)[I

    move-result-object p0

    const-string/jumbo p1, "parseDeviceLayoutParameter --"

    const-string v0, " targetCellCountX = "

    invoke-static {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", targetCellCountY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, p0, v0

    const-string v1, ", newIsCompactLayout = "

    const-string v2, ", newMode = "

    invoke-static {p1, v0, v1, v4, v2}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {v5}, Lcom/android/launcher/mode/LauncherMode;->create(I)Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-direct {p1, v0, p0, v4, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;-><init>(IIZLcom/android/launcher/mode/LauncherMode;)V

    return-object p1

    :cond_39f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseDrawerModeSetting(Lcom/google/gson/JsonObject;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;
    .registers 8

    const-string v0, "DRAWER_MODE_SETTING"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const-string v0, "Backup"

    if-eqz p0, :cond_5f

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_5f

    :cond_11
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string/jumbo v1, "show_indicate_app"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    :cond_23
    const-string v1, "add_app_to_workspace"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isDefaultAddNewAppsToWorkspaceInDrawerMode()Z

    move-result v3

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    :cond_33
    const-string v1, "app_global_search"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isGlobalSearchInDrawerModeSwitchOn()Z

    move-result v1

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    :cond_43
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_59

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "parseDrawerModeSetting -- isShowIndicateApp = "

    const-string v5, ", isAddToWorkSpace = "

    const-string v6, ", isAppGlobalSearch = "

    invoke-static {v4, v2, v5, v3, v6}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v1, v0, p0}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_59
    new-instance p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;-><init>(ZZZ)V

    return-object p0

    :cond_5f
    :goto_5f
    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseDrawerModeSetting failed: drawerModeSettingJson = null"

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseHeaderLayoutInfo(Lcom/google/gson/JsonObject;)Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;
    .registers 7

    const-string v0, "dbVersion"

    invoke-static {p0, v0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "minDowngradeVersion"

    invoke-static {p0, v1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v1

    const-string v2, "isExpVersion"

    invoke-static {p0, v2}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parseHeaderLayoutInfo -- dBVersion = "

    const-string v4, ", minDowngradeVersion = "

    const-string v5, ", isExpVersion = "

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Backup"

    invoke-static {v3, p0, v4, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2b
    new-instance v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$LayoutInfo;-><init>(IIZ)V

    return-object v2
.end method

.method private parseListItemInfo(ILcom/google/gson/JsonArray;)Ljava/util/ArrayList;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/gson/JsonArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;"
        }
    .end annotation

    move/from16 v1, p1

    const-string/jumbo v2, "parseOneItemInfo -- itemType: card, itemInfo is "

    const-string/jumbo v3, "parseOneItemInfo -- itemType: widget, itemInfo is "

    const-string/jumbo v4, "parseOneItemInfo -- itemType: folder, itemInfo is "

    const-string/jumbo v5, "parseOneItemInfo -- itemType: deep shortcut, itemInfo is "

    const-string/jumbo v6, "parseOneItemInfo -- itemType: application, itemInfo is "

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "parseListItemInfo: itemType is "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", dynamicShortcutNotSupportList="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getDynamicShortcutNotSupportList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", disableAllDynamicShortcut="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getDisableAllDynamicShortcut()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v9, v8, v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_50
    move v8, v0

    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    const-string v9, "Backup"

    if-ge v8, v0, :cond_414

    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    new-instance v11, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-direct {v11}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;-><init>()V

    const-string v12, "_id"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setId(J)V

    const-string/jumbo v12, "screen"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setScreenId(I)V

    const-string/jumbo v12, "screenId"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setOldScreenId(I)V

    const-string v12, "container"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setContainer(I)V

    const-string v12, "cellX"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellX(I)V

    const-string v12, "cellY"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCellY(I)V

    const-string/jumbo v12, "restored"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setStatus(I)V

    const-string/jumbo v12, "user_id"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setUserId(I)V

    const-string/jumbo v12, "profileId"

    invoke-static {v0, v12}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setProfileId(J)V

    const-string v12, "appWidgetProvider"

    const-string v13, "className"

    const-string/jumbo v14, "rank"

    const-string/jumbo v15, "spanY"

    const-string/jumbo v10, "spanX"

    move/from16 v16, v8

    const-string v8, "intent"

    move-object/from16 v17, v7

    const-string/jumbo v7, "packageName"

    move-object/from16 v18, v6

    const-string/jumbo v6, "title"

    move-object/from16 v19, v5

    const-string v5, ", e: "

    packed-switch v1, :pswitch_data_436

    move-object/from16 v12, p0

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto/16 :goto_408

    :pswitch_e8  #0x6
    :try_start_e8
    const-string v10, "iconType"

    const/4 v12, 0x6

    invoke-static {v0, v10, v12, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIconType(I)V

    invoke-static {v0, v6, v12, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    invoke-static {v0, v8, v12, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    invoke-static {v0, v7, v12, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {v0, v14, v12, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRank(I)V

    const-string v6, "dynamicShortcutSupportState"

    invoke-static {v0, v6, v12, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "info"

    invoke-static {v0, v7, v12, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "icon"

    invoke-static {v0, v8, v12, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v6, v7, v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->updateBackupItemShortcutDetail(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_2d7

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseOneItemInfo -- itemType: shortcut, itemInfo is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_13f

    const-string v0, ", dynamicSupportState error!"

    goto :goto_15c

    :cond_13f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", backupDynamicSupportState:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", restoreDynamicSupportState:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_166} :catch_168

    goto/16 :goto_2d7

    :catch_168
    move-exception v0

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseOneItemInfo -- itemType: shortcut, itemInfo is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d7

    :pswitch_188  #0x5
    const/4 v7, 0x5

    :try_start_189
    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    invoke-static {v0, v10, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    invoke-static {v0, v15, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    const-string v6, "card_type"

    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardType(I)V

    const-string/jumbo v6, "service_id"

    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setServiceId(Ljava/lang/String;)V

    const-string/jumbo v6, "theme_card_identification"

    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardIdentification(I)V

    const-string v6, "editable_attributes"

    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setEditableAttrs(I)V

    const-string v6, "card_category"

    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setCardCategory(I)V

    const-string v6, "appWidgetId"

    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetId(I)V

    invoke-static {v0, v12, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetProvider(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d7

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1f7} :catch_1f9

    goto/16 :goto_2d7

    :catch_1f9
    move-exception v0

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d7

    :pswitch_216  #0x4
    const/4 v6, 0x4

    :try_start_217
    invoke-static {v0, v12, v6, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetProvider(Ljava/lang/String;)V

    invoke-static {v0, v10, v6, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    invoke-static {v0, v15, v6, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    const-string v10, "appWidgetId"

    invoke-static {v0, v10, v6, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setAppWidgetId(I)V

    invoke-static {v0, v7, v6, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {v0, v13, v6, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    invoke-static {v0, v8, v6, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d7

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_264} :catch_265

    goto :goto_2d7

    :catch_265
    move-exception v0

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d7

    :pswitch_281  #0x3
    const/4 v7, 0x3

    :try_start_282
    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    invoke-static {v0, v10, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    invoke-static {v0, v15, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    const-string/jumbo v6, "recommendId"

    invoke-static {v0, v6, v7, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRecommendId(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d7

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_2bb} :catch_2bc

    goto :goto_2d7

    :catch_2bc
    move-exception v0

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d7
    :goto_2d7
    move-object/from16 v8, v19

    goto/16 :goto_36f

    :pswitch_2db  #0x2
    const/4 v10, 0x2

    :try_start_2dc
    invoke-static {v0, v6, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    invoke-static {v0, v8, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setIntent(Ljava/lang/String;)V

    invoke-static {v0, v7, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {v0, v14, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRank(I)V

    const-string v6, "dynamicShortcutSupportState"

    invoke-static {v0, v6, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "info"

    invoke-static {v0, v7, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "icon"

    invoke-static {v0, v8, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v6, v7, v0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->updateBackupItemShortcutDetail(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_2d7

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_31b} :catch_352

    move-object/from16 v8, v19

    :try_start_31d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_328

    const-string v0, ", dynamicSupportState error!"

    goto :goto_345

    :cond_328
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ", backupDynamicSupportState:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", restoreDynamicSupportState:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_345
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34f
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_34f} :catch_350

    goto :goto_36f

    :catch_350
    move-exception v0

    goto :goto_355

    :catch_352
    move-exception v0

    move-object/from16 v8, v19

    :goto_355
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36f
    move-object/from16 v12, p0

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    goto/16 :goto_40a

    :pswitch_377  #0x1
    move-object/from16 v8, v19

    const/4 v10, 0x1

    :try_start_37a
    invoke-static {v0, v13, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setClassName(Ljava/lang/String;)V

    invoke-static {v0, v7, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v7
    :try_end_385
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_385} :catch_3ea

    move-object/from16 v12, p0

    :try_start_387
    iget-object v13, v12, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->mContext:Landroid/content/Context;

    invoke-static {v13, v7, v11}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->filterNotInstalledAppWhenRestore(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result v13

    if-nez v13, :cond_3af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t restore not installed app: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v7, v6, v0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    goto :goto_40d

    :cond_3af
    invoke-virtual {v11, v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setItemType(I)V

    invoke-static {v0, v6, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setTitle(Ljava/lang/String;)V

    invoke-static {v0, v14, v10, v11}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setRank(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3e3

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3d1
    .catch Ljava/lang/Exception; {:try_start_387 .. :try_end_3d1} :catch_3e6

    move-object/from16 v7, v18

    :try_start_3d3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e0
    .catch Ljava/lang/Exception; {:try_start_3d3 .. :try_end_3e0} :catch_3e1

    goto :goto_408

    :catch_3e1
    move-exception v0

    goto :goto_3ee

    :cond_3e3
    move-object/from16 v7, v18

    goto :goto_408

    :catch_3e6
    move-exception v0

    :goto_3e7
    move-object/from16 v7, v18

    goto :goto_3ee

    :catch_3ea
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_3e7

    :goto_3ee
    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_408
    move-object/from16 v5, v17

    :goto_40a
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_40d
    add-int/lit8 v0, v16, 0x1

    move-object v6, v7

    move-object v7, v5

    move-object v5, v8

    goto/16 :goto_50

    :cond_414
    move-object v5, v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_434

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseListItemInfo: itemType: "

    const-string v3, ", success size is "

    invoke-static {v2, v1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_434
    return-object v5

    nop

    :pswitch_data_436
    .packed-switch 0x1
        :pswitch_377  #00000001
        :pswitch_2db  #00000002
        :pswitch_281  #00000003
        :pswitch_216  #00000004
        :pswitch_188  #00000005
        :pswitch_e8  #00000006
    .end packed-switch
.end method

.method private parseListItemInfo(Lcom/google/gson/JsonObject;Lcom/android/launcher/backup/mode/BackupDataModel;)V
    .registers 15

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

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "APPLICATIONS"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2b

    invoke-direct {p0, v7, v6}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseListItemInfo(ILcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_2b
    const-string v6, "SHORTCUTS"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    const/4 v8, 0x2

    if-eqz v6, :cond_38

    invoke-direct {p0, v8, v6}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseListItemInfo(ILcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_38
    const-string v6, "FOLDERS"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    const/4 v9, 0x3

    if-eqz v6, :cond_45

    invoke-direct {p0, v9, v6}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseListItemInfo(ILcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_45
    const-string v6, "WIDGETS"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    const/4 v10, 0x4

    if-eqz v6, :cond_52

    invoke-direct {p0, v10, v6}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseListItemInfo(ILcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_52
    const-string v6, "URL_SHORTCUTS"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    const/4 v11, 0x6

    if-eqz v6, :cond_5f

    invoke-direct {p0, v11, v6}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseListItemInfo(ILcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v4

    :cond_5f
    const-string v6, "CARD"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v6, 0x5

    if-eqz p1, :cond_6c

    invoke-direct {p0, v6, p1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseListItemInfo(ILcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v5

    :cond_6c
    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_d1

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "parseListItemInfo: success, applicationInfoList.size = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", deepShortcutInfoList.size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", folderInfoList.size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", widgetInfoList.size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cardInfoList.size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Backup"

    invoke-static {p2, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    return-void
.end method

.method private static parseListScreenInfo(Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SCREENS"

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_c0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e
    const-string v4, "Backup"

    if-ge v3, v2, :cond_a3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    const-string/jumbo v7, "screenId"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    const-string/jumbo v8, "screenNum"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    const-string/jumbo v9, "new_id"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    const-string/jumbo v10, "screenRank"

    invoke-virtual {v5, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const/4 v10, -0x1

    if-eqz v6, :cond_55

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    move v12, v6

    goto :goto_56

    :cond_55
    move v12, v10

    :goto_56
    if-eqz v7, :cond_5e

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    move v13, v6

    goto :goto_5f

    :cond_5e
    move v13, v10

    :goto_5f
    if-eqz v8, :cond_67

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    move v14, v6

    goto :goto_68

    :cond_67
    move v14, v10

    :goto_68
    if-eqz v9, :cond_70

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    move v15, v6

    goto :goto_71

    :cond_70
    move v15, v10

    :goto_71
    if-eqz v5, :cond_77

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v10

    :cond_77
    move/from16 v16, v10

    new-instance v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;-><init>(IIIII)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_9c

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseOneScreenInfo -- screenInfo is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    :cond_a3
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_c0

    sget-object v1, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseListScreenInfo: success count is "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    return-object v0
.end method

.method private static parseModeLayoutParameter(Lcom/google/gson/JsonObject;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;
    .registers 6

    const-string v0, "MODE_PARAMETERS"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_54

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "cellCountX"

    invoke-static {p0, v0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v0

    const-string v1, "cellCountY"

    invoke-static {p0, v1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v1

    const-string v2, "cellCountX_OS8"

    invoke-static {p0, v2}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v2

    const-string v3, "cellCountY_OS8"

    invoke-static {p0, v3}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getJsonElementAsInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getCellCountForNew(IIII)[I

    move-result-object p0

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseModeLayoutParameter "

    const-string v2, "-- targetCellCount = "

    invoke-static {v1, p1, v2}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-direct {p1, v0, p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;-><init>(II)V

    return-object p1

    :cond_54
    :goto_54
    const-string/jumbo p0, "parseModeLayoutParameter failed: layoutParameterJson = null"

    sget-object p1, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string v0, "Backup"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordRestoreLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private parseThirdPartAppListFromJson(Lcom/google/gson/JsonArray;)V
    .registers 6

    const-string p0, "Backup"

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_43

    :cond_b
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_25

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_25
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_42

    sget-object p1, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "parseThirdPartAppListFromJson -- appList.size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void

    :cond_43
    :goto_43
    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseThirdPartAppListFromJson -- appListJson = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRestoreModeData(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/backup/mode/BackupDataModel;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseAppLayoutFromJson()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/backup/mode/BackupDataModel;

    return-object p0
.end method

.method public getRestoreModeDataList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->parseAppLayoutFromJson()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-static {v5}, Lcom/android/launcher/backup/mode/BackupDataModel;->checkLayoutMapEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual {v5, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_28
    return-object v0
.end method
