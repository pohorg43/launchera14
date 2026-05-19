.class public Lcom/android/statistics/LauncherStatistics;
.super Lcom/android/statistics/BaseStatistics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/statistics/LauncherStatistics$DrawerOperatePopups;,
        Lcom/android/statistics/LauncherStatistics$DrawerOperate;,
        Lcom/android/statistics/LauncherStatistics$DetailspageBtnClickEnum;
    }
.end annotation


# static fields
.field private static final EVENT_APP_RECOVER:Ljava/lang/String; = "app_recover"

.field private static final EVENT_BACKUP_RESTORE_LAUNCHER:Ljava/lang/String; = "backupRestore_launcher"

.field private static final EVENT_BRANCH_CLICK_SERVICE_DECLARE:Ljava/lang/String; = "event_branch_click_service_declare"

.field private static final EVENT_BRANCH_CLICK_SUGGEST_LINK:Ljava/lang/String; = "event_branch_click_suggest_link"

.field private static final EVENT_BRANCH_NAVIGATOR_SEARCH:Ljava/lang/String; = "event_branch_navigator_search"

.field private static final EVENT_BRANCH_SDK_INIT:Ljava/lang/String; = "event_branch_sdk_init"

.field public static final EVENT_CLOSE_SUPER_POWER_SAVE_BATTERY:Ljava/lang/String; = "close_super_power_save_battery"

.field private static final EVENT_CONTENT_PROTECTION:Ljava/lang/String; = "centent_protection"

.field private static final EVENT_DAILY_USE_TIME:Ljava/lang/String; = "daily_use_time"

.field private static final EVENT_DEPLOY_WORK_PROFILE_BYOD:Ljava/lang/String; = "deploy_workprofile_byod"

.field private static final EVENT_DOWNLOADING_TO_PAUSED_BY_MARKET:Ljava/lang/String; = "downloading_to_paused_by_market"

.field private static final EVENT_ID_CLICK_CLEAR_ALL_BUTTON:Ljava/lang/String; = "event_click_clear_all_button"

.field private static final EVENT_ID_CLICK_TASK_MENU_BUTTON:Ljava/lang/String; = "event_click_task_menu_button"

.field private static final EVENT_ID_ENTER_RECENTS:Ljava/lang/String; = "event_enter_enter_recents"

.field private static final EVENT_ID_FLEXIBLE_APP_USAGE:Ljava/lang/String; = "event_flexible_app_usage"

.field private static final EVENT_LAUNCH:Ljava/lang/String; = "launch"

.field private static final EVENT_LAUNCH_RECENTS:Ljava/lang/String; = "launch_time_consuming"

.field private static final EVENT_MEMORY_WATCHDOG:Ljava/lang/String; = "event_memory_watchdog"

.field public static final EVENT_OPEN_SUPER_POWER_SAVE_BATTERY:Ljava/lang/String; = "open_super_power_save_battery"

.field private static final EVENT_RECENT_MEMO_SWITCH:Ljava/lang/String; = "recent_task_memo_switch_settings"

.field private static final EVENT_REDUNDANT_TASK:Ljava/lang/String; = "redundant_tasks"

.field private static final EVENT_SUPER_POWER_SAVE_EXIT_LOW_PRESSURE_SYSTEM_COUNT:Ljava/lang/String; = "super_power_save_exit_low_pressure_system_count_key"

.field public static final EVENT_SUPER_POWER_SAVE_USAGE_TIME:Ljava/lang/String; = "super_power_save_usage_time"

.field private static final EVENT_UPGRADE_OS_12_DATA_COMPATIBLE:Ljava/lang/String; = "upgrade_os12_data_compatible"

.field private static final KEY_ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field private static final KEY_APP_RECOVER_COUNT:Ljava/lang/String; = "app_recover_count"

.field private static final KEY_APP_RECOVER_MEANS:Ljava/lang/String; = "app_recover_means"

.field private static final KEY_APP_RECOVER_PACKAGES:Ljava/lang/String; = "app_recover_packages"

