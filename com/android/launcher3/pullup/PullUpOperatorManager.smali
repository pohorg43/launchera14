.class public Lcom/android/launcher3/pullup/PullUpOperatorManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/pullup/IPullUpOperatorItf;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# static fields
.field private static final AUTO_ANIM_DELAY:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "PullUpOperatorManager"

.field private static volatile sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;


# instance fields
.field private mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

.field private mFastScroll:Z

.field private final mIDoOperatorItf:Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

.field private mIsFirstUsePullUpMode:Z

.field private mIsOpenPullUpMode:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mViewController:Lcom/android/launcher3/pullup/controller/CommonViewController;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/pullup/PullUpOperatorManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager$1;-><init>(Lcom/android/launcher3/pullup/PullUpOperatorManager;)V

    iput-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIDoOperatorItf:Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mFastScroll:Z

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsFirstUsePullUpMode:Z

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsOpenPullUpMode:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/pullup/PullUpOperatorManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mFastScroll:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/pullup/PullUpOperatorManager;)Lcom/android/launcher3/pullup/controller/CommonAnimController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/pullup/PullUpOperatorManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/pullup/PullUpOperatorManager;->sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/pullup/PullUpOperatorManager;

    invoke-direct {v1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/pullup/PullUpOperatorManager;->sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;

    return-object v0
.end method


# virtual methods
.method public alreadyKnowPullUpTips()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const-string v2, "is_first_use_pull_up_gsearch"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_a
    iput-boolean v1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsFirstUsePullUpMode:Z

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->removeUpArrow()V

    return-void
.end method

.method public checkNewsPageIsExit(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    return-void
.end method

.method public fastPullUp(F)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mFastScroll:Z

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->startLauncherActivity()V

    :cond_a
    return-void
.end method

.method public getCurrentAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->getCurrentAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getResourceId(I)I
    .registers 2

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RU"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const p0, 0x7f1205a2

    return p0

    :cond_12
    const p0, 0x7f1205a1

    return p0
.end method

.method public getShimmerValue()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/launcher/Launcher;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pullup/PullUpInfo;->getScreenInfo(Lcom/android/launcher/Launcher;)V

    new-instance p1, Lcom/android/launcher3/pullup/controller/CommonViewController;

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/android/launcher3/pullup/controller/CommonViewController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mViewController:Lcom/android/launcher3/pullup/controller/CommonViewController;

    new-instance p1, Lcom/android/launcher3/pullup/controller/CommonAnimController;

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mViewController:Lcom/android/launcher3/pullup/controller/CommonViewController;

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/pullup/controller/CommonViewController;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIDoOperatorItf:Lcom/android/launcher3/pullup/itf/IDoOperatorItf;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->setDoOperatorListener(Lcom/android/launcher3/pullup/itf/IDoOperatorItf;)V

    iget-object p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v0, "is_first_use_pull_up_gsearch"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsFirstUsePullUpMode:Z

    iget-object p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v0, "is_pull_up_gsearch"

    invoke-static {p1, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsOpenPullUpMode:Z

    return-void
.end method

.method public initPullUpCategoryView(Landroidx/preference/PreferenceScreen;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mViewController:Lcom/android/launcher3/pullup/controller/CommonViewController;

    if-nez p0, :cond_d

    const-string p0, "PullUpOperatorManager"

    const-string p1, "initPullUpCategoryView: view controller is null? check is init?"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/controller/CommonViewController;->initPullUpCategoryView(Landroidx/preference/PreferenceScreen;)Lcom/coui/appcompat/preference/COUISwitchPreference;

    move-result-object p0

    if-eqz p0, :cond_34

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RU"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const p1, 0x7f1205a2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    const p1, 0x7f12059f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_34

    :cond_2e
    const p1, 0x7f1205a1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_34
    :goto_34
    return-object p0
.end method

.method public isAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->isAnimating()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isCanShowUpArrow()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isOpenPullUpMode()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isFirstUsePullUpMode()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public isEnableUpArrow()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isCanShowUpArrow()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isFirstUsePullUpMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsFirstUsePullUpMode:Z

    return p0
.end method

.method public isNormalState()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public isOpenPullUpMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsOpenPullUpMode:Z

    return p0
.end method

.method public isSupportPullUp()Z
    .registers 3

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isSupportPullUpGSearch:Z

    return p0

    :cond_11
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportPullUpGSearch:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->getPullUpCseUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method public makeAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->makeAnim()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->init(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->unInit()V

    return-void
.end method

.method public recoveryData(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public refreshPullUpOpenState()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    const-string v2, "is_pull_up_gsearch"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsOpenPullUpMode:Z

    :cond_d
    return-void
.end method

.method public resetGSearchView()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    :cond_7
    return-void
.end method

.method public resetViewState()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    :cond_7
    return-void
.end method

.method public setFastScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mFastScroll:Z

    return-void
.end method

.method public showGuidePanel()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->createPanel(Landroid/content/Context;ILcom/android/launcher3/OplusDragLayer;)V

    return-void
.end method

.method public startShimmer()V
    .registers 1

    return-void
.end method

.method public stopShimmer()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mViewController:Lcom/android/launcher3/pullup/controller/CommonViewController;

    iget-object v1, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->onDestroy()V

    :cond_c
    iput-object v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mFastScroll:Z

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsFirstUsePullUpMode:Z

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mIsOpenPullUpMode:Z

    return-void
.end method

.method public updateAppInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->mViewController:Lcom/android/launcher3/pullup/controller/CommonViewController;

    if-nez p0, :cond_c

    const-string p0, "PullUpOperatorManager"

    const-string p1, "freshIcon: view controller is null? check is init?"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/controller/CommonViewController;->updateAppInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    return-void
.end method
