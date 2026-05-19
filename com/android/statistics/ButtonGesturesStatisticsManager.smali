.class public Lcom/android/statistics/ButtonGesturesStatisticsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EVENT_ALLAPP_POPUPS_CLICK_TYPE:Ljava/lang/String; = "popups_click_type"

.field private static final EVENT_CLEAR_BUTTON_LONG_CLICK:Ljava/lang/String; = "clear_button_long_click"

.field private static final EVENT_CLICK_BOTTOM_SEARCH:Ljava/lang/String; = "click_bottom_search"

.field private static final EVENT_CLICK_EFFECT_SET_ENTRANCE:Ljava/lang/String; = "click_effect_set_entrance"

.field private static final EVENT_CLICK_SETTING_SET_ENTRANCE:Ljava/lang/String; = "click_setting_set_entrance"

.field private static final EVENT_DT_SCREEN_LOCK_SWITCH:Ljava/lang/String; = "event_double_tap_screen_lock_switch"

.field private static final EVENT_ENTER_DRAWER:Ljava/lang/String; = "enter_drawer"

.field private static final EVENT_ENTER_LOCK_SETTINGS:Ljava/lang/String; = "enter_lock_settings"

.field private static final EVENT_GESTURE_RECOGNITION_FAILED:Ljava/lang/String; = "gesture_recognition_failed"

.field private static final EVENT_INDICATOR_USAGE:Ljava/lang/String; = "page_indicator_pressdrag_usage"

.field private static final EVENT_LAUNCHER_ALLAPP_OPERATE:Ljava/lang/String; = "launcher_allapp_operate"

.field private static final EVENT_LAYOUT_DETAILSPAGE_CLICK:Ljava/lang/String; = "layout_detailspage_click"

.field private static final EVENT_PULL_DOWN_TO_SEARCH:Ljava/lang/String; = "pull_down_to_search"

.field private static final EVENT_PULL_UP_GOOGLE_SEARCH:Ljava/lang/String; = "event_pull_up_google_search"

.field private static final EVENT_PULL_UP_PAGE:Ljava/lang/String; = "event_pull_up_page"

.field private static final EVENT_ROTATE_DETAILSPAGE_CLICK:Ljava/lang/String; = "rotate_detailspage_click"

.field private static final EVENT_SET_SLIDE_DOWN_TO_DESKTOP:Ljava/lang/String; = "set_slide_down_to_desktop"

.field private static final EVENT_SIDE_GESTURES_GUIDE:Ljava/lang/String; = "side_gestures_guide"

.field private static final EVENT_SLIDE_CROSS_OVER_PAGE:Ljava/lang/String; = "slide_cross_over_page"

.field private static final EVENT_SWITCH_PAGE_IN_PREVIEW_STATE:Ljava/lang/String; = "switch_page_in_preview_state"

.field private static final EVENT_TOUCH_EMPTY_START_HOME:Ljava/lang/String; = "touch_empty_start_home"

.field private static final EVENT_TRIGGER_DESKTOP_MODE:Ljava/lang/String; = "trigger_desktop_mode"

.field private static final KEY_CLICK_ICON_TYPE:Ljava/lang/String; = "click_icon_type"

.field private static final KEY_EVENT_DT_SCREEN_LOCK_SWITCH:Ljava/lang/String; = "event_double_tap_screen_lock_switch_state"

.field private static final KEY_GESTURE_FAILED_ORIENTATION:Ljava/lang/String; = "gesture_failed_orientation"

.field private static final KEY_GESTURE_FAILED_REASON:Ljava/lang/String; = "gesture_failed_reason"

.field private static final KEY_IS_PULL_UP_MODE:Ljava/lang/String; = "open"

.field private static final KEY_LAYOUT_DETAILSPAGE_BTNCLICK:Ljava/lang/String; = "layout_detailspage_btnclick"

.field private static final KEY_LAYOUT_SELECT:Ljava/lang/String; = "layout_select"

.field private static final KEY_OPEN_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_ROTATE_SELECT:Ljava/lang/String; = "rotate_select"

