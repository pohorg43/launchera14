.class public final Lcom/android/launcher/settings/LauncherSettingsFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;
    }
.end annotation


# static fields
.field private static final ACTION_CAROUSEL_WALLPAPER:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_LAUNCHER_DOCK_EXPAND:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_DOCK_EXPAND"

.field public static final ACTION_LAUNCHER_ICON_FALLEN:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_ICON_FALLEN"

.field public static final ACTION_LAUNCHER_MODE_SETTINGS:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

.field private static final ACTION_NAVIGATION_BAR_ACTIVITY:Ljava/lang/String; = "com.oplus.settings.OplusSettingsActivity$NavigationBarSettingsActivity"

.field private static final ACTION_NAVIGATION_BAR_SETTINGS:Ljava/lang/String; = "oplus.intent.action.NAVIGATION_BAR_SETTINGS"

.field private static final ACTION_SIMPLE_MODE_ACTIVITY:Ljava/lang/String; = "oplus.intent.action.SIMPLE_MODE_ANIM"

.field private static final ACTION_TASKBAR_SETTING_ACTIVITY:Ljava/lang/String; = "com.android.launcher.settings.LauncherTaskbarSettingActivity"

.field private static final ACTION_TASKBAR_SETTING_SETTING:Ljava/lang/String; = "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

.field private static final ACTION_TASKBAR_SETTING_TABLE_ACTIVITY:Ljava/lang/String; = "com.android.launcher.settings.LauncherTabletTaskbarSettingActivity"

.field private static final ACTIVITY_CAROUSEL_WALLPAPER_V1:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.WallpaperActivity"

.field private static final ACTIVITY_CAROUSEL_WALLPAPER_V2:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.WallPaperActivity"

.field private static final BOTTOM_RECOMMEND_KEY:Ljava/lang/String; = "bottom_recommended"

.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_KEY:Ljava/lang/String; = "smart_search_settings_title"

.field private static final BRANCH_SEARCH_URI:Ljava/lang/String; = "content://com.oppo.quicksearchbox.FeatureProvider"

.field private static final COLOR_SWITH_LODING_DELAY:I = 0x3e8

.field public static final Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

.field private static final ERROR_TITLE:Ljava/lang/String; = "startActivity E: "

.field private static final EXP_ACTION_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.ui.GUIDE_ACTION"

.field private static final EXP_ACTIVITY_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial.activities.CarouselWallpapersActivity"

.field public static final EXTRA_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final IS_IN_SIMPLE_MODE:Ljava/lang/String; = "is_in_simple_mode"

.field public static final KEY_APP_UPDATE_DOT:Ljava/lang/String; = "app_update_dot"

.field private static final KEY_CAROUSEL_WALLPAPER_OPEN_FROM:Ljava/lang/String; = "wallpaper_open_from_key"

.field public static final KEY_DOCK_EXPAND:Ljava/lang/String; = "key_dock_expand"

.field public static final KEY_ICON_FALLEN:Ljava/lang/String; = "key_icon_fallen"

.field public static final KEY_LAUNCHER_CATEGORY:Ljava/lang/String; = "launcher_category"

.field public static final KEY_LAUNCHER_DOUBLE_CLICK_LOCK:Ljava/lang/String; = "launcher_double_click_lock"

.field public static final KEY_LAUNCHER_IS_COMPACT_ARRANGEMENT:Ljava/lang/String; = "launcher_is_compact_arrangement"

.field public static final KEY_LAUNCHER_IS_SHOW_SEARCH_BOX:Ljava/lang/String; = "launcher_is_show_search_box"

.field public static final KEY_LAUNCHER_LAYOUT:Ljava/lang/String; = "launcher_layout"

.field public static final KEY_LAUNCHER_LOCKED:Ljava/lang/String; = "launcher_locked"

.field public static final KEY_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field public static final KEY_LAUNCHER_PAGE:Ljava/lang/String; = "launcher_page"

.field public static final KEY_LAUNCHER_RECENT_MANAGE:Ljava/lang/String; = "launcher_recent_manage"

.field public static final KEY_LAUNCHER_SEARCH_ENTRY_ENABLE:Ljava/lang/String; = "launcher_search_entry_enable"

.field public static final KEY_LAUNCHER_SLIDE_DOWN:Ljava/lang/String; = "launcher_slide_down"

.field public static final KEY_LAYOUT_UPGRADE_GUIDE_SETTINGS:Ljava/lang/String; = "launcher_layout_upgrade_guide_settings"

.field public static final KEY_PERSONALITY_ICON_STYLE:Ljava/lang/String; = "personality_icon_style"

.field public static final KEY_PERSONALITY_LAUNCHER_LAYOUT:Ljava/lang/String; = "personality_launcher_layout"

.field public static final KEY_SET_APP_STARTUP_ANIM_SPEED:Ljava/lang/String; = "app_startup_anim_speed"

.field public static final KEY_SET_SUBSCRIPTION:Ljava/lang/String; = "entry_subscription"

.field private static final KEY_SLIDE_VIEW_TO_SETTING:Ljava/lang/String; = "is_slide_view_to_setting_key"