.field private static final KEY_BACKUP_RESTORE_STATUS:Ljava/lang/String; = "br_status"

.field private static final KEY_BRANCH_SEARCH_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_BRANCH_SEARCH_GAID:Ljava/lang/String; = "gaid"

.field private static final KEY_BRANCH_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_CONTENT_PROTECTION_PKG:Ljava/lang/String; = "content_protection_pkg"

.field private static final KEY_CONTENT_PROTECTION_STATE:Ljava/lang/String; = "content_protection_state"

.field private static final KEY_DAILY_USE_TIME:Ljava/lang/String; = "daily_use_time"

.field private static final KEY_FILTER_LOCK:Ljava/lang/String; = "filter_lock"

.field private static final KEY_FLEXIBLE_APP_USAGE_DURATION:Ljava/lang/String; = "flexible_app_usage_duration"

.field private static final KEY_FLEXIBLE_APP_USAGE_PACKAGE:Ljava/lang/String; = "flexible_app_usage_package"

.field private static final KEY_LAUNCH_CLEANED:Ljava/lang/String; = "hasCleaned"

.field private static final KEY_LAUNCH_REMOVED:Ljava/lang/String; = "hasRemoved"

.field private static final KEY_LAUNCH_REMOVED_TASKS:Ljava/lang/String; = "removedTasks"

.field private static final KEY_LOCKED:Ljava/lang/String; = "locked"

.field private static final KEY_MEM_WATCHDOG:Ljava/lang/String; = "memWatchDog"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_RECENT_MEMO_SWITCH_STATUS:Ljava/lang/String; = "recent_memo_switch_status"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_SELECT:Ljava/lang/String; = "select"

.field private static final KEY_START_ACTIVITY_DURATION:Ljava/lang/String; = "start_activity_duration"

.field private static final KEY_START_ACTIVITY_FROM_APP:Ljava/lang/String; = "start_activity_from_app"

.field private static final KEY_START_ACTIVITY_METHOD:Ljava/lang/String; = "start_activity_method"

.field private static final KEY_SUPER_POWER_SAVE_APP_COUNT:Ljava/lang/String; = "super_power_save_app_count"

.field private static final KEY_SUPER_POWER_SAVE_APP_NAME:Ljava/lang/String; = "super_power_save_app_name"

.field private static final KEY_SUPER_POWER_SAVE_BATTERY:Ljava/lang/String; = "super_power_save_battery"

.field private static final KEY_SUPER_POWER_SAVE_USAGE_TIME:Ljava/lang/String; = "super_power_save_usage_time"

.field public static final LAUNCH_RECENTS_TOGGLE:Ljava/lang/String; = "toggle"

.field private static final LAUNCH_TIME_ANALYSIS_MODULE_NAME:Ljava/lang/String; = "recents"

.field private static final LOGTAG_LAUNCH_TIME_ANALYSIS:Ljava/lang/String; = "HM_APP_AVG"

.field private static final WALLPAPER_SEPARATOR:Ljava/lang/String; = ";"

.field public static final WAY_LONG_CLICK:Ljava/lang/String; = "long_click"

.field public static final WAY_SCALE:Ljava/lang/String; = "scale"

.field private static volatile sInstance:Lcom/android/statistics/LauncherStatistics;


# instance fields
.field private mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

.field private mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

.field private mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

.field private mHasCleaned:Z

.field private mHasRemovedTask:Z

.field private mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

.field private mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

.field private mRemovedTasks:I

.field private mToggleClickedTime:J

.field private mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