.field private static final KEY_SEARCH_BTN_CLICK:Ljava/lang/String; = "search_btn_click"

.field private static final KEY_SEARCH_DENY_AUTHORIZATION:Ljava/lang/String; = "search_deny_authorization"

.field private static final KEY_SIDE_GESTURES_GUIDE_ORIGIN:Ljava/lang/String; = "side_gestures_guide_origin"

.field private static final KEY_SIDE_GESTURES_GUIDE_RESULT:Ljava/lang/String; = "side_gestures_guide_result"

.field private static final KEY_SINK_ICON_DESKTOP:Ljava/lang/String; = "sink_icon_desktop"

.field private static final KEY_SLIDE_DOWN_TO_DESKTOP_TYPE:Ljava/lang/String; = "slide_down_to_desktop_type"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStatistics:Lcom/android/statistics/BaseStatistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    return-void
.end method


# virtual methods
.method public statClearButtonLongClick()V
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "clear_button_long_click"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statClickBlackToHome()V
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v0, "touch_empty_start_home"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEnterLockSettings()V
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "enter_lock_settings"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statGestureRecognitionFailed(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendGestureRecognitionFailed: orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gesture_failed_orientation"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gesture_failed_reason"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "gesture_recognition_failed"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statSearchDenyAuthorizationClickCount()V
    .registers 4

    const-string/jumbo v0, "search_deny_authorization"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statSearchViewClickCount()V
    .registers 4

    const-string/jumbo v0, "search_btn_click"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statUsingPageIndicatorPressDragging()V
    .registers 4

    const-string v0, "LauncherStatistics"

    const-string/jumbo v1, "sendUsingPageIndicatorPressDragging"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "page_indicator_pressdrag_usage"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statUsingSideGestures(II)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "side_gestures_guide_origin"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "side_gestures_guide_result"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendUsingSideGestures: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherStatistics"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo p1, "side_gestures_guide"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickBottomSearch()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "click_bottom_search"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickEffectSetEntrance()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "click_effect_set_entrance"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickSettingSetEntrance()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "click_setting_set_entrance"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsDoubleTapLockScreenSwitch()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isDoubleClickLock(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_double_tap_screen_lock_switch_state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "event_double_tap_screen_lock_switch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsEnterDrawer()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "enter_drawer"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsEventClickAllAppOperate(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "click_icon_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "launcher_allapp_operate"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsEventClickManagePopupsAllApp(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "popups_click_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p1, "launcher_allapp_operate"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsEventLayoutDetailspageClick(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "layout_select"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "layout_detailspage_btnclick"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string p2, "layout_detailspage_click"

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsEventRotateDetailspageClick(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "rotate_select"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "layout_detailspage_btnclick"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo p2, "rotate_detailspage_click"

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsEventTriggerDesktopMode()V
    .registers 4

    const-string/jumbo v0, "sink_icon_desktop"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "trigger_desktop_mode"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsPullDownToSearch()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "pull_down_to_search"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsPullUpPage()V
    .registers 8

    iget-object v0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string p0, "LauncherStatistics"

    const-string v0, "context is null, stat gsearch times failed"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string/jumbo v2, "open"

    const-string v3, "is_pull_up_gsearch"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_57

    const-string/jumbo v1, "open_google_search_times"

    invoke-static {v0, v1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    move v4, v5

    :goto_32
    if-eqz v4, :cond_7d

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "count"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v0, :cond_49

    iget-object v0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_49
    const-string/jumbo v0, "on"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "event_pull_up_google_search"

    invoke-virtual {p0, v0, v3, v5}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_7d

    :cond_57
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_71

    const-string v0, "1"

    goto :goto_73

    :cond_71
    const-string v0, "0"

    :goto_73
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "event_pull_up_page"

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public statsSlideCrossOverPage()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "slide_cross_over_page"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSlideDownToWorkSpace()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slide_down_to_desktop_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "set_slide_down_to_desktop"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSwitchPageInPreviewState()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/ButtonGesturesStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "switch_page_in_preview_state"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
