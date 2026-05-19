.class public final Lcom/android/quickstep/LauncherActivityInterface;
.super Lcom/android/quickstep/OplusBaseActivityInterface;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/OplusBaseActivityInterface<",
        "Lcom/android/launcher3/LauncherState;",
        "Lcom/android/launcher3/BaseQuickstepLauncher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

.field public static final TAG:Ljava/lang/String; = "LauncherActivityInterface"


# instance fields
.field private mReapplyStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/LauncherActivityInterface;

    invoke-direct {v0}, Lcom/android/quickstep/LauncherActivityInterface;-><init>()V

    sput-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/quickstep/OplusBaseActivityInterface;-><init>(ZLcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/LauncherActivityInterface;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/LauncherActivityInterface;->lambda$onSwipeUpToHomeComplete$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/LauncherActivityInterface;Lcom/android/quickstep/RotationTouchHelper;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Predicate;Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface;->lambda$createActivityInitListener$1(Ljava/util/function/Predicate;Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private getVisibleLauncher()Lcom/android/launcher3/Launcher;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->isInLiveTileMode()Z

    move-result p0

    if-nez p0, :cond_22

    :cond_1a
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :cond_22
    :goto_22
    return-object v0
.end method

.method private static synthetic lambda$createActivityInitListener$1(Ljava/util/function/Predicate;Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;)Z
    .registers 3

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onSwipeUpToHomeComplete$0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    :cond_d
    return-void
.end method

.method private notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    :cond_17
    return-void
.end method


# virtual methods
.method public allowAllAppsFromOverview()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_FROM_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    return p0
.end method

.method public allowMinimizeSplitScreen()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public closeOverlay(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_3d

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_39

    :cond_1d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isOverlayScrolling()Z

    move-result v0

    if-eqz v0, :cond_33

    instance-of v0, p1, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_33

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->hideOverlayWhenScrolling()V

    :cond_33
    const/16 v0, 0x96

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(I)V

    goto :goto_3d

    :cond_39
    :goto_39
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p0

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->hideEdu()V

    :cond_46
    return-void
.end method

.method public createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/quickstep/util/ActivityInitListener;"
        }
    .end annotation

    new-instance p0, Lcom/android/launcher3/LauncherInitListener;

    new-instance v0, Lcom/android/quickstep/n0;

    invoke-direct {v0, p1}, Lcom/android/quickstep/n0;-><init>(Ljava/util/function/Predicate;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherInitListener;-><init>(Ljava/util/function/BiPredicate;)V

    return-object p0
.end method

.method public deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {v0, p2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->isEventOverAnyTaskbarItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->shouldDeferStartingActivity()Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p0, 0x1

    :goto_21
    return p0
.end method

.method public getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    return-object p0
.end method

.method public bridge synthetic getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    return-object p0
.end method

.method public getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    return-object p0
.end method

.method public getOverviewScrimColorForState(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/LauncherState;)I
    .registers 3

    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getOverviewScrimColorForState(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)I
    .registers 3

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast p2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface;->getOverviewScrimColorForState(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/LauncherState;)I

    move-result p0

    return p0
.end method

.method public getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
    .registers 3

    return-object p1
.end method

.method public getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    invoke-static {v3, v2}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getDuration(ZZ)I

    move-result p2

    int-to-long p2, p2

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v0, :cond_35

    if-nez p4, :cond_1a

    goto :goto_35

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    invoke-virtual {v0, p0, p4, p2, p3}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;

    move-result-object p0

    if-nez v1, :cond_25

    return-object p0

    :cond_25
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v1, p2, v3

    aput-object p0, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1

    :cond_35
    :goto_35
    return-object v1
.end method

.method public getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)I
    .registers 6

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/quickstep/OplusBaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {p2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p0, v0, :cond_20

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p0

    if-eqz p0, :cond_1a

    iget p0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_1f

    :cond_1a
    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    :goto_1f
    return p0

    :cond_20
    invoke-static {p2, p1, p4}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result p0

    return p0
.end method

.method public getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    :goto_1d
    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskViewId()I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    return-object v1

    :cond_2e
    :goto_2e
    return-object v0
.end method

.method public iconPaperZoomOut(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    const-string v0, "LauncherActivityInterface"

    if-nez p0, :cond_14

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "launcher is null "

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void

    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->iconPaperZoom(F)V

    goto :goto_32

    :cond_1e
    const-string p1, "launcher is not resumed"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_32

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->stopPaperZoom()V

    :cond_32
    :goto_32
    return-void
.end method

.method public isInLiveTileMode()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public onAssistantVisibilityChanged(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onAssistantVisibilityChanged(F)V

    return-void
.end method

.method public onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/LauncherActivityInterface$2;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/quickstep/LauncherActivityInterface$2;-><init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/lang/Runnable;Lcom/android/quickstep/RotationTouchHelper;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method public onLaunchTaskFailed()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "LauncherActivityInterface"

    const-string/jumbo v0, "onLaunchTaskFailed: current state is NORMAL, not goto OVERVIEW"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public onOneHandedModeStateChanged(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onOneHandedStateChanged(Z)V

    return-void
.end method

.method public onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-nez v1, :cond_27

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/h0;

    invoke-direct {v3, v2}, Lcom/android/quickstep/h0;-><init>(Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_51

    :cond_27
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isOverlayScrolling()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusBaseActivityInterface;->isOverlayScrolling(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/android/quickstep/LauncherActivityInterface;->mReapplyStateRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_48

    new-instance v1, Lcom/android/quickstep/y0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/y0;-><init>(Lcom/android/quickstep/LauncherActivityInterface;)V

    iput-object v1, p0, Lcom/android/quickstep/LauncherActivityInterface;->mReapplyStateRunnable:Ljava/lang/Runnable;

    :cond_48
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/LauncherActivityInterface;->mReapplyStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/OplusWorkspace;->addPageTranstionEndCallback(Ljava/lang/Runnable;)V

    :cond_51
    :goto_51
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    return-void
.end method

.method public prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;",
            ">;)",
            "Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    new-instance p1, Lcom/android/quickstep/LauncherActivityInterface$1;

    invoke-direct {p1, p0, p3}, Lcom/android/quickstep/LauncherActivityInterface$1;-><init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->initBackgroundStateUI()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p2, p3, :cond_2c

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    :cond_2c
    return-object p1
.end method

.method public removeApplyStateRunnable()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/quickstep/LauncherActivityInterface;->mReapplyStateRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_b

    goto :goto_17

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/LauncherActivityInterface;->mReapplyStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusWorkspace;->removePageTranstionEndCallback(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/LauncherActivityInterface;->mReapplyStateRunnable:Ljava/lang/Runnable;

    :cond_17
    :goto_17
    return-void
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldCancelCurrentGesture()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/BaseActivityInterface;->shouldCancelCurrentGesture()Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->isDraggingItem()Z

    move-result p0

    return p0
.end method

.method public stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;
    .registers 2

    sget-object p0, Lcom/android/quickstep/LauncherActivityInterface$3;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_17

    const/4 p1, 0x2

    if-eq p0, p1, :cond_14

    const/4 p1, 0x3

    if-eq p0, p1, :cond_14

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_14
    sget-object p0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_17
    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public bridge synthetic stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method public switchToRecentsIfVisible(Ljava/lang/Runnable;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string p0, "QuickStep"

    const-string p1, "LauncherActivityInterface"

    const-string/jumbo v0, "switchToRecentsIfVisible(), launcher null, return."

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_12
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->isInLiveTileMode()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    if-nez v2, :cond_27

    return v1

    :cond_27
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/LauncherActivityInterface;->closeOverlay(Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->shouldAnimateStateChange()Z

    move-result v0

    if-nez p1, :cond_3d

    const/4 p1, 0x0

    goto :goto_41

    :cond_3d
    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    :goto_41
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return v1
.end method
