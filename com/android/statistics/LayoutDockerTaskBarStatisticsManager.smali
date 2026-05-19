.class public Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENTER_TOGGLEBAR_MODE_FINGER_PINCH:Ljava/lang/String; = "0"

.field public static final ENTER_TOGGLEBAR_MODE_LONG_CLICK:Ljava/lang/String; = "1"

.field private static final EVENT_CLICK_DOCKER:Ljava/lang/String; = "click_docker"

.field private static final EVENT_CLICK_TASKBAR:Ljava/lang/String; = "click_taskbar"

.field private static final EVENT_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "event_dock_expand_switch_state"

.field private static final EVENT_ENTER_TOGGLEBAR_STATE:Ljava/lang/String; = "enter_edit_state"

.field private static final EVENT_ID_LAYOUT_UPGRADE:Ljava/lang/String; = "layout_upgrade"

.field private static final EVENT_LAUNCHER_LAYOUT:Ljava/lang/String; = "launcher_layout"

.field private static final EVENT_LAUNCHER_LAYOUT_LOCKED_STSTUS:Ljava/lang/String; = "launcher_layout_locked_status"

.field private static final EVENT_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final EVENT_LAYOUT_IS_COMPACT:Ljava/lang/String; = "layout_is_compact"

.field private static final EVENT_LONGPRESS_TASKBAR:Ljava/lang/String; = "longpress_taskbar"

.field private static final EVENT_TASKBAR_INFO:Ljava/lang/String; = "taskbar_info"

.field private static final EVENT_TRIGGER_SPLITSCREEN:Ljava/lang/String; = "trigger_splitscreen"

.field private static final FOLDER_INFO:Ljava/lang/String; = "folder_info"

.field private static final KEY_CLICK_AREA:Ljava/lang/String; = "click_area"

.field private static final KEY_CLICK_ICON_TYPE:Ljava/lang/String; = "click_icon_type"

.field private static final KEY_ENTER_TOGGLEBAR_STATE_MODE:Ljava/lang/String; = "enter_edit_state_mode"

.field private static final KEY_ENTER_TOGGLEBAR_STATE_WAY:Ljava/lang/String; = "enter_edit_state_way"

.field private static final KEY_EVENT_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "event_dock_expand_switch_state"

.field private static final KEY_IS_LAYOUT_UPGRADE:Ljava/lang/String; = "is_layout_upgrade"

.field private static final KEY_LAUNCHER_LAYOUT_LOCKED_STSTUS:Ljava/lang/String; = "launcher_layout_locked_status"

.field private static final KEY_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final KEY_LAYOUT_IS_COMPACT:Ljava/lang/String; = "layout_is_compact"

.field private static final KEY_LAYOUT_UPGRADE_TYPE:Ljava/lang/String; = "layout_upgrade_type"

.field private static final KEY_TASKBAR_ISSHOW:Ljava/lang/String; = "taskbar_isshow"

.field private static final TASKBAR_ALLAPPS_SWITCH_STATE:Ljava/lang/String; = "taskbar_allapps_switch_state"

.field private static final TASKBAR_APP_COUNT:Ljava/lang/String; = "taskbar_app_count"

.field private static final TASKBAR_EXPAND_AREA_SWTCH_STATE:Ljava/lang/String; = "taskbar_expand_area_swtch_state"

.field private static final TASKBAR_FILE_SWITCH_STATE:Ljava/lang/String; = "taskbar_file_switch_state"

.field private static final TASKBAR_LONGPRESS_SWTCH_STATE:Ljava/lang/String; = "taskbar_longpress_swtch_state"

.field private static final TASKBAR_NORMAL_APP_INFO:Ljava/lang/String; = "taskbar_normal_app_info"

.field private static final TASKBAR_SEARCH_SWITCH_STATE:Ljava/lang/String; = "taskbar_search_switch_state"

.field private static final TASKBAR_SWITCH_STATE:Ljava/lang/String; = "taskbar_switch_state"

.field private static final TASKBAR_TODAY_LONGPRESS_SHOW_STATE:Ljava/lang/String; = "taskbar_today_longpress_show_state"

.field private static final VALUE_AREA_EXPAND:Ljava/lang/String; = "Expand"

.field private static final VALUE_AREA_NORMAL:Ljava/lang/String; = "Normal"

.field private static final VALUE_AREA_SUBSCRIBE:Ljava/lang/String; = "Subscribe"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStatistics:Lcom/android/statistics/BaseStatistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    return-void
.end method

