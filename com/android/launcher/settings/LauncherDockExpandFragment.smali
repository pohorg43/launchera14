.class public Lcom/android/launcher/settings/LauncherDockExpandFragment;
.super Lcom/android/launcher/settings/BasePreferenceFragment;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_LAUNCHER_DOCK_EXPAND_SP:Ljava/lang/String; = "key_launcher_dock_expand"

.field private static final KEY_LAUNCHER_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "key_launcher_dock_expand_switch"

.field private static final TAG:Ljava/lang/String; = "LauncherDockExpandFragment"


# instance fields
.field private mDockExpandSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mDockExpandSwitchState:Z

.field private mLauncherDockExpandPreference:Lcom/android/launcher/settings/LauncherDockExpandPreference;

.field private mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private initIconExpandAreaChoice(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    return-void
.end method

.method private initPreference()V
    .registers 2

    const-string v0, "key_launcher_dock_expand"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/settings/LauncherDockExpandPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mLauncherDockExpandPreference:Lcom/android/launcher/settings/LauncherDockExpandPreference;

    const-string v0, "key_launcher_dock_expand_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean p0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

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
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherDockExpandFragment;->initIconExpandAreaChoice(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherDockExpandFragment;->initPreference()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1  # Landroid/view/ContextMenu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/ContextMenu$ContextMenuInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const p1, 0x7f15001a

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mLauncherDockExpandPreference:Lcom/android/launcher/settings/LauncherDockExpandPreference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher/settings/LauncherDockExpandPreference;->destroy()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mLauncherDockExpandPreference:Lcom/android/launcher/settings/LauncherDockExpandPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_launcher_dock_expand_switch"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    if-eqz p0, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarExpandAreaSettingEnable(Z)V

    :cond_19
    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 3

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_launcher_dock_expand_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_17

    const/4 v0, 0x0

    goto :goto_23

    :cond_17
    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mTaskbarSettingsConfig:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    if-eqz p0, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarExpandAreaSettingEnable(Z)V

    :cond_23
    :goto_23
    return v0
.end method
