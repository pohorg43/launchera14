.class Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BR-Launcher_CloudDataGenerator"


# instance fields
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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mModeTags:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->initModeTags()V

    return-void
.end method

.method private static generateBackupDataModeToJson(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupDataModel;)Lcom/google/gson/JsonObject;
    .registers 9

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_1d

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string p1, "Backup"

    const-string v0, "generateBackupDataModeToJson failed, layoutMap is null!"

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    sget-object v4, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v5, "\ngenerateBackupDataModeToJson -- mode:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {p0, v4, v0}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateDeviceLayoutParameter(Landroid/content/Context;Lcom/google/gson/JsonObject;Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    invoke-static {v4}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateHeaderLayoutInfo(Lcom/google/gson/JsonObject;)V

    invoke-static {v4, v1}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateDrawerModeSetting(Lcom/google/gson/JsonObject;Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    invoke-static {v4, v2, p0}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateModeLayoutParameter(Lcom/google/gson/JsonObject;Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;Lcom/android/launcher/mode/LauncherMode;)V

    invoke-static {v4, v3}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateModeLayoutMap(Lcom/google/gson/JsonObject;Landroid/util/SparseArray;)V

    return-object v4
.end method

.method private static generateDeviceLayoutParameter(Landroid/content/Context;Lcom/google/gson/JsonObject;Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V
    .registers 14

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    iget v3, p2, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v3, p2, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    const/4 v5, 0x1

    aput v3, v1, v5

    invoke-static {v1, v2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->generateCellCountCompatOld([I[I)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [I

    aget v3, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "cellCountX"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "cellCountY"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    aget v3, v1, v4

    if-lez v3, :cond_45

    aget v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "cellCountX_OS8"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_45
    aget v3, v1, v5

    if-lez v3, :cond_54

    aget v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "cellCountY_OS8"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_54
    iget-boolean v3, p2, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsCompact:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "isCompact"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p2, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "current_launcher_mode"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v6, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v7, "sp_key_icon_fallen_switch"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "icon_fallen_switch"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "dock_expand_switch"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_9f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v3

    if-eqz v3, :cond_ff

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "show_taskbar_switch"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "show_allApps_switch"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "show_globalSearch_switch"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "show_fileManager_switch"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarLongPressSettingEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "show_longpress_switch"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_ff
    sget-object v3, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {v3, p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "launcher_layout_locked"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "setting_app_startup_anim_speed"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    const-string v8, "Backup"

    if-eqz v7, :cond_128

    sget-object v7, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v9, "generateDeviceLayoutParameter: animSpeed = "

    invoke-static {v9, v3, v8, v7}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_128
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_131

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_131
    invoke-static {p0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_142

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v7, "generateDeviceLayoutParameter: slideType = "

    invoke-static {v7, v3, v8, v6}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_142
    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v6

    if-eqz v6, :cond_14b

    const-string v6, "launcher_slide_down_type_simple"

    goto :goto_14d

    :cond_14b
    const-string v6, "launcher_slide_down_type"

    :goto_14d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v3, "launcher_bubbletext_font_size"

    const-string v6, "2"

    invoke-static {p0, v3, v6}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_169

    sget-object v9, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v10, "generateDeviceLayoutParameter: fontSize = "

    invoke-static {v10, v7, v8, v9}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_169
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string/jumbo v10, "null"

    if-nez v9, :cond_17b

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17b

    invoke-virtual {v0, v3, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17b
    const-string v3, "launcher_simple_mode_bubbletext_font_size_key"

    invoke-static {p0, v3, v6}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_18e

    sget-object v7, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v9, "generateDeviceLayoutParameter: fontSimpleTextSize = "

    invoke-static {v9, v6, v8, v7}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19d

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19d

    invoke-virtual {v0, v3, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19d
    invoke-static {p0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppInfoListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_203

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v7, "generateDeviceLayoutParameter: superPowerSaveAppList = "

    invoke-static {v7, v3, v8, v6}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1ae
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c2

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c2

    const-string v7, "[]"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_203

    :cond_1c2
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->isFirstEnterSuperPowerMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_203

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->loadAppActivityInfo(Lcom/android/launcher3/LauncherAppState;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->updateDefaultApps(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {p0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppInfoListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: after update superPowerSaveAppList = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1eb} :catch_1ec

    goto :goto_203

    :catch_1ec
    move-exception v6

    sget-object v7, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v9, "generateDeviceLayoutParameter: superPowerSaveAppList e = "

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_203
    :goto_203
    const-string/jumbo v6, "super_power_save_launcher_app_list"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    const-string/jumbo v6, "super_power_save_launcher_app_count"

    invoke-static {p0, v6, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_21e

    sget-object v7, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v9, "generateDeviceLayoutParameter: superPowerSaveAppCount = "

    invoke-static {v9, v3, v8, v7}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_21e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoDisplaySwitch()I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_23a

    sget-object v6, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v7, "generateDeviceLayoutParameter: recentTaskDisplayRamType = "

    invoke-static {v7, v3, v8, v6}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_23a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "display_memory_information_recent_task"

    invoke-virtual {v0, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v3, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->getPhoneManagerSwitch()I

    move-result p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_25a

    sget-object v3, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v6, "generateDeviceLayoutParameter: recentTaskDisplayPhoneManagerType = "

    invoke-static {v6, p0, v8, v3}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_25a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v3, "display_phone_manager_entrance"

    invoke-virtual {v0, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstalledAppsOfJSON()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_278

    sget-object v3, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v6, "generateDeviceLayoutParameter: installedDefaultApps = "

    invoke-static {v6, p0, v8, v3}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_278
    const-string v3, "back_up_installed_default_apps"

    invoke-virtual {v0, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->getLockAppsOfJSON()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_292

    sget-object v3, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v6, "generateDeviceLayoutParameter: lockAppsList = "

    invoke-static {v6, p0, v8, v3}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_292
    const-string v3, "back_up_lock_apps"

    invoke-virtual {v0, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2a4

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v3, "generateDeviceLayoutParameter: isHasSuperLockFunction = true"

    invoke-static {v8, p0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a4
    sget-boolean p0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v3, "back_up_is_has_super_lock_function"

    invoke-virtual {v0, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "LAYOUT_PARAMETERS"

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    aget p0, v2, v4

    aget p1, v2, v5

    aget v0, v1, v4

    aget v1, v1, v5

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getCellCountForNew(IIII)[I

    move-result-object p0

    const-string p1, "generateDeviceLayoutParameter --"

    const-string v0, " targetCellCountX = "

    invoke-static {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v0, p0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", targetCellCountY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v5

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", newIsCompactLayout = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p2, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsCompact:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", newMode = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static generateDrawerModeSetting(Lcom/google/gson/JsonObject;Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V
    .registers 6

    const-string v0, "Backup"

    if-nez p1, :cond_c

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string p1, "generateDrawerModeSetting failed: drawerModeSetting = null"

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-boolean v2, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "show_indicate_app"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v2, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "add_app_to_workspace"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "DRAWER_MODE_SETTING"

    invoke-virtual {p0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_4a

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v1, "generateDrawerModeSetting: isAddToWorkSpace = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isShowIndicateApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    invoke-static {v1, p1, v0, p0}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method private static generateHeaderLayoutInfo(Lcom/google/gson/JsonObject;)V
    .registers 4

    const/16 v0, 0x4d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dbVersion"

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "minDowngradeVersion"

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isExpVersion"

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_37

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v0, "generateHeaderLayoutInfo: dbVersion = 77, minDowngradeVersion = 28, isExpVersion = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string v2, "Backup"

    invoke-static {v0, v1, v2, p0}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method private static generateModeLayoutMap(Lcom/google/gson/JsonObject;Landroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_86

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_82

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_82

    :cond_17
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_37

    sget-object v3, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v4, "generateModeLayoutMap -- mapKey = "

    const-string v5, ", listSize = "

    invoke-static {v4, v1, v5}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Backup"

    invoke-static {v5, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    if-nez v1, :cond_5b

    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    move v4, v0

    :goto_3f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_55

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;

    invoke-static {v5}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateOneScreenInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;)Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_55
    const-string v2, "SCREENS"

    invoke-virtual {p0, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_82

    :cond_5b
    invoke-static {v1}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->getItemName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_82

    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    move v5, v0

    :goto_67
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7f

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-static {v1, v6}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateOneItemInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lcom/google/gson/JsonObject;

    move-result-object v6

    if-eqz v6, :cond_7c

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_7f
    invoke-virtual {p0, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_82
    :goto_82
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_86
    return-void
.end method

.method private static generateModeLayoutParameter(Lcom/google/gson/JsonObject;Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 9

    if-nez p1, :cond_c

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string p1, "Backup"

    const-string p2, "generateModeLayoutParameter failed: layoutParameter = null"

    invoke-static {p1, p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    iget v3, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    const/4 v4, 0x0

    aput v3, v1, v4

    iget p1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    const/4 v3, 0x1

    aput p1, v1, v3

    invoke-static {v1, v2}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->generateCellCountCompatOld([I[I)Landroid/util/Pair;

    move-result-object p1

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    aget v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "cellCountX"

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    aget v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "cellCountY"

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    aget v2, p1, v4

    if-lez v2, :cond_51

    aget v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "cellCountX_OS8"

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_51
    aget v2, p1, v3

    if-lez v2, :cond_60

    aget v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "cellCountY_OS8"

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_60
    const-string v2, "MODE_PARAMETERS"

    invoke-virtual {p0, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    aget p0, v1, v4

    aget v0, v1, v3

    aget v1, p1, v4

    aget p1, p1, v3

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getCellCountForNew(IIII)[I

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v0, "generateModeLayoutParameter "

    const-string v1, "-- targetCellCount = "

    invoke-static {v0, p2, v1}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static generateOneItemInfo(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lcom/google/gson/JsonObject;
    .registers 25

    move/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "generateOneItemInfo -- itemType: shortcut, itemInfo is "

    const-string v3, "generateOneItemInfo -- itemType: card, itemInfo is "

    const-string v4, "generateOneItemInfo -- itemType: widget, itemInfo is "

    const-string v5, "generateOneItemInfo -- itemType: folder, itemInfo is "

    const-string v6, "generateOneItemInfo -- itemType: deep shortcut, itemInfo is "

    const-string v7, "generateOneItemInfo -- itemType: application, itemInfo is "

    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "container"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "screenId"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "screen"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "cellX"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "cellY"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "user_id"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string/jumbo v10, "profileId"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "restored"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v9, "appWidgetProvider"

    const-string v10, "icon"

    const-string v11, "appWidgetId"

    const-string v12, "info"

    const-string v13, "dynamicShortcutSupportState"

    const-string v14, "className"

    const-string/jumbo v15, "rank"

    move-object/from16 v16, v7

    const-string/jumbo v7, "spanY"

    move-object/from16 v17, v6

    const-string/jumbo v6, "spanX"

    move-object/from16 v18, v5

    const-string v5, "intent"

    move-object/from16 v19, v4

    const-string/jumbo v4, "packageName"

    move-object/from16 v20, v14

    const-string/jumbo v14, "title"

    move-object/from16 v21, v3

    const-string v3, ", e: "

    move-object/from16 v22, v9

    const-string v9, "Backup"

    packed-switch v0, :pswitch_data_426

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_423

    sget-object v2, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateOneItemInfo failed -- wrong itemType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", itemInfo is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_423

    :pswitch_e7  #0x6
    :try_start_e7
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "iconType"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v0

    if-nez v0, :cond_152

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD backup iconPack-Source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iconPackage"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iconResource"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_152
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getDynamicShortcutSupportState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutInfoStr(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutIcon()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutIconStr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_422

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_18d} :catch_18f

    goto/16 :goto_422

    :catch_18f
    move-exception v0

    sget-object v4, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_422

    :pswitch_1ac  #0x5
    :try_start_1ac
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "card_type"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string/jumbo v0, "service_id"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "editable_attributes"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getEditableAttrs()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string/jumbo v0, "theme_card_identification"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardIdentification()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "card_category"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardCategory()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-virtual {v8, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_422

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_229} :catch_23c

    move-object/from16 v4, v21

    :try_start_22b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_238} :catch_23a

    goto/16 :goto_422

    :catch_23a
    move-exception v0

    goto :goto_23f

    :catch_23c
    move-exception v0

    move-object/from16 v4, v21

    :goto_23f
    sget-object v2, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_422

    :pswitch_25b  #0x4
    move-object/from16 v2, v22

    :try_start_25d
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v20

    invoke-virtual {v8, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_422

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2a9
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_2a9} :catch_2bc

    move-object/from16 v4, v19

    :try_start_2ab
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2b8} :catch_2ba

    goto/16 :goto_422

    :catch_2ba
    move-exception v0

    goto :goto_2bf

    :catch_2bc
    move-exception v0

    move-object/from16 v4, v19

    :goto_2bf
    sget-object v2, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_422

    :pswitch_2db  #0x3
    :try_start_2db
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string/jumbo v0, "recommendId"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRecommendId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_422

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_313} :catch_326

    move-object/from16 v4, v18

    :try_start_315
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_322
    .catch Ljava/lang/Exception; {:try_start_315 .. :try_end_322} :catch_324

    goto/16 :goto_422

    :catch_324
    move-exception v0

    goto :goto_329

    :catch_326
    move-exception v0

    move-object/from16 v4, v18

    :goto_329
    sget-object v2, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_422

    :pswitch_345  #0x2
    :try_start_345
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getDynamicShortcutSupportState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutInfoStr(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutIcon()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/backup/util/ShortcutUtils;->getShortcutIconStr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_422

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_393
    .catch Ljava/lang/Exception; {:try_start_345 .. :try_end_393} :catch_3a6

    move-object/from16 v4, v17

    :try_start_395
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a2
    .catch Ljava/lang/Exception; {:try_start_395 .. :try_end_3a2} :catch_3a4

    goto/16 :goto_422

    :catch_3a4
    move-exception v0

    goto :goto_3a9

    :catch_3a6
    move-exception v0

    move-object/from16 v4, v17

    :goto_3a9
    sget-object v2, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_422

    :pswitch_3c4  #0x1
    move-object/from16 v5, v20

    :try_start_3c6
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_422

    sget-object v0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3f3
    .catch Ljava/lang/Exception; {:try_start_3c6 .. :try_end_3f3} :catch_405

    move-object/from16 v4, v16

    :try_start_3f5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_402
    .catch Ljava/lang/Exception; {:try_start_3f5 .. :try_end_402} :catch_403

    goto :goto_422

    :catch_403
    move-exception v0

    goto :goto_408

    :catch_405
    move-exception v0

    move-object/from16 v4, v16

    :goto_408
    sget-object v2, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_422
    :goto_422
    return-object v8

    :cond_423
    :goto_423
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_426
    .packed-switch 0x1
        :pswitch_3c4  #00000001
        :pswitch_345  #00000002
        :pswitch_2db  #00000003
        :pswitch_25b  #00000004
        :pswitch_1ac  #00000005
        :pswitch_e7  #00000006
    .end packed-switch
.end method

.method private static generateOneScreenInfo(Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;)Lcom/google/gson/JsonObject;
    .registers 5

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "screenId"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldScreenNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "screenNum"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mNewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "new_id"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget v1, p0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mNewScreenRank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "screenRank"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_5e

    sget-object v1, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateOneScreenInfo -- screenInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Backup"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return-object v0
.end method

.method private generateThirdPartAppListToJson()Lcom/google/gson/JsonArray;
    .registers 8

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Backup"

    if-eqz p0, :cond_78

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_78

    :cond_1a
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v2, 0x0

    :goto_20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_58

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_title"

    invoke-virtual {v4, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_packageName"

    invoke-virtual {v4, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_5b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_77

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v2, "generateThirdPartAppListToJson -- app list size = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return-object v1

    :cond_78
    :goto_78
    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v2, "generateThirdPartAppListToJson -- no app data!"

    invoke-static {v0, p0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getItemName(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0x6
    const-string p0, "URL_SHORTCUTS"

    return-object p0

    :pswitch_8  #0x5
    const-string p0, "CARD"

    return-object p0

    :pswitch_b  #0x4
    const-string p0, "WIDGETS"

    return-object p0

    :pswitch_e  #0x3
    const-string p0, "FOLDERS"

    return-object p0

    :pswitch_11  #0x2
    const-string p0, "SHORTCUTS"

    return-object p0

    :pswitch_14  #0x1
    const-string p0, "APPLICATIONS"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_11  #00000002
        :pswitch_e  #00000003
        :pswitch_b  #00000004
        :pswitch_8  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method

.method private initModeTags()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mModeTags:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    const-string v2, "LAYOUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mModeTags:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    const-string v2, "LAYOUT_DRAW"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mModeTags:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const-string v2, "LAYOUT_SIMPLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mModeTags:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    array-length v0, v0

    if-eq p0, v0, :cond_32

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string v0, "Backup"

    const-string/jumbo v1, "tags size is not same as mode values length"

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public generatorAppLayoutToJson(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    new-instance v0, Le2/b;

    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le2/b;-><init>(Landroid/content/Context;I)V

    const-string v1, "backup"

    const-string v3, "add"

    const/4 v4, 0x0

    invoke-static {p2, v1, v3, v4}, Le2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    const-string v3, "Backup"

    if-eqz p2, :cond_e9

    invoke-virtual {v0, p2}, Le2/b;->d(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_e9

    :cond_1e
    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateThirdPartAppListToJson()Lcom/google/gson/JsonArray;

    move-result-object v5

    if-eqz v5, :cond_e1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_31
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher/backup/mode/BackupDataModel;

    if-eqz v8, :cond_31

    invoke-virtual {v8, v7}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    iget-object v9, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generateBackupDataModeToJson(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupDataModel;)Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_52
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v6

    array-length v7, v6

    :goto_5c
    if-ge v4, v7, :cond_7c

    aget-object v8, v6, v4

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonObject;

    iget-object v10, p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->mModeTags:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v9, :cond_79

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_79

    invoke-virtual {p1, v8, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_7c
    const-string p0, "app_list"

    invoke-virtual {p1, p0, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "itemId"

    invoke-virtual {p1, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p0, "JsonWriterHelper"

    iget-object v1, v0, Le2/b;->e:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/gson/stream/JsonWriter;

    if-nez v2, :cond_a6

    const-string p1, "appendJsonObjectToFile mJsonWriter is null, uri = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v0, Le2/b;->c:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d6

    :cond_a6
    :try_start_a6
    check-cast v1, Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object p1, v0, Le2/b;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->flush()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b6} :catch_b7

    goto :goto_d6

    :catch_b7
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendJsonObjectToFile e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", uri = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Le2/b;->c:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d6
    invoke-virtual {v0}, Le2/b;->b()V

    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string p1, "generatorAppLayoutToJson success"

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_e1
    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    const-string p1, "generatorAppLayoutToJson failed, appListJsonData is null"

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_e9
    :goto_e9
    sget-object p0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generatorAppLayoutToJson failed, can\'t open addDataUri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