.field private static final KEY_WALLPAPER_SETTING:Ljava/lang/String; = "key_from"

.field public static final LAUNCHER_DOCK_EXPAND_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherDockExpandSettingActivity"

.field public static final LAUNCHER_ICON_FALLEN_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherIconFallenSettingActivity"

.field public static final LAUNCHER_MODE_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherModeSettingActivity"

.field public static final LAUNCHER_MODE_DRAWER:I = 0x2

.field public static final LAUNCHER_MODE_SIMPLE:I = 0x3

.field public static final METHOD_GET_LAUNCHER_MODE_SETTINGS:Ljava/lang/String; = "getLauncherModeSettings"

.field private static final METHOD_IS_IN_SIMPLE_MODE:Ljava/lang/String; = "METHOD_IS_IN_SIMPLE_MODE"

.field private static final PACKAGE_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial"

.field private static final PACKAGE_NAVIGATION_BAR:Ljava/lang/String; = "com.android.settings"

.field private static final PACKAGE_SIMPLE_MODE:Ljava/lang/String; = "com.coloros.scenemode"

.field private static final PACKAGE_TASKBAR_SETTING:Ljava/lang/String; = "com.android.launcher"

.field public static final PERSONALITY_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.uxdesign"

.field private static final TAG:Ljava/lang/String; = "LauncherSettingsFragment"

.field private static final URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

.field private static final VALUE_CAROUSEL_WALLPAPER_OPEN_FROM:I

.field private static final VALUE_WALLPAPER_SETTING:Ljava/lang/String;


# instance fields
.field private isCompactArrangementting:Z

.field private mAodSupport:Z

.field private mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field private mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mBranchSearchSettingPreference:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCurLauncherMode:I

.field private mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

.field private mFrom:Ljava/lang/String;

.field private mFromMainPage:Z

.field private mIsFirstOnResume:Z

.field private mIsHiAssistantAppEnable:Z

.field private mIsShelfAppEnable:Z

.field private mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field private mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

.field private mLauncherCategory:Landroidx/preference/PreferenceCategory;

.field private mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

.field private mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

.field private mShowingDialog:Landroid/app/Dialog;

.field private mSlideDownItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    const v0, 0x7f12002e

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->VALUE_WALLPAPER_SETTING:Ljava/lang/String;

    const-string/jumbo v0, "pictorial://wallpaper"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    return-void
.end method

.method public static final synthetic access$getMLauncherArrangementModeSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    return-object p0
.end method

.method public static final synthetic access$getMLauncherLockedSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    return-object p0
.end method

