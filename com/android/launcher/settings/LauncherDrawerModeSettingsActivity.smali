.class public final Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;
.super Lcom/android/launcher/OplusBaseAppCompatActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity$Companion;

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "DRAWERMODE_SETTINGS_FRAGMENT"


# instance fields
.field private mFragment:Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;

.field private mHandler:Landroid/os/Handler;

.field private mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

.field private mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->Companion:Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/OplusBaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0030

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x0

    const-string v1, "DRAWERMODE_SETTINGS_FRAGMENT"

    if-eqz p1, :cond_19

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v0

    :goto_1a
    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher.settings.LauncherDrawerModeSettingsFragment"

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_27

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_27
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;

    goto :goto_32

    :cond_2d
    new-instance v0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;

    invoke-direct {v0}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;-><init>()V

    :goto_32
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->mFragment:Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;

    invoke-static {p0}, Lcom/android/common/util/ToolbarUtils;->setStatusBarTransparentAndBlackFont(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a02c8

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->mFragment:Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-direct {p1, p0}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-virtual {p1}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->onDestroy()V

    :cond_7
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsActivity;->mFragment:Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    :cond_a
    return-void
.end method
