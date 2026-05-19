.class public Lcom/android/statistics/AppIconShortcutStatisticsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EVENT_ADD_APP_TO_WORKSPACE_SWITCH_STATUS:Ljava/lang/String; = "add_app_to_workspace_switch_status"

.field private static final EVENT_ALL_APP_COUNT:Ljava/lang/String; = "all_app_count"

.field private static final EVENT_APP_CHANGE_TO_INSTALLED_STATE:Ljava/lang/String; = "app_change_to_installed_state"

.field private static final EVENT_APP_CHANGE_TO_INSTALLING_STATE:Ljava/lang/String; = "app_change_to_installing_state"

.field private static final EVENT_APP_GUIDE_CLOSE:Ljava/lang/String; = "event_app_guide_close"

.field private static final EVENT_APP_GUIDE_SHOW:Ljava/lang/String; = "event_app_guide_show"

.field private static final EVENT_APP_LOST_DETECT:Ljava/lang/String; = "app_lost_detect"

.field private static final EVENT_APP_NAME_SIZE:Ljava/lang/String; = "app_name_size"

.field private static final EVENT_APP_STARTUP_ANIM_SPEED:Ljava/lang/String; = "app_start_anim_speed"

.field private static final EVENT_ART_SWITCH_STATUS:Ljava/lang/String; = "art_switch_status"

.field private static final EVENT_BATCH_ADD_APP_TO_WORKSPACE:Ljava/lang/String; = "batch_add_app_to_workspace"

.field private static final EVENT_BATCH_DRAG:Ljava/lang/String; = "batch_drag"

.field private static final EVENT_CLICK_APP_EDIT:Ljava/lang/String; = "event_click_app_edit"

.field private static final EVENT_CLICK_APP_EDIT_RESULT:Ljava/lang/String; = "event_click_app_edit_result"

.field private static final EVENT_CLICK_APP_INFO:Ljava/lang/String; = "click_shortcut_info"

.field private static final EVENT_CLICK_DEEP_SHORTCUT:Ljava/lang/String; = "click_deep_shortcut"

.field private static final EVENT_CLICK_DEEP_SHORTCUT_ON_POPUP_WINDOW:Ljava/lang/String; = "click_shortcut_other_link"

.field private static final EVENT_CLICK_ICON_IN_DOWNLOADING_STATE:Ljava/lang/String; = "click_icon_in_downloading_state"

.field private static final EVENT_CLICK_ICON_IN_PAUSED_STATE:Ljava/lang/String; = "click_icon_in_paused_state"

.field private static final EVENT_CLICK_PREDICTION_APP:Ljava/lang/String; = "click_prediction_app"

.field private static final EVENT_CLICK_SEARCH_RESULT_APP:Ljava/lang/String; = "click_search_result_app"

.field private static final EVENT_CUSTOM_STYLE_SHAPE:Ljava/lang/String; = "custom_style_shape"

.field private static final EVENT_DRAG_APP_TO_WORKSPACE_FROM_DRAWER:Ljava/lang/String; = "drag_app_to_workspace_from_drawer"

.field private static final EVENT_DRAG_SHORTCUT_TO_WORKSPACE:Ljava/lang/String; = "drag_shortcut_to_workspace"

.field private static final EVENT_DRAWER_APP_SORT_CLICK_ALPHABETIC:Ljava/lang/String; = "drawer_app_sort_click_alphabetic"

.field private static final EVENT_DRAWER_APP_SORT_CLICK_INSTALL_TIME:Ljava/lang/String; = "drawer_app_sort_click_install_time"

.field private static final EVENT_DRAWER_APP_SORT_CLICK_USER_FREQUENCY:Ljava/lang/String; = "drawer_app_sort_click_user_frequency"

.field private static final EVENT_ICON_FALLEN_COMPLETE:Ljava/lang/String; = "event_icon_fallen_complete"

.field private static final EVENT_ICON_FALLEN_SWITCH:Ljava/lang/String; = "event_icon_fallen_switch"

.field private static final EVENT_ICON_SHIMMER:Ljava/lang/String; = "icon_flash"

.field private static final EVENT_ICON_SIZE:Ljava/lang/String; = "icon_size"

.field private static final EVENT_ICON_STYLE_THEME:Ljava/lang/String; = "icon_style_theme"

.field private static final EVENT_ID_REMOVE_LIGHTNING_START_APP:Ljava/lang/String; = "remove_lightning_start_app"

