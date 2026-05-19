.class public Lcom/android/launcher3/pullup/controller/CommonViewController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/pullup/itf/ILauncherModeUiItf;


# static fields
.field private static final KEY_CATEGORY_LAUNCHER_MODE_SELECTOR:Ljava/lang/String; = "category_launcher_mode_selector"

.field private static final KEY_UP_SEARCH_MODE:Ljava/lang/String; = "up_search_mode"

.field private static final TAG:Ljava/lang/String; = "CommonViewController"


# instance fields
.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mOpenPullUpSearch:Z

.field private mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mOpenPullUpSearch:Z

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Lcom/android/launcher3/pullup/controller/CommonViewController;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/controller/CommonViewController;Lcom/coui/appcompat/preference/COUISwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/pullup/controller/CommonViewController;->lambda$initPullUpCategoryView$1(Lcom/coui/appcompat/preference/COUISwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private addPullUpView()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    const/4 v2, -0x1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_16

    return-void

    :cond_16
    new-instance v1, Lcom/android/launcher3/pullup/view/CommonPullUpView;

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v1, v3}, Lcom/android/launcher3/pullup/view/CommonPullUpView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    const-string v3, "GSearchTag"

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v3, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_46
    invoke-direct {p0}, Lcom/android/launcher3/pullup/controller/CommonViewController;->updateAppInfo()V

    :cond_49
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/pullup/controller/CommonViewController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/pullup/controller/CommonViewController;->lambda$updateAppInfo$0()V

    return-void
.end method

.method private initView()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/launcher3/pullup/controller/CommonViewController;->addPullUpView()V

    :cond_d
    return-void
.end method

.method private synthetic lambda$initPullUpCategoryView$1(Lcom/coui/appcompat/preference/COUISwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    iput-boolean p1, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mOpenPullUpSearch:Z

    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mOpenPullUpSearch:Z

    const-string p2, "is_pull_up_gsearch"

    invoke-static {p1, p2, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->refreshPullUpOpenState()V

    return p3
.end method

.method private synthetic lambda$updateAppInfo$0()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_9
    const-string v1, "CommonViewController"

    const-string v2, "call update app info"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_46

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v3, :cond_46

    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->updateAppInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_49

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_49
    :goto_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method private updateAppInfo()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher3/model/c1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/pullup/controller/CommonViewController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getSearchView()Lcom/android/launcher3/pullup/view/CommonPullUpView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    return-object p0
.end method

.method public initPullUpCategoryView(Landroidx/preference/PreferenceScreen;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 6

    const-string v0, "category_launcher_mode_selector"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-nez v0, :cond_13

    const-string p0, "CommonViewController"

    const-string p1, "launcher mode selector ui is change ? add ui error"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_13
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "is_pull_up_gsearch"

    invoke-static {v1, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mOpenPullUpSearch:Z

    new-instance v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "up_search_mode"

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    new-instance v2, Lcom/android/launcher3/pullup/controller/b;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/launcher3/pullup/controller/b;-><init>(Lcom/android/launcher3/pullup/controller/CommonViewController;Lcom/coui/appcompat/preference/COUISwitchPreference;Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean p0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mOpenPullUpSearch:Z

    invoke-virtual {v1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v1
.end method

.method public reSizeView()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_1a

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, v0, :cond_1a

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1a
    return-void
.end method

.method public updateAppInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->updateAppInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public updatePullUpView()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_24

    const-string/jumbo v1, "pull up view top margin had change, topMargin="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const-string v3, "CommonViewController"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/CommonViewController;->mPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->updatePullUpView()V

    :cond_29
    return-void
.end method