.method public static final synthetic access$setCompactArrangementting$p(Lcom/android/launcher/settings/LauncherSettingsFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    return-void
.end method

.method public static final synthetic access$stopLoading(Lcom/android/launcher/settings/LauncherSettingsFragment;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->stopLoading(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V

    return-void
.end method

.method public static final synthetic access$syncLauncherArrangementModeStatus(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncLauncherArrangementModeStatus()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$3(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private final changeStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_d8

    const v0, -0x15405525

    const/4 v1, 0x1

    const-string v2, "mContext"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p2, v0, :cond_aa

    const v0, -0x13d5136e

    if-eq p2, v0, :cond_46

    const v0, 0x5f4fde15

    if-eq p2, v0, :cond_1a

    goto/16 :goto_d5

    :cond_1a
    :try_start_1a
    const-string p2, "is_launcher_layout_locked"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d5

    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    goto :goto_2c

    :cond_2b
    move p2, v4

    :goto_2c
    if-nez p2, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v4

    :goto_30
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p2, :cond_35

    goto :goto_38

    :cond_35
    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_38
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_40

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_41

    :cond_40
    move-object v3, p0

    :goto_41
    invoke-static {v3, p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_d5

    :cond_46
    const-string p2, "is_search_entry_enable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_d5

    :cond_50
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    goto :goto_5a

    :cond_59
    move p1, v4

    :goto_5a
    if-nez p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v1, v4

    :goto_5e
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p1, :cond_63

    goto :goto_66

    :cond_63
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_66
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_74

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_74
    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p1

    goto :goto_96

    :cond_95
    move-object p1, v3

    :goto_96
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/launcher3/search/SearchEntry$Companion;->setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_a1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a2

    :cond_a1
    move-object v3, p0

    :goto_a2
    invoke-static {v3}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/statistics/LauncherStatistics;->statsClickSearchEntrySwitch(Z)V

    goto :goto_d5

    :cond_aa
    const-string p2, "is_double_click_lock"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b3

    goto :goto_d5

    :cond_b3
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p2, :cond_bc

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    goto :goto_bd

    :cond_bc
    move p2, v4

    :goto_bd
    if-nez p2, :cond_c0

    goto :goto_c1

    :cond_c0
    move v1, v4

    :goto_c1
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p2, :cond_c6

    goto :goto_c9

    :cond_c6
    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_c9
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_d1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d2

    :cond_d1
    move-object v3, p0

    :goto_d2
    invoke-static {v3, p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_d5
    :goto_d5
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_d7
    .catchall {:try_start_1a .. :try_end_d7} :catchall_d8

    goto :goto_dd

    :catchall_d8
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_dd
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_eb

    const-string/jumbo p1, "setButtonStatus :"

    const-string p2, "LauncherSettingsFragment"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_eb
    return-void
.end method

.method private final checkPreferenceEnable()V
    .registers 4

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_c

    const-string v1, "mContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    const-string v0, "LauncherSettingsFragment"

    const-string v2, " checkPreferenceEnable, the system desktop is locked."

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    const/4 v2, 0x0

    if-nez v0, :cond_20

    goto :goto_23

    :cond_20
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_23
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_28

    goto :goto_2b

    :cond_28
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_2b
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_33
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_38

    goto :goto_54

    :cond_38
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_54

    :cond_3c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_41

    goto :goto_44

    :cond_41
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_44
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_49

    goto :goto_4c

    :cond_49
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_4c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_51

    goto :goto_54

    :cond_51
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_54
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda$11(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initLayoutUpgradeGuide$lambda$8$lambda$7(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda$19$lambda$17$lambda$16(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda$24(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method private static final generateBranchPreference$lambda$28$lambda$27(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p1, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1e

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1e
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->setBranchSearchValue(Landroid/content/Context;I)V

    const/4 p0, 0x0

    return p0
.end method

.method private final getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "mContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    array-length v1, p0

    if-le v1, p1, :cond_1d

    aget-object v0, p0, p1

    :cond_1d
    return-object v0
.end method

.method public static final getExportGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getExportGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final globalsearchEnable(Landroid/content/Context;)Z
    .registers 7

    const-string p0, "NameNotFoundException"

    const-string v0, "LauncherSettingsFragment"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_28

    const-string v4, "com.heytap.quicksearchbox"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_29

    :catch_15
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    move-object v3, v1

    :goto_29
    const/4 v4, 0x1

    if-eqz v3, :cond_32

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-ne v3, v4, :cond_32

    move v3, v4

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    if-eqz v3, :cond_36

    return v4

    :cond_36
    if-eqz p1, :cond_58

    :try_start_38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_58

    const-string v3, "com.oppo.quicksearchbox"

    invoke-virtual {p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_58

    :catch_45
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    if-eqz v1, :cond_60

    iget-boolean p0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-ne p0, v4, :cond_60

    move p0, v4

    goto :goto_61

    :cond_60
    move p0, v2

    :goto_61
    if-eqz p0, :cond_64

    return v4

    :cond_64
    return v2
.end method

.method public static synthetic h(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda$19$lambda$17$lambda$15(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda$14(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method private static final initLayoutUpgradeGuide$lambda$8$lambda$7(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_10

    const-string p0, "mContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_10
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->showLayoutUpgradeGuidePage(Landroid/content/Context;Z)V

    return p1
.end method

.method private final initPreferences()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$1$1;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$1$1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    const-string/jumbo v0, "null cannot be cast to non-null type com.oplus.settingsdynamic.SettingsDynamicController"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onCreatePreference(Landroidx/preference/PreferenceScreen;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    goto :goto_26

    :catchall_21
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_26
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_37

    const-string v1, "initPreferences error = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LauncherClient-ShelfService"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_37
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "launcher_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "launcher_mode"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_52

    goto :goto_5a

    :cond_52
    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_5a
    const-string v0, "key_icon_fallen"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_67

    goto :goto_6f

    :cond_67
    new-instance v1, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v1, p0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_6f
    const-string v0, "key_dock_expand"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_7c

    goto :goto_84

    :cond_7c
    new-instance v1, Landroidx/core/view/inputmethod/a;

    invoke-direct {v1, p0}, Landroidx/core/view/inputmethod/a;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_84
    const-string v0, "launcher_is_compact_arrangement"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-eqz v0, :cond_a2

    new-instance v1, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;

    invoke-direct {v1, p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    iput-object v1, v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->i:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    iget-object v0, v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->a:Landroid/view/View;

    instance-of v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v2, :cond_a2

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V

    :cond_a2
    const-string v0, "launcher_layout"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_af

    goto :goto_b7

    :cond_af
    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_b7
    const-string v0, "launcher_locked"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_c4

    goto :goto_c7

    :cond_c4
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_c7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "launcher_slide_down"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMenuPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_d8

    goto :goto_db

    :cond_d8
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_db
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "app_startup_anim_speed"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMenuPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_ec

    goto :goto_ef

    :cond_ec
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_ef
    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v0

    if-nez v0, :cond_fd

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result v0

    if-eqz v0, :cond_106

    :cond_fd
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_106

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_106
    const-string v0, "launcher_is_show_search_box"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_13f

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_13f

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    if-nez v1, :cond_13f

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v1, :cond_131

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getMPreferenceTitle()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_131
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_136

    goto :goto_14c

    :cond_136
    new-instance v1, Lf/h;

    invoke-direct {v1, p0}, Lf/h;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_14c

    :cond_13f
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_14c
    const-string v0, "launcher_search_entry_enable"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result v0

    if-nez v0, :cond_168

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_168
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_16d

    goto :goto_170

    :cond_16d
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_170
    const-string v0, "launcher_double_click_lock"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_17d

    goto :goto_180

    :cond_17d
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initSlideDownState(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    return-void
.end method

.method private static final initPreferences$lambda$2(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2b

    const p1, 0x7f010042

    const v0, 0x7f010044

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$3(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.LAUNCHER_ICON_FALLEN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1f

    const p1, 0x7f010042

    const v0, 0x7f010044

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$4(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.LAUNCHER_DOCK_EXPAND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1f

    const p1, 0x7f010042

    const v0, 0x7f010044

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$5(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "LauncherSettingsFragment"

    if-eqz p1, :cond_19

    const-string p0, "The desktop is locked and toasted."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_19
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_23

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_23
    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-eqz p1, :cond_34

    const-string/jumbo p0, "super power mode not support change layout"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_34
    iget-boolean p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    if-eqz p0, :cond_3f

    const-string/jumbo p0, "switching icon auto fill, please wait..."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda$6(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_12

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_12
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_29

    const p1, 0x7f010042

    const v0, 0x7f010044

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_29
    return v1
.end method

.method private static final initRecommended$lambda$11(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$intentToNavigation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_16
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_28

    const-string/jumbo p1, "startActivity E: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "LauncherSettingsFragment"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private static final initRecommended$lambda$14(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$intentToTaskbarSetting"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_16
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_28

    const-string/jumbo p1, "startActivity E: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "LauncherSettingsFragment"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private static final initRecommended$lambda$19(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 5

    const-string p2, "com.coloros.scenemode"

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$intentToSimpleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {v0, p2}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->checkAppAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/c;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;)V

    new-instance p1, Landroidx/core/app/a;

    invoke-direct {p1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-static {v0, p2, v1, p1}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->getGrantDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_3e

    :cond_31
    const/4 p0, 0x0

    goto :goto_3e

    :cond_33
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_50

    const-string/jumbo p1, "startActivity E: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "LauncherSettingsFragment"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method private static final initRecommended$lambda$19$lambda$17$lambda$15(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$intentToSimpleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initRecommended$lambda$19$lambda$17$lambda$16(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method private static final initRecommended$lambda$24(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 7

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$intentToCarouselWallpaper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_16
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_50

    const-string/jumbo v0, "startActivity E: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LauncherSettingsFragment"

    invoke-static {p2, v1, v2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez p2, :cond_50

    :try_start_2c
    new-instance p2, Landroid/content/ComponentName;

    const-string v1, "com.heytap.pictorial"

    const-string v3, "com.heytap.pictorial.wallpaper.WallpaperActivity"

    invoke-direct {p2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3e

    goto :goto_43

    :catchall_3e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_43
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_50

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method private final initSlideDownState(Landroid/content/Context;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    move-result v3

    if-eqz v3, :cond_40

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_1f
    const-string v5, "com.oplus.leftscreen"

    invoke-virtual {v3, v4, v5}, Lcom/android/common/util/PackageUtils$Companion;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/common/util/PackageUtils$Companion;->isApplicationEnabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    new-instance v3, Lcom/coui/appcompat/poplist/PopupListItem;

    const v4, 0x7f1204c4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    invoke-direct {v3, v4, v5}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    iput-boolean v5, v3, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v3

    if-eqz v3, :cond_71

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_50

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_50
    const-string v5, "com.coloros.assistantscreen"

    invoke-virtual {v3, v4, v5}, Lcom/android/common/util/PackageUtils$Companion;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/common/util/PackageUtils$Companion;->isApplicationEnabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    new-instance v3, Lcom/coui/appcompat/poplist/PopupListItem;

    const v4, 0x7f1204c6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    invoke-direct {v3, v4, v5}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    iput-boolean v5, v3, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->globalsearchEnable(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_89

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    new-instance v5, Lcom/coui/appcompat/poplist/PopupListItem;

    const v6, 0x7f120522

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    new-instance v5, Lcom/coui/appcompat/poplist/PopupListItem;

    const v6, 0x7f1203f4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_aa
    if-ge v6, v4, :cond_bb

    iget-object v7, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v7, v7, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_aa

    :cond_bb
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v4, :cond_c0

    goto :goto_c3

    :cond_c0
    invoke-virtual {v4, v3}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntries([Ljava/lang/CharSequence;)V

    :goto_c3
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v4, :cond_c8

    goto :goto_cb

    :cond_c8
    invoke-virtual {v4, v3}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :goto_cb
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v4, :cond_db

    iget-object v6, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v4, Lcom/coui/appcompat/preference/COUIMenuPreference;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_db
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->resetPrefIfGlobalSearchDisabled()V

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    move-result v4

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomNotificationCenterDisabled(Landroid/content/Context;)Z

    move-result p1

    const-string v6, "LauncherSettingsFragment"

    if-eqz v4, :cond_ec

    if-nez p1, :cond_f2

    :cond_ec
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSlideStatusBarAsDefault()Z

    move-result v4

    if-eqz v4, :cond_101

    :cond_f2
    const-string p1, "customize both search and notification disabled "

    invoke-static {v6, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_12b

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_12b

    :cond_101
    if-eqz p1, :cond_12b

    const-string p1, "customize notification disabled "

    invoke-static {v6, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_10d

    goto :goto_110

    :cond_10d
    invoke-virtual {p1, v5}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEnabled(Z)V

    :goto_110
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_115

    goto :goto_11c

    :cond_115
    add-int/lit8 v0, v0, -0x2

    aget-object v0, v3, v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_11c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_124

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_125

    :cond_124
    move-object v1, p0

    :goto_125
    const/4 p0, 0x5

    const-string p1, "launcher_slide_down_type"

    invoke-static {v1, p1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_12b
    :goto_12b
    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncLauncherArrangementModeStatus$lambda$34$lambda$33(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static synthetic k(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/settings/LauncherSettingsFragment;->generateBranchPreference$lambda$28$lambda$27(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$4(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$5(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda$19(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$2(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private final onClickSlideDownPopMenuList(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1204c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean v3, v3, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    if-nez v3, :cond_2a

    return v4

    :cond_2a
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v3, :cond_32

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_32
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1204c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean v5, v5, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    if-nez v5, :cond_50

    return v4

    :cond_50
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_58

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_58
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1203f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const/4 v0, 0x6

    goto :goto_7c

    :cond_6b
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const/4 v0, 0x4

    goto :goto_7c

    :cond_73
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x7

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x5

    :goto_7c
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v3, :cond_81

    goto :goto_84

    :cond_81
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_84
    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result p1

    if-eqz p1, :cond_8d

    const-string p1, "launcher_slide_down_type_simple"

    goto :goto_8f

    :cond_8d
    const-string p1, "launcher_slide_down_type"

    :goto_8f
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_97

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_98

    :cond_97
    move-object v1, p0

    :goto_98
    invoke-static {v1, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic p(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->stopLoading$lambda$40(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda$6(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private final resetPrefIfGlobalSearchDisabled()V
    .registers 7

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "mContext"

    if-nez v1, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_d
    sget-object v4, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GLOBAL_SEARCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v4, "LauncherSettingsFragment"

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1f
    sget-object v5, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_QUICK_SEARCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_58

    :cond_28
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_30

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_30
    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_57

    const-string/jumbo v0, "remove global search pref."

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_45

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_46

    :cond_45
    move-object v2, p0

    :goto_46
    invoke-static {v2}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "launcher_slide_down_type"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_57
    return-void

    :cond_58
    :goto_58
    const-string p0, " resetPrefIfGlobalSearchDisabled, the global search or quick search package is enabled, so return."

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final startActivitySafely(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "LauncherSettingsFragment"

    if-nez p1, :cond_b

    const-string/jumbo p0, "startActivitySafely: intent == null.."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    :try_start_b
    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsFragment;->VALUE_WALLPAPER_SETTING:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFrom:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_21
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_24} :catch_25

    goto :goto_49

    :catch_25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1200b5

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivitySafely:Unable to launch. ActivityNotFoundException intent= "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method private final stopLoading(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V
    .registers 4

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->a:Landroid/view/View;

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    instance-of v0, p1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-boolean v1, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:Z

    if-eqz v1, :cond_1b

    new-instance v1, Landroidx/core/content/res/d;

    invoke-direct {v1, p1, p0}, Landroidx/core/content/res/d;-><init>(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/CompoundButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method private static final stopLoading$lambda$40(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->g()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    return-void
.end method

.method private final syncLauncherArrangementModeStatus()V
    .registers 8

    const-string v0, "LauncherSettingsFragment"

    :try_start_2
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    const/4 v3, 0x1

    if-nez v1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_3d

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lw/d;

    invoke-direct {v6, v4, v3}, Lw/d;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3d
    if-eqz v1, :cond_4e

    new-instance p0, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;-><init>(Landroid/content/Context;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_55

    :cond_4e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/launcher/layout/LayoutUtilsManager;->saveIsCompact(Landroid/content/Context;Z)V

    :goto_55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncLauncherArrangementModeStatus isArrangement = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_6c
    .catchall {:try_start_2 .. :try_end_6c} :catchall_6d

    goto :goto_72

    :catchall_6d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_72
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7e

    const-string/jumbo v1, "syncLauncherArrangementModeStatus,Exception :"

    invoke-static {v1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7e
    return-void
.end method

.method private static final syncLauncherArrangementModeStatus$lambda$34$lambda$33(Lcom/android/launcher3/Launcher;)V
    .registers 4

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "LauncherSettingsFragment"

    const-string/jumbo v2, "syncLauncherArrangementModeStatus, the launcher\'s status is synchronized to NORMAL."

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_1c
    return-void
.end method

.method private final syncStatus(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_121

    const/4 v1, 0x0

    const-string v2, "mContext"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_136

    goto/16 :goto_11e

    :sswitch_d
    :try_start_d
    const-string v0, "launcher_slide_down_type_simple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    goto/16 :goto_11e

    :sswitch_17
    const-string v0, "is_launcher_layout_locked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_11e

    :cond_21
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_27

    goto/16 :goto_11e

    :cond_27
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_2f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_30

    :cond_2f
    move-object v3, p0

    :goto_30
    invoke-static {v3, p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_11e

    :sswitch_39
    const-string v0, "layout_is_compact"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_11e

    :cond_43
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_49

    goto/16 :goto_11e

    :cond_49
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_51

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_52

    :cond_51
    move-object v3, p0

    :goto_52
    invoke-static {v3, p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_11e

    :sswitch_5b
    const-string v0, "is_search_entry_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto/16 :goto_11e

    :cond_65
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p1, :cond_6b

    goto/16 :goto_11e

    :cond_6b
    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_75

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_76

    :cond_75
    move-object v3, p0

    :goto_76
    invoke-virtual {v0, v3}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_11e

    :sswitch_7f
    const-string v0, "is_double_click_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_11e

    :cond_89
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_8f

    goto/16 :goto_11e

    :cond_8f
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_97

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_98

    :cond_97
    move-object v3, p0

    :goto_98
    invoke-static {v3, p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_11e

    :sswitch_a1
    const-string v0, "launcher_slide_down_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    goto/16 :goto_11e

    :cond_ab
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_b3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b4

    :cond_b3
    move-object v3, p1

    :goto_b4
    invoke-direct {p0, v3}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateSlideDownState(Landroid/content/Context;)V

    goto :goto_11e

    :sswitch_b8
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c1

    goto :goto_11e

    :cond_c1
    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object p1

    aget v0, p1, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_d2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_d2
    const-string v4, "layout_cellcount_x"

    invoke-static {v1, v4, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_e0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_e0
    const-string v2, "layout_cellcount_y"

    invoke-static {v1, v2, p1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u200e"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_101

    const v2, 0x7f12032f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11e

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_11b

    goto :goto_11e

    :cond_11b
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :cond_11e
    :goto_11e
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_120
    .catchall {:try_start_d .. :try_end_120} :catchall_121

    goto :goto_126

    :catchall_121
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_126
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_134

    const-string/jumbo p1, "syncShowDousyncButtonStatuson :"

    const-string v0, "LauncherSettingsFragment"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_134
    return-void

    nop

    :sswitch_data_136
    .sparse-switch
        -0x422504d6 -> :sswitch_b8
        -0x2f4992f6 -> :sswitch_a1
        -0x15405525 -> :sswitch_7f
        -0x13d5136e -> :sswitch_5b
        0x3921c143 -> :sswitch_39
        0x5f4fde15 -> :sswitch_17
        0x7118e287 -> :sswitch_d
    .end sparse-switch
.end method

.method private final updateAnimSpeed()V
    .registers 7

    sget-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isNotSupportSpeedModify()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isRLMDevice()Z

    move-result v1

    if-nez v1, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isRLMDevice()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isMdpLow()Z

    move-result v4

    if-eqz v4, :cond_24

    move v2, v3

    :cond_24
    if-nez v1, :cond_6a

    if-eqz v2, :cond_29

    goto :goto_6a

    :cond_29
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v4, "mContext"

    if-nez v1, :cond_34

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_34
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "setting_app_startup_anim_speed"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v5, :cond_47

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_48

    :cond_47
    move-object v2, v5

    :goto_48
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v1, :cond_5d

    iget-object v2, v1, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_5d

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_5d
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_62

    goto :goto_7a

    :cond_62
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    goto :goto_7a

    :cond_6a
    :goto_6a
    const-string v0, "LauncherSettingsFragment"

    const-string v1, " updateAnimSpeed, the current device does not support speed modify or is a low-end machine."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_7a

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_7a
    :goto_7a
    return-void
.end method

.method private final updateExpandDockEntry()V
    .registers 3

    const-string v0, "LauncherSettingsFragment"

    const-string/jumbo v1, "updateExpandDockEntry "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_1f

    :cond_15
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2d

    :cond_1f
    :goto_1f
    const-string v1, " updateExpandDockEntry removePreference."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2d
    :goto_2d
    return-void
.end method

.method private final updateIconFallenEntry()V
    .registers 4

    const-string v0, "LauncherSettingsFragment"

    const-string/jumbo v1, "updateIconFallenEntry "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isSupportIconFallen:Z

    if-nez v1, :cond_12

    goto :goto_1c

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2a

    :cond_1c
    :goto_1c
    const-string v1, " updateIconFallenEntry removePreference."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method private final updateLauncherMode()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherModeForString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :cond_20
    :goto_20
    const-string/jumbo v0, "updateLauncherStateInfo onPostExecute mCurLauncherMode = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherSettingsFragment"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateLauncherModeRelatedView()V
    .registers 4

    const-string v0, "LauncherSettingsFragment"

    const-string/jumbo v1, "updateLauncherModeRelatedView"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_26

    sget-object v1, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v1}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_26

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_34

    :cond_26
    :goto_26
    const-string v1, " updateLauncherModeRelatedView removePreference."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_34
    :goto_34
    return-void
.end method

.method private final updateLauncherStateInfo()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherMode()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherModeRelatedView()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateIconFallenEntry()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateExpandDockEntry()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateAnimSpeed()V

    const-string v0, "layout"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "layout_is_compact"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_launcher_layout_locked"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_show_indicated_app_for_drawer_mode"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_add_app_to_workspace_for_drawer_mode"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_drawer_app_global_search"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_double_click_lock"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_search_entry_enable"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "launcher_slide_down_type_simple"

    goto :goto_42

    :cond_40
    const-string v0, "launcher_slide_down_type"

    :goto_42
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->generateBranchPreference()V

    return-void
.end method

.method private final updateSlideDownState(Landroid/content/Context;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "mContext"

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v2, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_18

    :cond_17
    move-object v0, v2

    :goto_18
    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    const v2, 0x7f120522

    if-eq v0, v1, :cond_55

    const/4 v1, 0x5

    if-eq v0, v1, :cond_50

    const/4 v1, 0x6

    if-eq v0, v1, :cond_48

    const/4 v1, 0x7

    if-eq v0, v1, :cond_30

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_30
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    if-nez v0, :cond_3b

    goto :goto_43

    :cond_3b
    const v0, 0x7f1204c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_43
    :goto_43
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_48
    const v0, 0x7f1203f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_50
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_55
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    if-nez v0, :cond_60

    goto :goto_68

    :cond_60
    const v0, 0x7f1204c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_68
    :goto_68
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6c
    const-string v0, "gyh, customize notification:"

    const-string v1, "LauncherSettingsFragment"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v0, :cond_7a

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_7a
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_7f

    goto :goto_82

    :cond_7f
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :goto_82
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_87

    goto :goto_8a

    :cond_87
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_8a
    return-void
.end method


# virtual methods
.method public final generateBranchPreference()V
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVodafoneCustomizer()Z

    move-result v0

    if-eqz v0, :cond_61

    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_57

    const-string v0, "LauncherSettingsFragment"

    const-string v1, " generateBranchPreference mBranchPreferenceForRLM == null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const v1, 0x7f120588

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "global_search_setting_entrance_preference_vodafone"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_41

    const-string v1, "mContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_41
    invoke-static {v1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getBranchSearchValue(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v1, Lcom/android/launcher/settings/f;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher/settings/f;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    :cond_57
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_6c

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6c

    :cond_61
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_6c

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_6c

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6c
    :goto_6c
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getActionbarTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initLayoutUpgradeGuide()V
    .registers 5

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "launcher_layout_upgrade_guide_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v3

    if-eqz v3, :cond_63

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_59

    new-instance v0, Lcom/coui/appcompat/preference/COUIPreference;

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v3, :cond_28

    const-string v3, "mContext"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_28
    invoke-direct {v0, v3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f0d01f4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_47

    const v1, 0x7f120332

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_47
    const v1, 0x7f12065b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4e
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/launcher/settings/g;

    invoke-direct {v1, p0}, Lcom/android/launcher/settings/g;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_59
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_80

    :cond_63
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v1

    if-nez v1, :cond_80

    if-eqz v0, :cond_80

    const-string v0, "LauncherSettingsFragment"

    const-string/jumbo v1, "remove layout upgrade guide preference"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_80
    :goto_80
    return-void
.end method

.method public final initRecommended()V
    .registers 11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "bottom_recommended"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    if-eqz v0, :cond_14b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.oplus.settings.OplusSettingsActivity$NavigationBarSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "oplus.intent.action.NAVIGATION_BAR_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v3, 0x7f1205f2

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/settings/h;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/android/launcher/settings/h;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_88

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    const-string v3, "com.android.launcher"

    if-eqz v2, :cond_65

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.android.launcher.settings.LauncherTabletTaskbarSettingActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_6f

    :cond_65
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.android.launcher.settings.LauncherTaskbarSettingActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_6f
    const-string v2, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v3, 0x7f12030c

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/settings/i;

    invoke-direct {v4, p0, v1, v5}, Lcom/android/launcher/settings/i;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "mContext"

    if-eqz v1, :cond_c9

    const-string v1, "com.coloros.scenemode"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c9

    sget-object v6, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v7, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v7, :cond_a4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_a4
    const-string/jumbo v8, "oplus.intent.action.SIMPLE_MODE_ANIM"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/common/util/PackageUtils$Companion;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c9

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v7, 0x7f120321

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/launcher/settings/h;

    invoke-direct {v8, p0, v6, v2}, Lcom/android/launcher/settings/h;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V

    invoke-direct {v1, v7, v8}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    sget-object v1, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v6, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_d3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_d3
    const-string v7, "android.intent.action.VIEW"

    const-string v8, "com.heytap.pictorial"

    invoke-virtual {v1, v6, v7, v8}, Lcom/android/common/util/PackageUtils$Companion;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v9, "com.heytap.pictorial.wallpaper.ui.GUIDE_ACTION"

    if-nez v6, :cond_ed

    iget-object v6, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_e7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_e7
    invoke-virtual {v1, v6, v9, v8}, Lcom/android/common/util/PackageUtils$Companion;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_144

    :cond_ed
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_f5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_f6

    :cond_f5
    move-object v3, v1

    :goto_f6
    invoke-static {v3}, Lcom/android/common/util/CacheUtils;->getSupportCarouselWallpaperCache(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_144

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v3, :cond_113

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.heytap.pictorial.activities.CarouselWallpapersActivity"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_120

    :cond_113
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.heytap.pictorial.wallpaper.WallPaperActivity"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_120
    const-string/jumbo v3, "wallpaper_open_from_key"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "is_slide_view_to_setting_key"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Lcom/android/launcher/settings/LauncherSettingsFragment;->URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v3, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v4, 0x7f12034e

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/launcher/settings/i;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/launcher/settings/i;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V

    invoke-direct {v3, v4, v5}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_144
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    if-eqz p0, :cond_14b

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->b(Ljava/util/List;)V

    :cond_14b
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "LauncherSettingsFragment"

    if-nez p1, :cond_f

    const-string/jumbo p0, "onCreate activity == null"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1e

    const-string/jumbo p0, "onCreate intent == null"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportAod()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAodSupport:Z

    const p2, 0x7f150020

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences()V

    const-string p2, "key_from"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFrom:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherStateInfo()V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 5

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const-string/jumbo p1, "recyclerView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/settings/BaseSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a063f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez p2, :cond_15

    return-object p1

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savedInstanceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LauncherSettingsFragment"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_53

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_3e

    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    goto :goto_3f

    :cond_3e
    move-object p3, v1

    :goto_3f
    const/4 v2, 0x0

    const-string v3, ":settings:oplus_from_main_page"

    invoke-static {p3, v3, v2}, Lcom/oplus/statistics/util/IntentUtils;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    const-string p3, "fromMainPage:"

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    invoke-static {p3, v2, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_53
    iget-boolean p3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    if-eqz p3, :cond_61

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p3

    if-eqz p3, :cond_61

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6d

    :cond_61
    invoke-virtual {p2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_6d

    const p3, 0x7f080537

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    :cond_6d
    :goto_6d
    sget-object p2, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {p2}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p2

    if-eqz p2, :cond_78

    invoke-virtual {p2, p0}, Lcom/android/common/util/OplusFoldStateHelper;->addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :cond_78
    return-object p1
.end method

.method public onDestroy()V
    .registers 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onDestroyPreference()V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_10

    goto :goto_15

    :cond_e
    move-object v1, v0

    goto :goto_15

    :catchall_10
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_15
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_27

    const-string/jumbo v2, "onDestroy: exception: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LauncherSettingsFragment"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_27
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_2e
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusFoldStateHelper;->removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :cond_3b
    return-void
.end method

.method public onFoldStateChange(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateIconFallenEntry()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const-string/jumbo v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceChange, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSettingsFragment"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "launcher_locked"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    if-nez v0, :cond_3f

    const-string p1, "is_launcher_layout_locked"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    goto/16 :goto_bc

    :cond_3f
    const-string v0, "app_startup_anim_speed"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    if-nez v0, :cond_53

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_53
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v1}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-eqz v4, :cond_70

    iget-object v5, v4, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_70

    aget-object p1, v5, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_70
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_75

    goto :goto_78

    :cond_75
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_78
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_80

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_81

    :cond_80
    move-object v2, p0

    :goto_81
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "setting_app_startup_anim_speed"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_bc

    :cond_90
    const-string v0, "launcher_slide_down"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->onClickSlideDownPopMenuList(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_a1
    const-string p2, "launcher_double_click_lock"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_af

    const-string p1, "is_double_click_lock"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :cond_af
    const-string p2, "launcher_search_entry_enable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bc

    const-string p1, "is_search_entry_enable"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    :goto_bc
    return v1
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onResumePreference()V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    goto :goto_14

    :cond_d
    const/4 v0, 0x0

    goto :goto_14

    :catchall_f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "LauncherSettingsFragment"

    if-eqz v0, :cond_26

    const-string/jumbo v2, "onResume: exception: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_26
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherStateInfo()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    :cond_30
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    if-nez v0, :cond_3d

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateBranchSearchPreference()V

    :cond_3d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_57

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_57

    const-string v0, " onResume removePreference."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_57
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSurpportLayoutUpgrade()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initLayoutUpgradeGuide()V

    :cond_62
    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onStopPreference()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    goto :goto_14

    :cond_d
    const/4 p0, 0x0

    goto :goto_14

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_14
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_26

    const-string/jumbo v0, "onStop: exception: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LauncherSettingsFragment"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final updateBranchSearchPreference()V
    .registers 5

    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const-string v1, "global_search_setting_entrance_preference"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v3

    :goto_16
    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_47

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_47

    :cond_22
    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    if-eq v0, v2, :cond_47

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    goto :goto_30

    :cond_2f
    move-object v0, v3

    :goto_30
    instance-of v1, v0, Landroidx/preference/Preference;

    if-eqz v1, :cond_35

    move-object v3, v0

    :cond_35
    if-eqz v3, :cond_47

    const-string v0, "LauncherSettingsFragment"

    const-string v1, " updateBranchSearchPreference remove branch setting preference"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_47

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_47
    :goto_47
    return-void
.end method
