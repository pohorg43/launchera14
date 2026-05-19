.class public Lcom/android/launcher/settings/LauncherModelFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final ACTION_DRAWER_MODE_SETTINGS:Ljava/lang/String; = "com.android.launcher.intent.action_DRAWER_MODE_SETTINGS"

.field private static final DIALOG_ANIMATION_DURATION:I = 0xc8

.field private static final FINISH_ACTIVITY_DELAY_TIME:I = 0x3e8

.field public static final KEY_ADD_APP_TO_LAUNCHER:Ljava/lang/String; = "add_app_to_launcher"

.field private static final KEY_CATEGORY_LAUNCHER_MODE_SELECTOR:Ljava/lang/String; = "category_launcher_mode_selector"

.field public static final KEY_DRAWER_APP_GLOBAL_SEARCH:Ljava/lang/String; = "drawer_app_global_search"

.field public static final KEY_DRAWER_MODE_SETTINGS:Ljava/lang/String; = "key_drawer_mode_settings"

.field public static final KEY_ENABLE_BRANCH_OPT_BY_USER:Ljava/lang/String; = "key_enable_branch_opt_by_user"

.field public static final KEY_LAUNCHER_IS_SHOW_INDICATED_APP:Ljava/lang/String; = "launcher_is_show_indicated_app"

.field private static final KEY_LAUNCHER_MODE_DRAWER:Ljava/lang/String; = "key_launcher_mode_drawer"

.field public static final KEY_LAUNCHER_MODE_INTRODUCTION:Ljava/lang/String; = "key_launcher_mode_introduction"

.field private static final KEY_LAUNCHER_MODE_SIMPLE:Ljava/lang/String; = "key_launcher_mode_simple"

.field private static final KEY_LAUNCHER_MODE_STANDARD:Ljava/lang/String; = "key_launcher_mode_standard"

.field public static final SHOW_INPUTMETHOD_IN_DRAWER_SWITCH:Ljava/lang/String; = "show_inputmethod_in_drawer_switch"

.field private static final TAG:Ljava/lang/String; = "LauncherModelFragment"


# instance fields
.field private mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mBtnApply:Landroid/widget/Button;

.field private mCurrentChooseMode:Lcom/android/launcher/mode/LauncherMode;

.field private mDetachableAlertDialogListener:Lcom/android/launcher/DetachableAlertDialogListener;

.field private mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mIntroductionPreference:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

.field private mIsApply:Z

.field private mIsShowDialog:Z

.field private mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private mLauncherModeData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/settings/LauncherModeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

.field private mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mPullUpCategory:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mShowLauncherIndicated:Lcom/coui/appcompat/preference/COUISwitchPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeData:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsApply:Z

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsShowDialog:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPullUpCategory:Lcom/coui/appcompat/preference/COUISwitchPreference;

    return-void
.end method