.field private mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/statistics/BaseStatistics;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/statistics/LauncherStatistics;->mHasCleaned:Z

    iput-boolean p1, p0, Lcom/android/statistics/LauncherStatistics;->mHasRemovedTask:Z

    iput p1, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/statistics/LauncherStatistics;->mToggleClickedTime:J

    new-instance p1, Lcom/android/statistics/AppIconShortcutStatisticsManager;

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;-><init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    new-instance p1, Lcom/android/statistics/WidgetCardStatisticsManager;

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/statistics/WidgetCardStatisticsManager;-><init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    new-instance p1, Lcom/android/statistics/WallpaperStatisticsManager;

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/statistics/WallpaperStatisticsManager;-><init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    new-instance p1, Lcom/android/statistics/FolderStatisticsManager;

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/statistics/FolderStatisticsManager;-><init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    new-instance p1, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;-><init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    new-instance p1, Lcom/android/statistics/ButtonGesturesStatisticsManager;

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;-><init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    new-instance p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;-><init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/statistics/LauncherStatistics;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->lambda$statsDaily$0()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;
    .registers 3

    sget-object v0, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/statistics/LauncherStatistics;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/statistics/LauncherStatistics;

    invoke-direct {v1, p0}, Lcom/android/statistics/LauncherStatistics;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    return-object p0
.end method

.method private synthetic lambda$statsDaily$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAllAppsCount()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsWallPaperType()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsWallpaperInfo()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsLauncherMode()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsIconFallenSwitch()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsDockExpandSwitch()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsPredictionAppSwitchStatus()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAddAppToWorkspaceSwitchStatus()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsLauncherLayout()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsLayoutIsCompact()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsSlideDownToWorkSpace()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppStartAnimationSpeed()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/FolderStatisticsManager;->statsFolderInfo()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsLauncherLayoutLockedStatus()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsIconStyleUsage()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsDoubleTapLockScreenSwitch()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsWidgetAndCardInfo()V

    invoke-static {}, Lcom/android/launcher3/search/SearchEntry;->isSearchEntrySupported()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsSearchEntrySwitchStatus()V

    :cond_60
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsBranchSearch()V

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsBranchClickSuggestLink()V

    :cond_70
    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsPullUpPage()V

    :cond_7f
    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsBottomSearchWidgetLocation()V

    :cond_8c
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statServiceCardPermissionEvent()V

    :cond_99
    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsSearchWidgetLocation()V

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportLayoutSwitch()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsLayoutUpgradeInfo()V

    :cond_a9
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {v0}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsTaskbarSwitchStateAndAppInfo()V

    :cond_ba
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;->statRecentPhoneManagerSwitch()V

    :cond_c7
    return-void
.end method


# virtual methods
.method public cleanRunnableQueue()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WidgetCardStatisticsManager;->cleanRunnableQueue()V

    return-void
.end method