.field private static final EVENT_LAUNCHER_ITEM_LOCATE_REQUEST:Ljava/lang/String; = "launcher_item_locate_request"

.field private static final EVENT_MOVE_APP_TO_THUMB_IN_PAGE_PREVIEW_MODE:Ljava/lang/String; = "move_app_to_thumb_in_page_preview_mode"

.field private static final EVENT_MOVE_BATCH_ITEM_TO_THUMB_FAILED_IN_PAGE_PREVIEW_MODE:Ljava/lang/String; = "move_batch_item_to_thumb_failed_in_page_preview_mode"

.field private static final EVENT_MOVE_ITEM_TO_ANOTHER_PAGE_IN_PREVIEW_MODE:Ljava/lang/String; = "move_item_to_another_page_in_preview_mode"

.field private static final EVENT_MOVE_ITEM_TO_CUR_PAGE_IN_PREVIEW_MODE:Ljava/lang/String; = "move_item_to_page_in_preview_mode"

.field private static final EVENT_MOVE_ITEM_TO_THUMB_FAILED_IN_PAGE_PREVIEW_MODE:Ljava/lang/String; = "move_item_to_thumb_failed_in_page_preview_mode"

.field private static final EVENT_OPEN_APP:Ljava/lang/String; = "open_app"

.field private static final EVENT_PREDICTION_APP_SWITCH_STATUS:Ljava/lang/String; = "prediction_app_switch_status"

.field private static final EVENT_REMOVE_APP_FROM_WORKSPACE:Ljava/lang/String; = "remove_app_from_workspace"

.field private static final EVENT_SHORTCUT_SETTING:Ljava/lang/String; = "shortcut_setting"

.field private static final EVENT_THIRD_ICON_PACK:Ljava/lang/String; = "third_icon_pack"

.field private static final EVENT_UNINSTALL_APP:Ljava/lang/String; = "uninstall_app"

.field private static final EVENT_UNINSTALL_APP_WINDOW_CLOSE:Ljava/lang/String; = "uninstall_app_window_close"

.field private static final EVENT_UNINSTALL_APP_WINDOW_POPUP:Ljava/lang/String; = "uninstall_app_window_popup"

.field private static final KEY_ADD_APP_TO_WORKSPACE_SWITCH_STATUS:Ljava/lang/String; = "add_app_to_workspace_switch_status"

.field private static final KEY_ALL_APP_COUNT:Ljava/lang/String; = "all_app_count"

.field private static final KEY_APP_GUIDE_CLASS_NAME:Ljava/lang/String; = "key_app_guide_class_name"

.field private static final KEY_APP_GUIDE_CLOSE_REASON:Ljava/lang/String; = "key_app_guide_close_reason"

.field private static final KEY_APP_GUIDE_PACKAGE_NAME:Ljava/lang/String; = "key_app_guide_package_name"

.field private static final KEY_APP_LOST_REASON:Ljava/lang/String; = "app_lost_reason"

.field private static final KEY_APP_PACKAGE:Ljava/lang/String; = "app_lost_package"

.field private static final KEY_APP_STARTUP_ANIM_SPEED:Ljava/lang/String; = "app_start_anim_speed"

.field private static final KEY_APP_USER:Ljava/lang/String; = "app_lost_user"

.field private static final KEY_BATCH_ADD_APP_TO_WORKSPACE_COUNT:Ljava/lang/String; = "batch_add_app_to_workspace_count"

.field private static final KEY_ENABLE_SHORTCUT:Ljava/lang/String; = "enable_shortcut"

.field private static final KEY_EVENT_ICON_FALLEN_SWITCH:Ljava/lang/String; = "event_icon_fallen_switch_state"

.field private static final KEY_HAS_BADGE:Ljava/lang/String; = "has_badge"

.field private static final KEY_ICON_PACKAGE_NAME:Ljava/lang/String; = "icon_package_name"

.field private static final KEY_ICON_PACK_TITLE:Ljava/lang/String; = "icon_pack_title"

.field private static final KEY_LAUNCHER_LOCATE_APPWIDGETPROVIDER:Ljava/lang/String; = "AppWidgetProvider"

.field private static final KEY_LAUNCHER_LOCATE_CALLER:Ljava/lang/String; = "caller"

.field private static final KEY_LAUNCHER_LOCATE_CARDTYPEID:Ljava/lang/String; = "cardTypeId"

