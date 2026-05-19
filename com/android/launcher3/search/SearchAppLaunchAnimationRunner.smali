.class public final Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;,
        Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;

.field private static final MAX_BG_ANIM_HEIGHT:I = 0x90

.field private static final MAX_BG_ANIM_WIDTH:I = 0x39c

.field private static final MIN_WORKSPACE_SCALE:F = 0.92f

.field private static final SETTINGS_EXIT_ANIM:Ljava/lang/String; = "dock_exit_anim_call_time"

.field private static final SETTINGS_EXIT_TIME_OUT:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SearchAppLaunchAnimation"

.field private static final TRANS_Y:F = -500.0f


# instance fields
.field private mAdvanceQuitObserver:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

.field private mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->Companion:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string/jumbo v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;-><init>(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mAdvanceQuitObserver:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startOpenSearchAppAnim$lambda$1$lambda$0(Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$startCloseSearchAppAnimIfNeeded(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startCloseSearchAppAnimIfNeeded()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startCloseSearchAppAnimIfNeeded$lambda$3$lambda$2(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private final resetStatus()V
    .registers 7

    const-string v0, "SearchAppLaunchAnimation"

    const-string/jumbo v1, "resetStatus"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    iget-object v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    if-nez v3, :cond_54

    iget-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->getStateName()Ljava/lang/String;

    move-result-object v1

    :cond_4a
    const-string v3, "layout"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    move v1, v4

    goto :goto_55

    :cond_54
    move v1, v5

    :goto_55
    if-eqz v2, :cond_78

    invoke-virtual {v2, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTempBgWidth(F)V

    invoke-virtual {v2, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTempBgHeight(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresentAndNotStashedInApp()Z

    move-result v3

    if-eqz v3, :cond_6a

    sget-boolean v3, Lcom/android/launcher3/taskbar/TaskbarUtils;->isRecentReverseScene:Z

    if-nez v3, :cond_75

    :cond_6a
    sget-object v3, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v3}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_75
    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onGlobalLayout()V

    :cond_78
    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v1

    if-eqz v1, :cond_84

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher/touch/BlurScrimWindowController;->blurBackground(I)V

    :cond_84
    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v1

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Lcom/android/launcher/touch/BlurScrimWindowController;->detach()V

    :cond_8f
    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresentAndNotStashedInApp()Z

    move-result v2

    if-eqz v2, :cond_ab

    sget-boolean v2, Lcom/android/launcher3/taskbar/TaskbarUtils;->isRecentReverseScene:Z

    if-nez v2, :cond_b3

    :cond_ab
    iget-object v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    if-eqz v2, :cond_b9

    :cond_b3
    const-string v1, "Taskbar presents and reverse animation is running or folder is open, do not change workspace\'s scale&alpha"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cc

    :cond_b9
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusWorkspace;->setAlpha(F)V

    iget v2, v1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v1, v1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :goto_cc
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e3

    move v5, v4

    :cond_e3
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_108

    goto :goto_10a

    :cond_108
    iget v4, v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    :goto_10a
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    return-void
.end method

.method private final startCloseSearchAppAnimIfNeeded()V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "startCloseSearchAppAnimIfNeeded, mStartSearchAnimation = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchAppLaunchAnimation"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-nez v0, :cond_20

    return-void

    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->cancelReplaceAnimation()V

    :cond_39
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :cond_4c
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_60

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setState(I)V

    :cond_60
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->restoreColorAndScale()V

    :cond_73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;-><init>(Lcom/android/launcher/Launcher;Z)V

    new-instance v1, Lcom/android/launcher3/search/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/search/a;-><init>(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->start()V

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v1

    if-eqz v1, :cond_96

    const-string v3, "app_exit"

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_96
    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    return-void
.end method

.method private static final startCloseSearchAppAnimIfNeeded$lambda$3$lambda$2(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->resetStatus()V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result p1

    if-nez p1, :cond_24

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_24

    :cond_22
    const/4 p1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p1, 0x1

    :goto_25
    iget-object p2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    if-eqz p2, :cond_44

    if-nez p1, :cond_44

    sget-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    if-eqz p2, :cond_40

    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_41

    :cond_40
    const/4 p2, 0x0

    :goto_41
    invoke-virtual {p1, p0, p2}, Lcom/android/launcher/guide/DrawerGuideManager;->showDrawerGuide(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    :cond_44
    return-void
.end method

.method private static final startOpenSearchAppAnim$lambda$1$lambda$0(Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 4

    return-void
.end method


# virtual methods
.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startCloseSearchAppAnimIfNeeded()V

    return-void
.end method

.method public final registerObserver()V
    .registers 4

    const-string v0, "SearchAppLaunchAnimation"

    const-string/jumbo v1, "registerObserver"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_exit_anim_call_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mAdvanceQuitObserver:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final resetForHomeGesture()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :cond_19
    iput-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    if-eqz v1, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :cond_30
    iput-object v3, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    :cond_32
    invoke-direct {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->resetStatus()V

    return-void
.end method

.method public final startOpenSearchAppAnim()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mCloseAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->cancel()V

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/touch/BlurScrimWindowController;->attach(Landroid/view/View;)V

    :cond_1a
    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;-><init>(Lcom/android/launcher/Launcher;Z)V

    sget-object v1, Lcom/android/launcher3/search/b;->a:Lcom/android/launcher3/search/b;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->start()V

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v1

    if-eqz v1, :cond_37

    const-string v3, "app_launch"

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_37
    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mOpenAppAnimation:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;

    return-void
.end method

.method public final unRegisterObserver()V
    .registers 3

    const-string v0, "SearchAppLaunchAnimation"

    const-string/jumbo v1, "unRegisterObserver"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->mAdvanceQuitObserver:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$mAdvanceQuitObserver$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
