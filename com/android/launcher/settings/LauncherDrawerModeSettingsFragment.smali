.class public final Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;,
        Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherDrawerModeSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherDrawerModeSettingsFragment.kt\ncom/android/launcher/settings/LauncherDrawerModeSettingsFragment\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,293:1\n151#2,6:294\n163#2,6:300\n*S KotlinDebug\n*F\n+ 1 LauncherDrawerModeSettingsFragment.kt\ncom/android/launcher/settings/LauncherDrawerModeSettingsFragment\n*L\n171#1:294,6\n172#1:300,6\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$Companion;

.field public static final FORMAT_PLACE_HOLDER:C = '%'

.field public static final KEY_ENABLE_BRANCH_OPT_BY_USER:Ljava/lang/String; = "key_enable_branch_opt_by_user"

.field public static final PLACE_HOLDER:Ljava/lang/String; = "%1$s"

.field public static final PLACE_HOLDER_LENGTH:I = 0x4

.field public static final TAG:Ljava/lang/String; = "DrawerModeSettingFragment"


# instance fields
.field private mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mIsAddAppToLauncherSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherShowIndicatedAppSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroid/text/SpannableString;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->initPreferences$lambda$2(Landroid/text/SpannableString;Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private final initPreferences()V
    .registers 16

    const-string v0, "launcher_is_show_indicated_app"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mLauncherShowIndicatedAppSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_10
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncShowIndicateAppStatus(Z)V

    const-string v1, "add_app_to_launcher"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mIsAddAppToLauncherSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_24
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncAddAppToWorkSpaceStatus(Z)V

    const-string v1, "key_show_inputmethod_in_drawer"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_34

    goto :goto_37

    :cond_34
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_37
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncInputMethodDrawer(Z)V

    const-string v1, "key_branch_personalize_search"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_47

    goto :goto_4a

    :cond_47
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_4a
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncPersonalizeSearch(Z)V

    const-string v1, "key_add_search_notification"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_5a

    goto :goto_5d

    :cond_5a
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_5d
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncSearchNotification(Z)V

    const-string v1, "drawer_app_global_search"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_6d

    goto :goto_70

    :cond_6d
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_70
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_76

    goto :goto_86

    :cond_76
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isDrawerSupportGlobalSearch()Z

    move-result v3

    if-eqz v3, :cond_82

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->sGlobalSearchMateData:Z

    if-eqz v3, :cond_82

    move v3, v0

    goto :goto_83

    :cond_82
    move v3, v2

    :goto_83
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_86
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_8b

    goto :goto_9f

    :cond_8b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isGlobalSearchInDrawerModeSwitchOn()Z

    move-result v4

    const-string v5, "is_drawer_app_global_search"

    invoke-static {v3, v5, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_9f
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v1

    if-eqz v1, :cond_1e3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v1, :cond_b3

    goto :goto_cf

    :cond_b3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_cb

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_cb

    sget-object v4, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_cc

    :cond_cb
    const/4 v3, 0x0

    :goto_cc
    invoke-virtual {v1, v3}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_cf
    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->setNotificationSwitch(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSearchNotificationEnable()Z

    move-result v3

    if-nez v3, :cond_e5

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_e5
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const/4 v4, 0x4

    if-nez v3, :cond_eb

    goto :goto_101

    :cond_eb
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const-string/jumbo v9, "template"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move v10, v2

    :goto_14f
    const/16 v11, 0x25

    const/4 v12, -0x1

    if-ge v10, v9, :cond_163

    invoke-interface {v3, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_15c

    move v13, v0

    goto :goto_15d

    :cond_15c
    move v13, v2

    :goto_15d
    if-eqz v13, :cond_160

    goto :goto_164

    :cond_160
    add-int/lit8 v10, v10, 0x1

    goto :goto_14f

    :cond_163
    move v10, v12

    :goto_164
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v9, v12

    if-ltz v9, :cond_17f

    :goto_16b
    add-int/lit8 v13, v9, -0x1

    invoke-interface {v3, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v11, :cond_175

    move v14, v0

    goto :goto_176

    :cond_175
    move v14, v2

    :goto_176
    if-eqz v14, :cond_17a

    move v12, v9

    goto :goto_17f

    :cond_17a
    if-gez v13, :cond_17d

    goto :goto_17f

    :cond_17d
    move v9, v13

    goto :goto_16b

    :cond_17f
    :goto_17f
    new-instance v9, Landroid/text/SpannableString;

    sget-object v11, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v5, v11, v2

    aput-object v1, v11, v0

    const-string v1, "format(format, *args)"

    invoke-static {v11, v6, v3, v1}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->getBranchNavigatorUrl()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int v2, v10, v7

    const/16 v3, 0x21

    invoke-virtual {v9, v1, v10, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->getBranchNavigatorUrl()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int/2addr v12, v7

    add-int/lit8 v0, v12, -0x4

    add-int/2addr v12, v8

    sub-int/2addr v12, v4

    invoke-virtual {v9, v1, v0, v12, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_1d5

    new-instance v1, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v1, v9}, Lcom/android/exceptionmonitor/util/d;-><init>(Landroid/text/SpannableString;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    :cond_1d5
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_1f5

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->redDotEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setHasRedDot(Z)V

    goto :goto_1f5

    :cond_1e3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1f5
    :goto_1f5
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVodafoneCustomizer()Z

    move-result v0

    if-eqz v0, :cond_205

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_20e

    :cond_205
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_20e
    return-void
.end method

.method private static final initPreferences$lambda$2(Landroid/text/SpannableString;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .registers 2

    const-string p1, "$ss"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final syncAddAppToWorkSpaceStatus(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mIsAddAppToLauncherSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_4e

    const-string v1, "is_add_app_to_workspace_for_drawer_mode"

    if-eqz p1, :cond_1b

    if-nez v0, :cond_b

    goto :goto_4e

    :cond_b
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isDefaultAddNewAppsToWorkspaceInDrawerMode()Z

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4e

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->checkLauncherLockedAndToast()Z

    move-result p1

    if-eqz p1, :cond_22

    return-void

    :cond_22
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mIsAddAppToLauncherSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mIsAddAppToLauncherSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p0, :cond_41

    goto :goto_44

    :cond_41
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_44
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private final syncInputMethodDrawer(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_43

    const-string/jumbo v1, "show_inputmethod_in_drawer_switch"

    if-eqz p1, :cond_19

    if-nez v0, :cond_c

    goto :goto_43

    :cond_c
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_43

    :cond_19
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p0, :cond_36

    goto :goto_39

    :cond_36
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_39
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_43
    :goto_43
    return-void
.end method

.method private final syncPersonalizeSearch(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_57

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_57

    :cond_e
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearch(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "key_enable_branch_opt_by_user"

    invoke-static {v2, v3, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3b

    invoke-virtual {p1, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->setReIntoDrawer(Z)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->refreshSaveUserPageStatus(Z)V

    goto :goto_57

    :cond_3b
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "key_is_ota_or_user_close_need_show_red_dot"

    invoke-static {v2, v4, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "key_is_ota_and_user_close_need_show_declare"

    invoke-static {v0, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_54

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setHasRedDot(Z)V

    :cond_54
    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->setReIntoDrawer(Z)V

    :cond_57
    :goto_57
    return-void
.end method

.method private final syncSearchNotification(Z)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_3a

    const/4 v0, 0x1

    const-string v1, "key_enable_branch_search_notification"

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3a

    :cond_15
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearchNotification(Landroid/content/Context;Z)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private final syncShowIndicateAppStatus(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mLauncherShowIndicatedAppSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_4b

    const-string v1, "is_show_indicated_app_for_drawer_mode"

    if-eqz p1, :cond_18

    if-nez v0, :cond_b

    goto :goto_4b

    :cond_b
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4b

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->checkLauncherLockedAndToast()Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mLauncherShowIndicatedAppSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mLauncherShowIndicatedAppSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p0, :cond_3e

    goto :goto_41

    :cond_3e
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_41
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public final checkLauncherLockedAndToast()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->showToast(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120155

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "activity!!.resources.get…nch_drawer_mode_settings)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const p1, 0x7f15001b

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->initPreferences()V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-object p0
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onDestroyView()V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setNotificationSwitch(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const-string/jumbo p2, "onPreferenceChange, key: "

    const-string v0, "DrawerModeSettingFragment"

    invoke-static {p2, p1, v0}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_7e

    goto :goto_7c

    :sswitch_1b
    const-string v0, "key_add_search_notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_7c

    :cond_24
    invoke-direct {p0, p2}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncSearchNotification(Z)V

    goto :goto_7c

    :sswitch_28
    const-string v0, "drawer_app_global_search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_7c

    :cond_31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const/4 p2, 0x1

    xor-int/2addr p0, p2

    const-string v0, "is_drawer_app_global_search"

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return p2

    :sswitch_49
    const-string v0, "launcher_is_show_indicated_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_7c

    :cond_52
    invoke-direct {p0, p2}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncShowIndicateAppStatus(Z)V

    goto :goto_7c

    :sswitch_56
    const-string v0, "key_branch_personalize_search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_7c

    :cond_5f
    invoke-direct {p0, p2}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncPersonalizeSearch(Z)V

    goto :goto_7c

    :sswitch_63
    const-string v0, "add_app_to_launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_7c

    :cond_6c
    invoke-direct {p0, p2}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncAddAppToWorkSpaceStatus(Z)V

    goto :goto_7c

    :sswitch_70
    const-string v0, "key_show_inputmethod_in_drawer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto :goto_7c

    :cond_79
    invoke-direct {p0, p2}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncInputMethodDrawer(Z)V

    :cond_7c
    :goto_7c
    return p2

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x64fc2aab -> :sswitch_70
        0x146f6828 -> :sswitch_63
        0x22009110 -> :sswitch_56
        0x49e554c1 -> :sswitch_49
        0x5015f858 -> :sswitch_28
        0x55569fa4 -> :sswitch_1b
    .end sparse-switch
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncPersonalizeSearch(Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncSearchNotification(Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncInputMethodDrawer(Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncShowIndicateAppStatus(Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->syncAddAppToWorkSpaceStatus(Z)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSearchNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->redDotEnable()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_32

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->redDotEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setHasRedDot(Z)V

    :cond_32
    return-void
.end method

.method public final showToast(Landroid/content/Context;)V
    .registers 11

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_43

    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_29

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    goto :goto_2a

    :cond_29
    move-object v4, v1

    :goto_2a
    const v2, 0x7f12031d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p0, "it.getString(R.string.launcher_locked_toast_new)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3b

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    :cond_3b
    move-object v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/common/util/ToastUtils;->showSnackBar$default(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V

    :cond_43
    return-void
.end method