.method private getTaskbarNormalAppInfo()Lorg/json/JSONArray;
    .registers 12

    const-string/jumbo v0, "packageName"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {p0}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataNormalItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object p0

    :try_start_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_34} :catch_b9

    const-string v5, "COMBINATION"

    const-string/jumbo v6, "type"

    if-eqz v4, :cond_52

    :try_start_3b
    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v4}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b3

    :cond_48
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b3

    :cond_52
    instance-of v4, v2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v4, :cond_aa

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v7, v2

    check-cast v7, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v7, v7, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_64
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_97

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v8}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v10

    if-eqz v10, :cond_8a

    invoke-virtual {v9, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_93

    :cond_8a
    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v8}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_93
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_64

    :cond_97
    const-string v5, "folder_info"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b3

    :cond_aa
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_b3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_b6} :catch_b9

    goto/16 :goto_16

    :cond_b8
    return-object v1

    :catch_b9
    move-exception p0

    const-string v0, "getTaskbarPermanentAppInfo exception:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherStatistics"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v2, "Subscribe"

    const-string v3, "click_area"

    const-string v4, ""

    if-eqz v1, :cond_33

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v2, "Normal"

    goto :goto_29

    :cond_18
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v2, "Expand"

    goto :goto_29

    :cond_21
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_29

    :cond_28
    move-object v2, v4

    :goto_29
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    :cond_33
    instance-of v1, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_3c

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ALL_APPS_IN_APP"

    :cond_3c
    :goto_3c
    const-string v1, "click_icon_type"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string v1, "click_docker"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickTaskbar(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v2, "Subscribe"

    const-string v3, "click_area"

    const-string v4, ""

    if-eqz v1, :cond_33

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v2, "Normal"

    goto :goto_29

    :cond_18
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v2, "Expand"

    goto :goto_29

    :cond_21
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_29

    :cond_28
    move-object v2, v4

    :goto_29
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_33
    instance-of v1, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_3c

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ALL_APPS_IN_APP"

    :cond_3c
    :goto_3c
    const-string v1, "click_icon_type"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string v1, "click_taskbar"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsDockExpandSwitch()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_dock_expand_switch_state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsEnterToggleBarState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enter_edit_state_way"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "enter_edit_state_mode"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "enter_edit_state"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsLauncherLayout()V
    .registers 6

    iget-object v0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const-string v4, "layout_cellcount_x"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    aget v1, v1, v4

    const-string v4, "layout_cellcount_y"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher_layout"

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public statsLauncherLayoutLockedStatus()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "on"

    goto :goto_16

    :cond_13
    const-string/jumbo v1, "off"

    :goto_16
    const-string v2, "launcher_layout_locked_status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsLauncherMode()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherModeForString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launcher_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsLayoutIsCompact()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    const-string v2, "layout_is_compact"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "on"

    goto :goto_17

    :cond_14
    const-string/jumbo v1, "off"

    :goto_17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsLayoutUpgradeInfo()V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "upgrade_type"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isNewLayoutConfig()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_layout_upgrade"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "layout_upgrade_type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "layout_upgrade"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsLongPressTaskbarShowState(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarLongPressSettingEnable()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->recordTaskbarTodayIslongpress(Z)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    if-eqz p1, :cond_3b

    const-string p1, "1"

    goto :goto_3d

    :cond_3b
    const-string p1, "0"

    :goto_3d
    const-string/jumbo v2, "taskbar_isshow"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "longpress_taskbar"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsTaskbarSwitchStateAndAppInfo()V
    .registers 9

    iget-object v0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v3}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataAllItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "taskbar_app_count"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->getTaskbarNormalAppInfo()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "taskbar_normal_app_info"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v3

    const-string v4, "1"

    const-string v5, "0"

    if-eqz v3, :cond_41

    move-object v3, v4

    goto :goto_42

    :cond_41
    move-object v3, v5

    :goto_42
    const-string/jumbo v6, "taskbar_switch_state"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable()Z

    move-result v3

    const-string/jumbo v6, "taskbar_allapps_switch_state"

    const-string v7, "-1"

    if-eqz v3, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v3

    if-eqz v3, :cond_5b

    move-object v3, v4

    goto :goto_5c

    :cond_5b
    move-object v3, v5

    :goto_5c
    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_60
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_63
    invoke-virtual {v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable()Z

    move-result v3

    const-string/jumbo v6, "taskbar_file_switch_state"

    if-eqz v3, :cond_79

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v3

    if-eqz v3, :cond_74

    move-object v3, v4

    goto :goto_75

    :cond_74
    move-object v3, v5

    :goto_75
    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_79
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7c
    invoke-virtual {v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable()Z

    move-result v1

    const-string/jumbo v3, "taskbar_search_switch_state"

    if-eqz v1, :cond_92

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v1

    if-eqz v1, :cond_8d

    move-object v1, v4

    goto :goto_8e

    :cond_8d
    move-object v1, v5

    :goto_8e
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    :cond_92
    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_95
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarLongPressSettingEnable()Z

    move-result v1

    if-eqz v1, :cond_9d

    move-object v1, v4

    goto :goto_9e

    :cond_9d
    move-object v1, v5

    :goto_9e
    const-string/jumbo v3, "taskbar_longpress_swtch_state"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLongPressState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "taskbar_today_longpress_show_state"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v0

    if-eqz v0, :cond_b7

    goto :goto_b8

    :cond_b7
    move-object v4, v5

    :goto_b8
    const-string/jumbo v0, "taskbar_expand_area_swtch_state"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v0, 0x0

    const-string/jumbo v1, "taskbar_info"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsTriggerSplitScreen(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_b

    const-string/jumbo p1, "taskbar"

    goto :goto_d

    :cond_b
    const-string p1, "docker"

    :goto_d
    const-string v1, "click_area"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string/jumbo v1, "trigger_splitscreen"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