.method public sendRedundantTaskInfo(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/GroupTask;

    iget-object v3, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/quickstep/applock/AppLockModel;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-nez v5, :cond_48

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_57

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    :cond_57
    const-string v3, ""

    :goto_59
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_5d
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_65

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "pkg_name"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "activity_name"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isRedundantTask(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "filter_lock"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "locked"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "redundant_tasks"

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accept: sendRedundantTaskInfo onCommon eventId:redundant_tasks, map:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LauncherStatistics"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_ed
    return-void
.end method

.method public setHasCleaned(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/statistics/LauncherStatistics;->mHasCleaned:Z

    return-void
.end method

.method public setHasRemovedTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/statistics/LauncherStatistics;->mHasRemovedTask:Z

    iget p1, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    return-void
.end method

.method public setLocateInformation(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->setLocateInformation(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public setSuperpowerExitLowPressureCount()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "super_power_save_exit_low_pressure_system_count_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public setToggleClickedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/statistics/LauncherStatistics;->mToggleClickedTime:J

    return-void
.end method

.method public statBigFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statBigFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/String;)V

    return-void
.end method

.method public statClearButtonLongClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statClearButtonLongClick()V

    return-void
.end method

.method public statClickBlackToHome()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statClickBlackToHome()V

    return-void
.end method

.method public statClickEvent(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statClickEvent(Landroid/view/View;)V

    return-void
.end method

.method public statContentProtectionStateChange(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendContentProtectionStateChange: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content_protection_pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "content_protection_state"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "centent_protection"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEnterLockSettings()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statEnterLockSettings()V

    return-void
.end method

.method public statEnterRecentsView()V
    .registers 4

    const-string v0, "event_enter_enter_recents"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEventClickClearAllButton()V
    .registers 4

    const-string v0, "event_click_clear_all_button"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEventClickTaskMenuView()V
    .registers 4

    const-string v0, "event_click_task_menu_button"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statFlexibleTaskUsageDuration(Ljava/lang/String;F)V
    .registers 6

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_e

    goto :goto_53

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "flexible_app_usage_package"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statFlexibleTaskUsageDuration(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherStatistics"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "flexible_app_usage_duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "event_flexible_app_usage"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_53
    :goto_53
    return-void
.end method

.method public statFolderClickEvent(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statFolderClickEvent(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statGestureRecognitionFailed(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statGestureRecognitionFailed(II)V

    return-void
.end method

.method public statHasMustPlay()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/FolderStatisticsManager;->statHasMustPlay()V

    return-void
.end method

.method public statLaunch()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/statistics/LauncherStatistics;->mHasCleaned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hasCleaned"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/android/statistics/LauncherStatistics;->mHasRemovedTask:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hasRemoved"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "removedTasks"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statisticLaunch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherStatistics"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "launch"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/statistics/LauncherStatistics;->mHasCleaned:Z

    iput-boolean v0, p0, Lcom/android/statistics/LauncherStatistics;->mHasRemovedTask:Z

    iput v0, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    return-void
.end method

.method public statMoveFolder(Lcom/android/launcher3/model/data/FolderInfo;IIZ)V
    .registers 5

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/statistics/FolderStatisticsManager;->statMoveFolder(Lcom/android/launcher3/model/data/FolderInfo;IIZ)V

    return-void
.end method

.method public statOpenBFByClick(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statOpenBFByClick(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statOpenBFByLongClick(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statOpenBFByLongClick(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statOpenBigFolderByDifferentType(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/FolderStatisticsManager;->statOpenBigFolderByDifferentType(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;)V

    return-void
.end method

.method public statOpenMustPlay()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/FolderStatisticsManager;->statOpenMustPlay()V

    return-void
.end method

.method public statPendingCardClickCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statPendingCardClickCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    return-void
.end method

.method public statPendingCardClickPin(Lcom/android/launcher3/card/PendingAddCardInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statPendingCardClickPin(Lcom/android/launcher3/card/PendingAddCardInfo;)V

    return-void
.end method

.method public statPendingCardLongClickCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statPendingCardLongClickCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    return-void
.end method

.method public statRecentMemoSwitch(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "recent_memo_switch_status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statisticRecentMemoSwitch: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherStatistics"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "recent_task_memo_switch_settings"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statRemoveFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statRemoveFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statRemoveQuickStartupApp(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statRemoveQuickStartupApp(Ljava/lang/String;)V

    return-void
.end method

.method public statRenameByLongClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/FolderStatisticsManager;->statRenameByLongClick()V

    return-void
.end method

.method public statScrollBigFolder(Lcom/android/launcher3/model/data/FolderInfo;IIZ)V
    .registers 5

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/statistics/FolderStatisticsManager;->statScrollBigFolder(Lcom/android/launcher3/model/data/FolderInfo;IIZ)V

    return-void
.end method

.method public statSearchDenyAuthorizationClickCount()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statSearchDenyAuthorizationClickCount()V

    return-void
.end method

.method public statSearchViewClickCount()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statSearchViewClickCount()V

    return-void
.end method

.method public statServiceDailyRecentTaskTime()V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/launcher3/model/RecentTaskTime;->INSTANCE:Lcom/android/launcher3/model/RecentTaskTime;

    invoke-virtual {v2}, Lcom/android/launcher3/model/RecentTaskTime;->getStartTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v0, v3

    if-lez v0, :cond_32

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/model/RecentTaskTime;->getAccumulatedTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "recent_task_time_daily_total"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v3, "recent_task_time_daily_event"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-virtual {v2}, Lcom/android/launcher3/model/RecentTaskTime;->reset()V

    :cond_32
    return-void
.end method

.method public statShortcutExposureEvent(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statShortcutExposureEvent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public statSomFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statSomFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statStartActivityDuration(Ljava/lang/String;J)V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/android/statistics/LauncherStatistics;->setToggleClickedTime(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/android/statistics/LauncherStatistics;->mToggleClickedTime:J

    sub-long/2addr p2, v1

    long-to-int p2, p2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p3

    if-eqz p3, :cond_23

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p3, :cond_23

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    goto :goto_25

    :cond_23
    const-string p3, ""

    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendStartActivityDuration:  duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; launchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; startFromApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LauncherStatistics"

    invoke-static {v1, p3, v2}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "_"

    invoke-static {p1, v3, p3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "recents.%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HM_APP_AVG"

    invoke-static {v2, v1}, Lcom/android/common/debug/DebugLogPUtils;->logP(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "start_activity_duration"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "start_activity_method"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "start_activity_from_app"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "launch_time_consuming"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statStartAppFromDock()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statStartAppFromDock()V

    return-void
.end method

.method public statStartAppFromTask()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statStartAppFromTask()V

    return-void
.end method

.method public statUsingPageIndicatorPressDragging()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statUsingPageIndicatorPressDragging()V

    return-void
.end method

.method public statUsingSideGestures(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statUsingSideGestures(II)V

    return-void
.end method

.method public statWidgetClickEvent(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statWidgetClickEvent(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;Ljava/lang/String;)V

    return-void
.end method

.method public statWidgetsAndCardsExposure()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statWidgetsAndCardsExposure()V

    return-void
.end method

.method public statsAddShortcutFailed(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsAddShortcutFailed(Ljava/lang/String;)V

    return-void
.end method

.method public statsAddWidgetOrShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsAddWidgetOrShortcut(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statsAppChangedToInstalled(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppChangedToInstalled(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsAppChangedToInstalling(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppChangedToInstalling(Ljava/lang/String;)V

    return-void
.end method

.method public statsAppGuideClickCard(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideClickCard(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickClose(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideClickClose(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideClickIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickOutSide(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideClickOutSide(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideShow(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppGuideShow(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public statsAppRecover(Ljava/lang/String;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;",
            ">;)V"
        }
    .end annotation

    const-string v0, "app_recover_means"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "app_recover_count"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "app_recover_packages"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_recover"

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsBackupRestoreLauncher(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "br_status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "backupRestore_launcher"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    sget-object p0, Lcom/android/statistics/OlcManagerHelper;->Companion:Lcom/android/statistics/OlcManagerHelper$Companion;

    invoke-virtual {p0}, Lcom/android/statistics/OlcManagerHelper$Companion;->getInstance()Lcom/android/statistics/OlcManagerHelper;

    move-result-object p0

    sget-object v0, Lcom/android/statistics/OlcManagerHelper$LogOption;->LAUNCHER:Lcom/android/statistics/OlcManagerHelper$LogOption;

    invoke-virtual {v0}, Lcom/android/statistics/OlcManagerHelper$LogOption;->getValue()J

    move-result-wide v0

    const v2, 0x10031001

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/statistics/OlcManagerHelper;->raiseException(IJLjava/lang/String;)V

    return-void
.end method

.method public statsBatchAddAppToWorkspace()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsBatchAddAppToWorkspace()V

    return-void
.end method

.method public statsBatchDrag()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsBatchDrag()V

    return-void
.end method

.method public statsBranchClickSuggestLink()V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getSuggestLinkCount(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    if-eqz v0, :cond_37

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gaid"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "event_branch_click_suggest_link"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object p0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setSuggestLinkCount(Landroid/content/Context;Z)V

    :cond_37
    return-void
.end method

.method public statsBranchInit()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gaid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "event_branch_sdk_init"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_20
    return-void
.end method

.method public statsBranchSearch()V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getSearchCount(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    if-eqz v0, :cond_37

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gaid"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "event_branch_navigator_search"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object p0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setSearchCount(Landroid/content/Context;Z)V

    :cond_37
    return-void
.end method

.method public statsCardOrWidgetChangeAdd(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsCardOrWidgetChangeAdd(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsCardOrWidgetChangeDelete(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsCardOrWidgetChangeDelete(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public statsClickAppEdit()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickAppEdit()V

    return-void
.end method

.method public statsClickAppEditResult()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickAppEditResult()V

    return-void
.end method

.method public statsClickAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statsClickBottomSearch()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsClickBottomSearch()V

    return-void
.end method

.method public statsClickCardOrWidgetSetEntrance()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickCardOrWidgetSetEntrance()V

    return-void
.end method

.method public statsClickDeepShortcutOnPopupWindow(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickDeepShortcutOnPopupWindow(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsClickDisbandFolder()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/FolderStatisticsManager;->statsClickDisbandFolder()V

    return-void
.end method

.method public statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsClickDrawerAppSort(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickDrawerAppSort(I)V

    return-void
.end method

.method public statsClickEffectSetEntrance()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsClickEffectSetEntrance()V

    return-void
.end method

.method public statsClickInstallIconInDownloading(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickInstallIconInDownloading(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickInstallIconInPaused(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickInstallIconInPaused(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickPredictionApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickPredictionApp(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsClickSearchEntry()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickSearchEntry()V

    return-void
.end method

.method public statsClickSearchEntrySwitch(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickSearchEntrySwitch(Z)V

    return-void
.end method

.method public statsClickSearchResultApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsClickSearchResultApp(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsClickSettingSetEntrance()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsClickSettingSetEntrance()V

    return-void
.end method

.method public statsClickTaskbar(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsClickTaskbar(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsClickToAddBrowserWidget(Lcom/android/launcher3/PendingAddItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickToAddBrowserWidget(Lcom/android/launcher3/PendingAddItemInfo;)V

    return-void
.end method

.method public statsClickToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    return-void
.end method

.method public statsClickWallpaperEntryArt()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntryArt()V

    return-void
.end method

.method public statsClickWallpaperEntryCreation()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntryCreation()V

    return-void
.end method

.method public statsClickWallpaperEntryLive()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntryLive()V

    return-void
.end method

.method public statsClickWallpaperEntryOther()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntryOther()V

    return-void
.end method

.method public statsClickWallpaperEntryStatic()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntryStatic()V

    return-void
.end method

.method public statsClickWallpaperSetEntrance()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperSetEntrance()V

    return-void
.end method

.method public statsClickWidgetSetEntrance()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickWidgetSetEntrance()V

    return-void
.end method

.method public statsClickWidgetSetting(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsClickWidgetSetting(Z)V

    return-void
.end method

.method public statsCloseSuperPowerSaveModeBattery(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "super_power_save_battery"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "close_super_power_save_battery"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsDaily()V
    .registers 3

    const-string v0, "LauncherStatistics"

    const-string/jumbo v1, "statsDaily."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/statistics/LauncherStatistics;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public statsDeployWhenWorkProfileBYOD()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "deploy_workprofile_byod"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsDownloadingToPausedByMarket(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "downloading_to_paused_by_market"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsDragAppToWorkspaceFromDrawer(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsDragAppToWorkspaceFromDrawer(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsDragShortcutToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsDragShortcutToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsEnterDrawer()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsEnterDrawer()V

    return-void
.end method

.method public statsEnterEditBtnClick(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsEnterEditBtnClick(Ljava/lang/String;)V

    return-void
.end method

.method public statsEnterToggleBarState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsEnterToggleBarState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statsEventClickAllAppOperate(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsEventClickAllAppOperate(I)V

    return-void
.end method

.method public statsEventClickManagePopupsAllApp(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsEventClickManagePopupsAllApp(I)V

    return-void
.end method

.method public statsEventLayoutDetailspageClick(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsEventLayoutDetailspageClick(Ljava/lang/String;I)V

    return-void
.end method

.method public statsEventPhoneManagerEntranceClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;->statsEventPhoneManagerEntranceClick()V

    return-void
.end method

.method public statsEventPhoneManagerEntranceDisplay()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;->statsPhoneManagerEntranceDisplay()V

    return-void
.end method

.method public statsEventRotateDetailspageClick(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsEventRotateDetailspageClick(Ljava/lang/String;I)V

    return-void
.end method

.method public statsEventTriggerDesktopMode()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsEventTriggerDesktopMode()V

    return-void
.end method

.method public statsEventWidgetControl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsWidgetControl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statsGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statsGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statsIconFallenComplete()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsIconFallenComplete()V

    return-void
.end method

.method public statsIconShimmer(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsIconShimmer(Ljava/lang/String;)V

    return-void
.end method

.method public statsItemClick(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_3d

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->canShowDot()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->canShowBadgeNumber()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :cond_22
    :goto_22
    move v2, v1

    :cond_23
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2c

    const-string p1, ""

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_30
    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1, v2}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsOpenApp(Ljava/lang/String;Z)V

    goto :goto_3d

    :cond_36
    if-ne v0, v1, :cond_3d

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsOpenDeepShortCut(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public statsLongClickToAddWidget(Lcom/android/launcher3/PendingAddItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsLongClickToAddWidget(Lcom/android/launcher3/PendingAddItemInfo;)V

    return-void
.end method

.method public statsLongClickWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsLongClickWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public statsLongPressTaskbarShowState(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsLongPressTaskbarShowState(Z)V

    return-void
.end method

.method public statsMemoryWatchDog(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "memWatchDog"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_memory_watchdog"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsMoveAppToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsMoveAppToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsMoveBatchItemToThumbFailedInPagePreviewMode()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsMoveBatchItemToThumbFailedInPagePreviewMode()V

    return-void
.end method

.method public statsMoveItemThumbnailFailed(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsMoveItemThumbnailFailed(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statsMoveItemToAnotherPageInPreviewMode()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsMoveItemToAnotherPageInPreviewMode()V

    return-void
.end method

.method public statsMoveItemToCurPageInPreviewMode()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsMoveItemToCurPageInPreviewMode()V

    return-void
.end method

.method public statsMoveItemToThumbFailedInPagePreviewMode()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsMoveItemToThumbFailedInPagePreviewMode()V

    return-void
.end method

.method public statsMoveWidget(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/DropTarget$DragObject;)V
    .registers 8

    iget-object v0, p3, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    iget-object p2, p3, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object p3, p3, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of p3, p3, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v1, :cond_18

    if-eqz p3, :cond_56

    :cond_18
    if-eqz v1, :cond_1f

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p2, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    goto :goto_23

    :cond_1f
    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p2, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    :goto_23
    const-string/jumbo p3, "onDrop(), beforeScreenId ="

    const-string v2, ",endScreenId ="

    const-string v3, "LauncherStatistics"

    invoke-static {p3, p1, v2, v0, v3}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const-string p3, "2"

    const-string v2, "1"

    if-ne p1, v0, :cond_41

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    if-eqz v1, :cond_38

    goto :goto_39

    :cond_38
    move-object p3, v2

    :goto_39
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsMoveWidgetInCurrentPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_41
    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    if-eqz v1, :cond_46

    goto :goto_47

    :cond_46
    move-object p3, v2

    :goto_47
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsMoveWidgetToOtherPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public statsMoveWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsMoveWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public statsMoveWidgetToAnotherPageInPreviewMode()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsMoveWidgetToAnotherPageInPreviewMode()V

    return-void
.end method

.method public statsMoveWidgetToCurPageInPreviewMode()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsMoveWidgetToCurPageInPreviewMode()V

    return-void
.end method

.method public statsMoveWidgetToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsMoveWidgetToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public statsOpOTAResult(ZLjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1a

    const-string/jumbo p1, "reason"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const/4 p1, 0x1

    const-string/jumbo p2, "upgrade_os12_data_compatible"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsOpenSuperPowerSaveModeBattery(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "super_power_save_battery"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "open_super_power_save_battery"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsOpenWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsOpenWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public statsPromptBeforeDelete(ILjava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsPromptBeforeDelete(ILjava/lang/String;)V

    return-void
.end method

.method public statsPullDownToSearch()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsPullDownToSearch()V

    return-void
.end method

.method public statsRecommendFolderOpenDynamic(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statsRecommendFolderOpenDynamic(I)V

    return-void
.end method

.method public statsRecommendFolderSettingsStates(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statsRecommendFolderSettingsStates(Z)V

    return-void
.end method

.method public statsRemoveAppFromWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsRemoveAppFromWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public statsRemoveBrowserWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsRemoveBrowserWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public statsRemoveBrowserWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsRemoveBrowserWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public statsRemoveWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsRemoveWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public statsRenameFolder(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statsRenameFolder(Ljava/lang/String;)V

    return-void
.end method

.method public statsSearchWidgetsExposeInCellLayout(Lcom/android/launcher3/OplusCellLayout;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsSearchWidgetsExposeInCellLayout(Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method

.method public statsServiceDeclareClick(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "version"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_branch_click_service_declare"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSetWallpaperInDesktop(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWallpaperStatisticsManager:Lcom/android/statistics/WallpaperStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WallpaperStatisticsManager;->statsSetWallpaperInDesktop(Ljava/lang/String;)V

    return-void
.end method

.method public statsShortcutSetting(Ljava/lang/String;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsShortcutSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public statsSlideCrossOverPage()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsSlideCrossOverPage()V

    return-void
.end method

.method public statsSuperLockingAppInfo()V
    .registers 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSuperLockingApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "super_lock_stats_list_key"

    if-eqz v3, :cond_21

    const-string v1, ""

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v4

    :goto_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_46

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_43

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_46
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5b
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "super_lock_stats_num_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_8b

    const-string/jumbo v1, "statsSuperLockingAppInfo: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "LauncherStatistics"

    invoke-static {v1, v2, v3}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    const-string/jumbo v1, "super_lock_stats_event"

    invoke-virtual {p0, v1, v0, v4}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSuperPowerSaveUsageTime(J)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "super_power_save_usage_time"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSwitchPageInPreviewState()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mButtonGesturesStatisticsManager:Lcom/android/statistics/ButtonGesturesStatisticsManager;

    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsSwitchPageInPreviewState()V

    return-void
.end method

.method public statsToggleModeGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mFolderStatisticsManager:Lcom/android/statistics/FolderStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->statsToggleModeGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statsTriggerSplitScreen(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mLayoutDockerTaskBarStatisticsManager:Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/LayoutDockerTaskBarStatisticsManager;->statsTriggerSplitScreen(Z)V

    return-void
.end method

.method public statsUSLoadFailCard(Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsUninstallApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsUninstallApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statsUninstallAppWindowClose(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3
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

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsUninstallAppWindowClose(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public statsUninstallAppWindowPopup(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3
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

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mAppIconShortcutStatisticsManager:Lcom/android/statistics/AppIconShortcutStatisticsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/statistics/AppIconShortcutStatisticsManager;->statsUninstallAppWindowPopup(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public statsWidgetFixedShortcutClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsWidgetFixedShortcutClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statsWidgetLongClick(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mWidgetCardStatisticsManager:Lcom/android/statistics/WidgetCardStatisticsManager;

    invoke-virtual {p0, p1}, Lcom/android/statistics/WidgetCardStatisticsManager;->statsWidgetLongClick(Z)V

    return-void
.end method