.field private static final KEY_LAUNCHER_LOCATE_COMPONENTNAME:Ljava/lang/String; = "ComponentName"

.field private static final KEY_LAUNCHER_LOCATE_ITEMTYPE:Ljava/lang/String; = "ItemType"

.field private static final KEY_LAUNCHER_LOCATE_SHORTCUTID:Ljava/lang/String; = "shortcutId"

.field private static final KEY_LAUNCHER_LOCATE_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_LAUNCHER_LOCATE_USERID:Ljava/lang/String; = "userId"

.field private static final KEY_QUICK_STARTUP_APP_PKG:Ljava/lang/String; = "pkg"

.field private static final KEY_SHARE_APK_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"

.field private static final KEY_SHORTCUT_NAME:Ljava/lang/String; = "shortcut_name"

.field private static final KEY_SHOW_PREDICTION_APP:Ljava/lang/String; = "show_prediction_app"

.field private static final KEY_START_APP_FROM:Ljava/lang/String; = "from"

.field private static final KEY_START_APP_FROM_DOCK:Ljava/lang/String; = "dock"

.field private static final KEY_START_APP_FROM_TASK:Ljava/lang/String; = "task"

.field private static final KEY_UNINSTALL_COUNT:Ljava/lang/String; = "uninstall_count"

.field private static final KEY_UNINSTALL_TYPE:Ljava/lang/String; = "uninstall_type"

.field private static final START_APP_FROM_TASK:Ljava/lang/String; = "start_app_from_task"

.field private static final UNINTALL_STRING_LENGTH:I = 0x19

.field private static final VALUE_APP_GUIDE_CLOSE_BY_CLICK_CARD:Ljava/lang/String; = "click_card"

.field private static final VALUE_APP_GUIDE_CLOSE_BY_CLICK_CLOSE:Ljava/lang/String; = "click_close"

.field private static final VALUE_APP_GUIDE_CLOSE_BY_CLICK_ICON:Ljava/lang/String; = "click_icon"

.field private static final VALUE_APP_GUIDE_CLOSE_BY_CLICK_OUTSIDE:Ljava/lang/String; = "click_outside"

.field private static final VALUE_NO:Ljava/lang/String; = "no"

.field private static final VALUE_YES:Ljava/lang/String; = "yes"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStatistics:Lcom/android/statistics/BaseStatistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    return-void
.end method

.method private statStartApp(Ljava/lang/String;)V
    .registers 4

    const-string v0, "from"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v0, "start_app_from_task"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_app_guide_class_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "key_app_guide_package_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "key_app_guide_close_reason"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "event_app_guide_close"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsAppNameSize()V
    .registers 4

    iget-object v0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    const-string v1, "launcher_bubbletext_font_size"

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_name_size"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsArtSwitchStatus(Lcom/oplus/uxicon/helper/IconConfig;)V
    .registers 5

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    const-string/jumbo p1, "on"

    goto :goto_10

    :cond_d
    const-string/jumbo p1, "off"

    :goto_10
    const/4 v1, 0x0

    const-string v2, "art_switch_status"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsCustomShape(ILcom/oplus/uxicon/helper/IconConfig;)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "custom_style_shape"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0, v0}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_13
    return-void
.end method