.method private addOnWindowAttachListener(Landroidx/appcompat/app/AlertDialog;)V
    .registers 5

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a04a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f12032d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/settings/LauncherModelFragment$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher/settings/LauncherModelFragment$1;-><init>(Lcom/android/launcher/settings/LauncherModelFragment;Lcom/oplus/anim/EffectiveAnimationView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/settings/LauncherModelFragment;Lcom/android/launcher/settings/LauncherModelFragment;Landroid/app/Activity;Ljava/lang/Boolean;)Lh4/z;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/settings/LauncherModelFragment;->lambda$switchLauncherModel$2(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/app/Activity;Ljava/lang/Boolean;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method private changeStatus(Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private chooseLauncherMode(Lcom/android/launcher/mode/LauncherMode;)V
    .registers 6

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, v0, :cond_e

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isSupportDrawerModeLauncher()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object p1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    :cond_e
    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, v0, :cond_1a

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object p1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    :cond_1a
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_33

    iput-boolean v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsShowDialog:Z

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mBtnApply:Landroid/widget/Button;

    if-eqz v0, :cond_3f

    const v3, 0x7f120116

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_3f

    :cond_33
    iput-boolean v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsShowDialog:Z

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mBtnApply:Landroid/widget/Button;

    if-eqz v0, :cond_3f

    const v3, 0x7f120117

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    :cond_3f
    :goto_3f
    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mCurrentChooseMode:Lcom/android/launcher/mode/LauncherMode;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIntroductionPreference:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    invoke-virtual {v0, p1}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->setData(Lcom/android/launcher/mode/LauncherMode;)V

    sget-object v0, Lcom/android/launcher/settings/LauncherModelFragment$2;->$SwitchMap$com$android$launcher$mode$LauncherMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_c2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_96

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "undefined mode! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherModelFragment"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mShowLauncherIndicated:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-static {p1, v0, v2, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->removeFromLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    :cond_8e
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPullUpCategory:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_ed

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_ed

    :cond_96
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mShowLauncherIndicated:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_ba

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-static {p1, v0, v2, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->addToLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    :cond_ba
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPullUpCategory:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_ed

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_ed

    :cond_c2
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mShowLauncherIndicated:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_e6

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-static {p1, v0, v1, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->removeFromLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    :cond_e6
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPullUpCategory:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_ed

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_ed
    :goto_ed
    return-void
.end method

.method private clearAlertDialogOnDetch()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDetachableAlertDialogListener:Lcom/android/launcher/DetachableAlertDialogListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/android/launcher/DetachableAlertDialogListener;->clearOnDetach(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDetachableAlertDialogListener:Lcom/android/launcher/DetachableAlertDialogListener;

    :cond_c
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->lambda$showLoadingDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private dismissLoadingDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_a
    return-void
.end method

.method private dismissLoadingDialogToLauncher()V
    .registers 3

    const-string v0, "LauncherModelFragment"

    const-string v1, "dismissLoadingDialogToLauncher"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/android/launcher/settings/b;

    invoke-direct {v1, p0}, Lcom/android/launcher/settings/b;-><init>(Lcom/android/launcher/settings/LauncherModelFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_1b
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/settings/LauncherModelFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->dismissLoadingDialogToLauncher()V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/settings/LauncherModelFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->lambda$dismissLoadingDialogToLauncher$4()V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->lambda$showAlertDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private getLauncherModeInfo(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/settings/LauncherModeInfo;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeData:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/settings/LauncherModeInfo;

    iget-object v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->mode:Lcom/android/launcher/mode/LauncherMode;

    if-ne v1, p1, :cond_a

    return-object v0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->lambda$dismissLoadingDialogToLauncher$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/settings/LauncherModelFragment;->lambda$showAlertDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private initLauncherModeInfo(Landroid/content/Context;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/settings/LauncherModeInfo;

    invoke-direct {v0}, Lcom/android/launcher/settings/LauncherModeInfo;-><init>()V

    const-string v1, "key_launcher_mode_standard"

    iput-object v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->key:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    iput-object v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->mode:Lcom/android/launcher/mode/LauncherMode;

    const v1, 0x7f120598

    iput v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->desResId:I

    const v1, 0x7f08091b

    iput v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->preview1ResId:I

    const v1, 0x7f080918

    iput v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->preview2ResId:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->checkCellWhenApply:Z

    const-string v2, "LastStandardModeCellX"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/settings/LauncherModeInfo;->savedCellCountX:I

    const-string v2, "LastStandardModeCellY"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/settings/LauncherModeInfo;->savedCellCountY:I

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeData:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/launcher/settings/LauncherModeInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isSupportDrawerModeLauncher()Z

    move-result v0

    if-eqz v0, :cond_7c

    new-instance v0, Lcom/android/launcher/settings/LauncherModeInfo;

    invoke-direct {v0}, Lcom/android/launcher/settings/LauncherModeInfo;-><init>()V

    const-string v2, "key_launcher_mode_drawer"

    iput-object v2, v0, Lcom/android/launcher/settings/LauncherModeInfo;->key:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    iput-object v2, v0, Lcom/android/launcher/settings/LauncherModeInfo;->mode:Lcom/android/launcher/mode/LauncherMode;

    const v2, 0x7f120244

    iput v2, v0, Lcom/android/launcher/settings/LauncherModeInfo;->desResId:I

    const v2, 0x7f080915

    iput v2, v0, Lcom/android/launcher/settings/LauncherModeInfo;->preview1ResId:I

    const v2, 0x7f080914

    iput v2, v0, Lcom/android/launcher/settings/LauncherModeInfo;->preview2ResId:I

    iput-boolean v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->checkCellWhenApply:Z

    const-string v1, "LastDrawModeCellX"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->savedCellCountX:I

    const-string v1, "LastDrawModeCellY"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->savedCellCountY:I

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeData:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/android/launcher/settings/LauncherModeInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result p1

    if-eqz p1, :cond_a5

    new-instance p1, Lcom/android/launcher/settings/LauncherModeInfo;

    invoke-direct {p1}, Lcom/android/launcher/settings/LauncherModeInfo;-><init>()V

    const-string v0, "key_launcher_mode_simple"

    iput-object v0, p1, Lcom/android/launcher/settings/LauncherModeInfo;->key:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    iput-object v1, p1, Lcom/android/launcher/settings/LauncherModeInfo;->mode:Lcom/android/launcher/mode/LauncherMode;

    const v1, 0x7f12057b

    iput v1, p1, Lcom/android/launcher/settings/LauncherModeInfo;->desResId:I

    const v1, 0x7f080917

    iput v1, p1, Lcom/android/launcher/settings/LauncherModeInfo;->preview1ResId:I

    const v1, 0x7f080916

    iput v1, p1, Lcom/android/launcher/settings/LauncherModeInfo;->preview2ResId:I

    iput-boolean v3, p1, Lcom/android/launcher/settings/LauncherModeInfo;->checkCellWhenApply:Z

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeData:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    return-void
.end method

.method private initPreference()V
    .registers 9

    const-string v0, "category_launcher_mode_selector"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "key_launcher_mode_introduction"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIntroductionPreference:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    const-string v0, "add_app_to_launcher"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "launcher_is_show_indicated_app"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mShowLauncherIndicated:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mShowLauncherIndicated:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "drawer_app_global_search"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isDrawerSupportGlobalSearch()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_66

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->sGlobalSearchMateData:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_6b

    :cond_66
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_6b
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_bf

    const-string v0, "key_show_inputmethod_in_drawer"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_branch_personalize_search"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "key_add_search_notification"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_af

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSearchNotificationEnable()Z

    move-result v3

    if-eqz v3, :cond_ab

    goto :goto_ac

    :cond_ab
    move v1, v2

    :goto_ac
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_af
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v5, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object v6, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/branch/BranchManager;->initPersonalizeSearchSwitchAndInputMethodSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_bf
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIntroductionPreference:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->setmModeClickListener(Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;)V

    return-void
.end method

.method private synthetic lambda$dismissLoadingDialogToLauncher$4()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherModelFragment;->startLauncherActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->notifySceneModeToChangeState()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->checkAndUpdateIconConfigSize()V

    return-void
.end method

.method private synthetic lambda$dismissLoadingDialogToLauncher$5(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/appcompat/widget/g;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher/settings/LauncherModelFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$showAlertDialog$0(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsApply:Z

    goto :goto_d

    :cond_7
    const/4 p1, -0x2

    if-ne p2, p1, :cond_d

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsApply:Z

    :cond_d
    :goto_d
    return-void
.end method

.method private synthetic lambda$showAlertDialog$1(Landroid/content/DialogInterface;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsApply:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsApply:Z

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->showLoadingDialog()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$showLoadingDialog$3(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->startSwitchModeTask()V

    return-void
.end method

.method private synthetic lambda$switchLauncherModel$2(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/app/Activity;Ljava/lang/Boolean;)Lh4/z;
    .registers 6

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_23

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsShowDialog:Z

    iget-object p2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mBtnApply:Landroid/widget/Button;

    if-eqz p2, :cond_13

    const p3, 0x7f120116

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    :cond_13
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroidx/recyclerview/widget/a;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher/settings/LauncherModelFragment;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_34

    :cond_23
    const p0, 0x7f12032a

    invoke-static {p2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    invoke-static {p2, p0}, Lcom/android/common/util/GenericUtils;->enableWindowHomeMenuKey(Landroid/app/Activity;Z)V

    invoke-direct {p1}, Lcom/android/launcher/settings/LauncherModelFragment;->dismissLoadingDialog()V

    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private notifyDataSetChanged()V
    .registers 1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_f
    return-void
.end method

.method private showAlertDialog()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_4c

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12031f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDetachableAlertDialogListener:Lcom/android/launcher/DetachableAlertDialogListener;

    if-nez v1, :cond_22

    new-instance v1, Lcom/android/launcher/settings/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/settings/a;-><init>(Lcom/android/launcher/settings/LauncherModelFragment;)V

    invoke-static {v1}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDetachableAlertDialogListener:Lcom/android/launcher/DetachableAlertDialogListener;

    :cond_22
    const v1, 0x7f12032b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDetachableAlertDialogListener:Lcom/android/launcher/DetachableAlertDialogListener;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v1, 0x7f120193

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDetachableAlertDialogListener:Lcom/android/launcher/DetachableAlertDialogListener;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/launcher/settings/c;

    invoke-direct {v1, p0}, Lcom/android/launcher/settings/c;-><init>(Lcom/android/launcher/settings/LauncherModelFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_4c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0}, Lcom/android/common/util/GenericUtils;->ignoreHomeMenuKey(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showLoadingDialog()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_39

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_39

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f13017a

    invoke-direct {v0, v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v2, Lcom/android/launcher/settings/d;

    invoke-direct {v2, p0}, Lcom/android/launcher/settings/d;-><init>(Lcom/android/launcher/settings/LauncherModelFragment;)V

    invoke-static {v2}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnShowListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2, v3}, Lcom/android/launcher/DetachableAlertDialogListener;->clearOnDetach(Landroid/app/Dialog;)V

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v2}, Lcom/android/common/util/GenericUtils;->ignoreHomeMenuKey(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/common/util/GenericUtils;->enableWindowHomeMenuKey(Landroid/app/Activity;Z)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5f

    if-eqz v0, :cond_5f

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->s()V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherModelFragment;->addOnWindowAttachListener(Landroidx/appcompat/app/AlertDialog;)V

    :cond_5f
    return-void
.end method

.method private startLauncherActivity(Landroid/app/Activity;)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startLauncherActivity: activity="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherModelFragment"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result p0

    if-eqz p0, :cond_26

    const-string p0, "default launcher is customized, do not start oppo launcher"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_3e
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e .. :try_end_44} :catch_45

    goto :goto_5b

    :catch_45
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startLauncherActivity can\'t startActivity : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    return-void
.end method

.method private startSwitchModeTask()V
    .registers 5

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherModelFragment;->getLauncherModeInfo(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/settings/LauncherModeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mCurrentChooseMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-direct {p0, v1}, Lcom/android/launcher/settings/LauncherModelFragment;->getLauncherModeInfo(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/settings/LauncherModeInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange, lastModeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " applyModeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherModelFragment"

    invoke-static {v3, v2}, Lcom/android/common/debug/OplusFileLog;->dForever(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/settings/LauncherModelFragment;->switchLauncherModel(Lcom/android/launcher/settings/LauncherModeInfo;Lcom/android/launcher/settings/LauncherModeInfo;)V

    return-void
.end method

.method private switchLauncherModel(Lcom/android/launcher/settings/LauncherModeInfo;Lcom/android/launcher/settings/LauncherModeInfo;)V
    .registers 6

    if-eqz p1, :cond_2e

    if-nez p2, :cond_5

    goto :goto_2e

    :cond_5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/settings/LauncherModelFragment;

    if-eqz v0, :cond_2d

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object p1, p1, Lcom/android/launcher/settings/LauncherModeInfo;->mode:Lcom/android/launcher/mode/LauncherMode;

    iget-object p2, p2, Lcom/android/launcher/settings/LauncherModeInfo;->mode:Lcom/android/launcher/mode/LauncherMode;

    new-instance v2, Lcom/android/launcher/settings/e;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher/settings/e;-><init>(Lcom/android/launcher/settings/LauncherModelFragment;Lcom/android/launcher/settings/LauncherModelFragment;Landroid/app/Activity;)V

    invoke-static {v1, p1, p2, v2}, Lcom/android/common/util/LauncherModeUtil;->switchLauncherModeAndNotify(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V

    :cond_2d
    return-void

    :cond_2e
    :goto_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "switchLauncherModel, null mode info. applying info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherModelFragment"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private syncStatus()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isDefaultAddNewAppsToWorkspaceInDrawerMode()Z

    move-result v2

    const-string v3, "is_add_app_to_workspace_for_drawer_mode"

    invoke-static {v1, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isGlobalSearchInDrawerModeSwitchOn()Z

    move-result v2

    const-string v3, "is_drawer_app_global_search"

    invoke-static {v1, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mShowLauncherIndicated:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "is_show_indicated_app_for_drawer_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "show_inputmethod_in_drawer_switch"

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_enable_branch_search_notification"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPullUpCategory:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_74

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "is_pull_up_gsearch"

    invoke-static {p0, v1, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_74
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

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a012b

    if-ne p1, v0, :cond_23

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    return-void

    :cond_14
    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIsShowDialog:Z

    if-eqz p1, :cond_1c

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->showAlertDialog()V

    goto :goto_23

    :cond_1c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->startLauncherActivity(Landroid/app/Activity;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f130216

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCreate: this="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherModelFragment"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->initLauncherModeInfo(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->initPreference()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_b

    const p1, 0x7f15001e

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    goto :goto_11

    :cond_b
    const p1, 0x7f15001d

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    :goto_11
    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->initPullUpCategoryView(Landroidx/preference/PreferenceScreen;)Lcom/coui/appcompat/preference/COUISwitchPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPullUpCategory:Lcom/coui/appcompat/preference/COUISwitchPreference;

    :cond_29
    return-void
.end method

.method public onDestroy()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherModelFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/util/GenericUtils;->enableWindowHomeMenuKey(Landroid/app/Activity;Z)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->clearAlertDialogOnDetch()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->dismissLoadingDialog()V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIntroductionPreference:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->destroy()V

    :cond_2c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mBtnApply:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mIntroductionPreference:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onModeClickListener(Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->chooseLauncherMode(Lcom/android/launcher/mode/LauncherMode;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseRequireInsteadOfGet"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    return v0

    :cond_c
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_f8

    goto :goto_5e

    :sswitch_1d
    const-string v1, "key_add_search_notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_5e

    :cond_26
    const/4 p2, 0x5

    goto :goto_5e

    :sswitch_28
    const-string v1, "drawer_app_global_search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_5e

    :cond_31
    const/4 p2, 0x4

    goto :goto_5e

    :sswitch_33
    const-string v1, "launcher_is_show_indicated_app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_5e

    :cond_3c
    const/4 p2, 0x3

    goto :goto_5e

    :sswitch_3e
    const-string v1, "key_branch_personalize_search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_5e

    :cond_47
    const/4 p2, 0x2

    goto :goto_5e

    :sswitch_49
    const-string v1, "add_app_to_launcher"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_5e

    :cond_52
    move p2, v2

    goto :goto_5e

    :sswitch_54
    const-string v1, "key_show_inputmethod_in_drawer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move p2, v0

    :goto_5e
    packed-switch p2, :pswitch_data_112

    goto/16 :goto_f6

    :pswitch_63  #0x5
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    const-string p2, "key_enable_branch_search_notification"

    invoke-direct {p0, p2, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->changeStatus(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_8e

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddSearchNotificationSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearchNotification(Landroid/content/Context;Z)V

    :cond_8e
    :goto_8e
    move v0, v2

    goto :goto_f6

    :pswitch_90  #0x4
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mDrawerAppGlobalSearch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    const-string p2, "is_drawer_app_global_search"

    invoke-direct {p0, p2, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->changeStatus(Ljava/lang/String;Z)V

    goto :goto_8e

    :pswitch_9d  #0x3
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mShowLauncherIndicated:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    const-string p2, "is_show_indicated_app_for_drawer_mode"

    invoke-direct {p0, p2, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->changeStatus(Ljava/lang/String;Z)V

    goto :goto_8e

    :pswitch_aa  #0x2
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    sget-object p2, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearch(Landroid/content/Context;Z)V

    const-string v1, "key_enable_branch_opt_by_user"

    invoke-direct {p0, v1, v2}, Lcom/android/launcher/settings/LauncherModelFragment;->changeStatus(Ljava/lang/String;Z)V

    if-nez p1, :cond_c8

    invoke-virtual {p2, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setReIntoDrawer(Z)V

    invoke-virtual {p2, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->refreshSaveUserPageStatus(Z)V

    goto :goto_8e

    :cond_c8
    const-string p1, "key_is_ota_or_user_close_need_show_red_dot"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/settings/LauncherModelFragment;->changeStatus(Ljava/lang/String;Z)V

    const-string p1, "key_is_ota_and_user_close_need_show_declare"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/settings/LauncherModelFragment;->changeStatus(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mPersonalizeSearchSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setHasRedDot(Z)V

    invoke-virtual {p2, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->setReIntoDrawer(Z)V

    goto :goto_8e

    :pswitch_db  #0x1
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mAddAppPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    const-string p2, "is_add_app_to_workspace_for_drawer_mode"

    invoke-direct {p0, p2, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->changeStatus(Ljava/lang/String;Z)V

    goto :goto_8e

    :pswitch_e8  #0x0
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mInputMethodSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    const-string/jumbo p2, "show_inputmethod_in_drawer_switch"

    invoke-direct {p0, p2, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->changeStatus(Ljava/lang/String;Z)V

    goto :goto_8e

    :goto_f6
    return v0

    nop

    :sswitch_data_f8
    .sparse-switch
        -0x64fc2aab -> :sswitch_54
        0x146f6828 -> :sswitch_49
        0x22009110 -> :sswitch_3e
        0x49e554c1 -> :sswitch_33
        0x5015f858 -> :sswitch_28
        0x55569fa4 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_e8  #00000000
        :pswitch_db  #00000001
        :pswitch_aa  #00000002
        :pswitch_9d  #00000003
        :pswitch_90  #00000004
        :pswitch_63  #00000005
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelFragment;->syncStatus()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a012b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mBtnApply:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->chooseLauncherMode(Lcom/android/launcher/mode/LauncherMode;)V

    const-string p2, "launcherMode = "

    const-string v0, ", size = "

    invoke-static {p2, p1, v0}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelFragment;->mLauncherModeData:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherModelFragment"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
