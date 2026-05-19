.class public Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACTION_NAVIGATION_BAR_ACTIVITY:Ljava/lang/String; = "com.oplus.settings.OplusSettingsActivity$NavigationBarSettingsActivity"

.field private static final ACTION_NAVIGATION_BAR_SETTINGS:Ljava/lang/String; = "oplus.intent.action.NAVIGATION_BAR_SETTINGS"

.field private static final ACTION_SMART_SIDEBAR_ACTIVITY:Ljava/lang/String; = "com.oplus.edgepanel.settings.EdgePanelSettingsActivity"

.field private static final ACTION_SMART_SIDEBAR_SETTINGS:Ljava/lang/String; = "oplus.intent.action.EDGEPANEL"

.field public static final KEY_HIDE_OR_SHOW_SWITCH:Ljava/lang/String; = "key_hide_or_show_switch"

.field public static final KEY_SHOW_ALL_APPS:Ljava/lang/String; = "key_show_allApps"

.field private static final KEY_SHOW_BOTTOM_RECOMMEND:Ljava/lang/String; = "bottom_recommended_taskbar"

.field public static final KEY_SHOW_FILE_MANAGER:Ljava/lang/String; = "key_show_fileManager"

.field public static final KEY_SHOW_GLOBAL_SEARCH:Ljava/lang/String; = "key_show_globalSearch"

.field public static final KEY_SHOW_RECOMMEND_AND_RECENT:Ljava/lang/String; = "key_launcher_dock_expand_switch"

.field public static final KEY_SHOW_TASKBAR:Ljava/lang/String; = "key_show_taskbar"

.field public static final KEY_TASKBAR:Ljava/lang/String; = "launcher_dock_expand_title"

.field private static final KEY_TASKBAR_INTRODUCTION_PREFERENCE:Ljava/lang/String; = "key_taskbar_introduction_preference"

.field public static final KEY_TASKBAR_SETTING_CATEGORY:Ljava/lang/String; = "key_category_launcher_dock_expand_switch"

.field public static final LAUNCHER_TASKBAR_SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

.field public static final LAUNCHER_TASKBAR_SETTINGS_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherTaskbarSettingActivity"

.field public static final LAUNCHER_TASKBAR_TABLET_SETTINGS_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherTabletTaskbarSettingActivity"

.field private static final PACKAGE_NAVIGATION_BAR:Ljava/lang/String; = "com.android.settings"

.field private static final PACKGE_SMART_SIDEBAR:Ljava/lang/String; = "com.coloros.smartsidebar"

.field private static final TAG:Ljava/lang/String; = "LauncherTaskbarSettingFragment"

.field private static final TASKBAR_NOT_SHOW_STASH_DELAY:I = 0xc8

.field private static final TASKBAR_SHOW_OR_NOT_DELAY:I = 0x12c


# instance fields
.field private mAllappsSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mAllappsSwitchState:Z

.field private mBottomRecommend:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

.field private mFileManagerSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mFileManagerSwitchState:Z

.field private mFromIntent:Ljava/lang/String;

.field private mGlobalSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mGlobalSearchSwitchstate:Z

.field private mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mHideOrShowSwitchState:Z

.field private mRecommendSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mRecommendSwitchState:Z

.field private mTaskbarCategory:Landroidx/preference/PreferenceCategory;

.field private mTaskbarIntroPref:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

.field private mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