.method private statsIconSize(Lcom/oplus/uxicon/helper/IconConfig;)V
    .registers 4

    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result p1

    const/high16 v0, 0x40800000  # 4.0f

    invoke-static {v0, p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "icon_size"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsIconStyleTheme(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    move p1, v1

    :goto_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "icon_style_theme"

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsThirdIconPack(ILandroid/content/res/Configuration;)V
    .registers 6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    return-void

    :cond_4
    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconPackName(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4d

    const/4 p2, 0x0

    const/4 v0, 0x0

    :try_start_10
    iget-object v1, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    const-string v1, "LauncherStatistics"

    const-string/jumbo v2, "statsThirdIconPack,getPackageInfo NameNotFoundException"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_24
    if-eqz v1, :cond_36

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "icon_package_name"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "icon_pack_title"

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo p1, "third_icon_pack"

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_4d
    return-void
.end method


# virtual methods
.method public setLocateInformation(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GLOBAL_SEARCH:Ljava/lang/String;

    const-string v2, "caller"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    if-nez v1, :cond_23

    move-object v1, v3

    goto :goto_45

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_45
    const-string v4, "ComponentName"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_7f

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_57

    move-object v1, v3

    goto :goto_79

    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_79
    const-string v2, "AppWidgetProvider"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    :cond_7f
    const/4 v2, 0x6

    if-ne v1, v2, :cond_9a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shortcutId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    :cond_9a
    const/16 v2, 0x64

    if-ne v1, v2, :cond_b4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cardTypeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b4
    :goto_b4
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_bf

    goto :goto_c3

    :cond_bf
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_c3
    const-string/jumbo p1, "title"

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string v1, "launcher_item_locate_request"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statRemoveQuickStartupApp(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRemoveQuickStartupApp: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo p1, "remove_lightning_start_app"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statStartAppFromDock()V
    .registers 2

    const-string v0, "dock"

    invoke-direct {p0, v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statStartApp(Ljava/lang/String;)V

    return-void
.end method

.method public statStartAppFromTask()V
    .registers 2

    const-string/jumbo v0, "task"

    invoke-direct {p0, v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statStartApp(Ljava/lang/String;)V

    return-void
.end method

.method public statsAddAppToWorkspaceSwitchStatus()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isAddAppToWorkspace()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "on"

    goto :goto_16

    :cond_13
    const-string/jumbo v1, "off"

    :goto_16
    const-string v2, "add_app_to_workspace_switch_status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAllAppsCount()V
    .registers 4

    iget-object v0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v0}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    if-nez v0, :cond_11

    const-string/jumbo p0, "statsAllAppsCount, mLauncher = null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v0}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_24

    const-string/jumbo p0, "statsAllAppsCount, colorLauncherModel = null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    if-nez v0, :cond_2f

    const-string/jumbo p0, "statsAllAppsCount, appsList = null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    iget-object v0, v0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "all_app_count"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAppChangedToInstalled(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "component_pose"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "app_change_to_installed_state"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAppChangedToInstalling(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "app_change_to_installing_state"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAppGuideClickCard(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string v0, "click_card"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickClose(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string v0, "click_close"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string v0, "click_icon"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickOutSide(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string v0, "click_outside"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideShow(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_app_guide_class_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_app_guide_package_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "event_app_guide_show"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_lost_reason"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_lost_package"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_lost_user"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "app_lost_detect"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAppStartAnimationSpeed()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "setting_app_startup_anim_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppStartupAnimSpeedIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppStartupAnimSpeedStatusText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_start_anim_speed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsBatchAddAppToWorkspace()V
    .registers 4

    const-string v0, "batch_add_app_to_workspace_count"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "batch_add_app_to_workspace"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsBatchDrag()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "batch_drag"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickAppEdit()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "event_click_app_edit"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickAppEditResult()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "event_click_app_edit_result"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "click_from"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "click_shortcut_info"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickDeepShortcutOnPopupWindow(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_13

    const-string v2, ""

    goto :goto_1b

    :cond_13
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1b
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "shortcut_name"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "click_shortcut_other_link"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_34
    return-void
.end method

.method public statsClickDrawerAppSort(I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    if-nez p1, :cond_10

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "drawer_app_sort_click_alphabetic"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_24

    :cond_10
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1b

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "drawer_app_sort_click_install_time"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_24

    :cond_1b
    if-ne p1, v1, :cond_24

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "drawer_app_sort_click_user_frequency"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_24
    :goto_24
    return-void
.end method

.method public statsClickInstallIconInDownloading(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "click_icon_in_downloading_state"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickInstallIconInPaused(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "click_icon_in_paused_state"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickPredictionApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_16

    goto :goto_1b

    :cond_16
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1b
    :goto_1b
    const-string p1, " "

    :goto_1d
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string v1, "click_prediction_app"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickSearchResultApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_16

    goto :goto_1b

    :cond_16
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1b
    :goto_1b
    const-string p1, " "

    :goto_1d
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string v1, "click_search_result_app"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsDragAppToWorkspaceFromDrawer(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_14

    const-string p1, " "

    goto :goto_1a

    :cond_14
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1a
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string v1, "drag_app_to_workspace_from_drawer"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsDragShortcutToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "drag_shortcut_to_workspace"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_1b
    return-void
.end method

.method public statsIconFallenComplete()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "event_icon_fallen_complete"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsIconFallenSwitch()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "sp_key_icon_fallen_switch"

    invoke-static {v1, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_icon_fallen_switch_state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "event_icon_fallen_switch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsIconShimmer(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "icon_flash"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsIconStyleUsage()V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :try_start_6
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v1
    :try_end_a
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_6 .. :try_end_a} :catch_13

    :try_start_a
    invoke-static {v1}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_12
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_a .. :try_end_12} :catch_14

    goto :goto_1c

    :catch_13
    const/4 v1, 0x0

    :catch_14
    const-string v2, "LauncherStatistics"

    const-string/jumbo v3, "statsIconStyleUsage,getConfiguration UnSupportedApiVersionException"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    iget-object v2, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsIconStyleTheme(I)V

    invoke-direct {p0, v2, v1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsThirdIconPack(ILandroid/content/res/Configuration;)V

    invoke-direct {p0, v2, v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsCustomShape(ILcom/oplus/uxicon/helper/IconConfig;)V

    invoke-direct {p0, v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsArtSwitchStatus(Lcom/oplus/uxicon/helper/IconConfig;)V

    invoke-direct {p0, v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsIconSize(Lcom/oplus/uxicon/helper/IconConfig;)V

    invoke-direct {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppNameSize()V

    :cond_3e
    return-void
.end method

.method public statsMoveAppToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_16

    goto :goto_1b

    :cond_16
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1b
    :goto_1b
    const-string p1, " "

    :goto_1d
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string/jumbo v1, "move_app_to_thumb_in_page_preview_mode"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsMoveBatchItemToThumbFailedInPagePreviewMode()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "move_batch_item_to_thumb_failed_in_page_preview_mode"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsMoveItemToAnotherPageInPreviewMode()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "move_item_to_another_page_in_preview_mode"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsMoveItemToCurPageInPreviewMode()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "move_item_to_page_in_preview_mode"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsMoveItemToThumbFailedInPagePreviewMode()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "move_item_to_thumb_failed_in_page_preview_mode"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsOpenApp(Ljava/lang/String;Z)V
    .registers 4

    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p2, :cond_d

    const-string/jumbo p2, "yes"

    goto :goto_10

    :cond_d
    const-string/jumbo p2, "no"

    :goto_10
    const-string v0, "has_badge"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p2, 0x1

    const-string/jumbo v0, "open_app"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsOpenDeepShortCut(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "click_deep_shortcut"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsPredictionAppSwitchStatus()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "on"

    goto :goto_16

    :cond_13
    const-string/jumbo v1, "off"

    :goto_16
    const-string/jumbo v2, "show_prediction_app"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v1, 0x0

    const-string/jumbo v2, "prediction_app_switch_status"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsRemoveAppFromWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_16

    goto :goto_1b

    :cond_16
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1b
    :goto_1b
    const-string p1, " "

    :goto_1d
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p1, 0x1

    const-string/jumbo v1, "remove_app_from_workspace"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsShortcutSetting(Ljava/lang/String;Z)V
    .registers 4

    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p2, :cond_d

    const-string/jumbo p2, "yes"

    goto :goto_10

    :cond_d
    const-string/jumbo p2, "no"

    :goto_10
    const-string v0, "enable_shortcut"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 p2, 0x0

    const-string/jumbo v0, "shortcut_setting"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsUninstallApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "uninstall_type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "uninstall_count"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo p1, "uninstall_app"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsUninstallAppWindowClose(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "app_name"

    const-string/jumbo v3, "packageName"

    const-string v4, ""

    if-nez v1, :cond_19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x19

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x19

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v1, :cond_5c

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v8}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v1, -0x1

    const-string v10, ","

    if-ge v7, v9, :cond_47

    move-object v11, v10

    goto :goto_48

    :cond_47
    move-object v11, v4

    :goto_48
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v9, :cond_55

    goto :goto_56

    :cond_55
    move-object v10, v4

    :goto_56
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_5c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6a
    const-string/jumbo p1, "uninstall_type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo p1, "uninstall_app_window_close"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsUninstallAppWindowPopup(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    const-string/jumbo v3, "packageName"

    if-nez v1, :cond_14

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v1, :cond_3d

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v6}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_36

    const-string v6, ","

    goto :goto_37

    :cond_36
    move-object v6, v2

    :goto_37
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_44
    const-string/jumbo p1, "uninstall_type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/AppIconShortcutStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo p1, "uninstall_app_window_popup"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