.field private mTaskbarSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mTaskbarSwitchState:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFromIntent:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->lambda$onPreferenceChange$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->lambda$initRecommend$1(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->lambda$initRecommend$0(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method private initPreference()V
    .registers 3

    const-string v0, "key_category_launcher_dock_expand_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_taskbar_introduction_preference"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarIntroPref:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    const-string v0, "key_show_taskbar"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "key_show_allApps"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mAllappsSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "key_show_globalSearch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mGlobalSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "key_show_fileManager"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFileManagerSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "key_launcher_dock_expand_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mRecommendSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "key_hide_or_show_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5c
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const v1, 0x7f12054f

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const v1, 0x7f1205f4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_77
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mAllappsSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mGlobalSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFileManagerSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mRecommendSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->updateSubscribeEntry()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->initRecommend()V

    return-void
.end method

.method private initRecommend()V
    .registers 6

    const-string v0, "bottom_recommended_taskbar"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mBottomRecommend:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    if-eqz v0, :cond_70

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.coloros.smartsidebar"

    const-string v4, "com.oplus.edgepanel.settings.EdgePanelSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "oplus.intent.action.EDGEPANEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v3, 0x7f1202f4

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/w;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher/w;-><init>(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Landroid/content/Intent;)V

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.oplus.settings.OplusSettingsActivity$NavigationBarSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "oplus.intent.action.NAVIGATION_BAR_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFromIntent:Ljava/lang/String;

    if-nez v2, :cond_6b

    new-instance v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v3, 0x7f1205f2

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/x;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher/x;-><init>(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Landroid/content/Intent;)V

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mBottomRecommend:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->b(Ljava/util/List;)V

    :cond_70
    return-void
.end method

.method private synthetic lambda$initRecommend$0(Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_11

    :catch_4
    move-exception p0

    const-string/jumbo p1, "startActivity E: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "LauncherTaskbarSettingFragment"

    invoke-static {p0, p1, p2}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private synthetic lambda$initRecommend$1(Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_11

    :catch_4
    move-exception p0

    const-string/jumbo p1, "startActivity E: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "LauncherTaskbarSettingFragment"

    invoke-static {p0, p1, p2}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private synthetic lambda$onPreferenceChange$2(Ljava/lang/Boolean;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnable(Z)V

    return-void
.end method

.method private updateSwitchState(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSwitchState:Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mAllappsSwitchState:Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mGlobalSearchSwitchstate:Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFileManagerSwitchState:Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mRecommendSwitchState:Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarLongPressSettingEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitchState:Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSwitchState:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mAllappsSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mAllappsSwitchState:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mGlobalSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mGlobalSearchSwitchstate:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFileManagerSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFileManagerSwitchState:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mRecommendSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mRecommendSwitchState:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitchState:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result p1

    const v0, 0x7f120353

    if-nez p1, :cond_82

    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result p1

    if-nez p1, :cond_82

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_82

    :cond_76
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_b3

    :cond_82
    :goto_82
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_97

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const p1, 0x7f1203eb

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_b3

    :cond_97
    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result p1

    if-eqz p1, :cond_a3

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_b3

    :cond_a3
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result p1

    if-nez p1, :cond_b3

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const p1, 0x7f1203ea

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_b3
    :goto_b3
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFromIntent:Ljava/lang/String;

    :cond_1f
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->initPreference()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const p1, 0x7f150021

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    new-instance p1, Lcom/android/launcher/settings/RecyclerViewTouchListener;

    invoke-direct {p1, p0}, Lcom/android/launcher/settings/RecyclerViewTouchListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarIntroPref:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->destroy()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mAllappsSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mGlobalSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFileManagerSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mRecommendSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFromIntent:Ljava/lang/String;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result v0

    const-string v1, "LauncherTaskbarSettingFragment"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_23

    instance-of v0, p1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_23

    const-string/jumbo p0, "onPreferenceChange,click too fast to return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v2

    :cond_23
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_130

    goto :goto_77

    :sswitch_36
    const-string v4, "key_hide_or_show_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_77

    :cond_3f
    const/4 v0, 0x5

    goto :goto_77

    :sswitch_41
    const-string v4, "key_show_allApps"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_77

    :cond_4a
    const/4 v0, 0x4

    goto :goto_77

    :sswitch_4c
    const-string v4, "key_show_globalSearch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto :goto_77

    :cond_55
    const/4 v0, 0x3

    goto :goto_77

    :sswitch_57
    const-string v4, "key_show_taskbar"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto :goto_77

    :cond_60
    const/4 v0, 0x2

    goto :goto_77

    :sswitch_62
    const-string v4, "key_show_fileManager"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_77

    :cond_6b
    const/4 v0, 0x1

    goto :goto_77

    :sswitch_6d
    const-string v4, "key_launcher_dock_expand_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_77

    :cond_76
    const/4 v0, 0x0

    :goto_77
    packed-switch v0, :pswitch_data_14a

    return v2

    :pswitch_7b  #0x5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8c

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p1

    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onLongPressToUnstashTaskbar()Z

    :cond_8c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarLongPressSettingEnable(Z)V

    return v3

    :pswitch_96  #0x4
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarAllAppsSettingEnable(Z)V

    return v3

    :pswitch_a2  #0x3
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarGlobalSearchSettingEnable(Z)V

    return v3

    :pswitch_ae  #0x2
    check-cast p2, Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v4

    if-eqz v4, :cond_c5

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object v0

    :cond_c5
    if-eqz v0, :cond_e3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashed()Z

    move-result v5

    if-nez v5, :cond_e3

    const-string/jumbo v5, "onPreferenceChange: hasNavigationBar: "

    invoke-static {v5, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_d9

    invoke-virtual {v4, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onDestroy(Z)V

    goto :goto_e3

    :cond_d9
    const/16 v1, 0x1000

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    :cond_e3
    :goto_e3
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/core/content/res/d;

    invoke-direct {v1, p0, p2}, Landroidx/core/content/res/d;-><init>(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Ljava/lang/Boolean;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez p1, :cond_116

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_109

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const p1, 0x7f120353

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_116

    :cond_109
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mHideOrShowSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const p1, 0x7f1203ea

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_116
    :goto_116
    return v3

    :pswitch_117  #0x1
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarFileManagerSettingEnable(Z)V

    return v3

    :pswitch_123  #0x0
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarExpandAreaSettingEnable(Z)V

    return v3

    nop

    :sswitch_data_130
    .sparse-switch
        -0x411d5374 -> :sswitch_6d
        -0x11871dd1 -> :sswitch_62
        -0x5b6d0f4 -> :sswitch_57
        -0x34ed0b3 -> :sswitch_4c
        0x1f829251 -> :sswitch_41
        0x25ff0d17 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_123  #00000000
        :pswitch_117  #00000001
        :pswitch_ae  #00000002
        :pswitch_a2  #00000003
        :pswitch_96  #00000004
        :pswitch_7b  #00000005
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->updateSwitchState(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public updateAllAppsEntry()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mAllappsSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mAllappsSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_19
    return-void
.end method

.method public updateFileManagerEntry()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFileManagerSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mFileManagerSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_19
    return-void
.end method

.method public updateGlobalSearchEntry()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mGlobalSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mTaskbarCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->mGlobalSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_19
    return-void
.end method

.method public updateSubscribeEntry()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->updateAllAppsEntry()V

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->updateGlobalSearchEntry()V

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->updateFileManagerEntry()V

    return-void
.end method
