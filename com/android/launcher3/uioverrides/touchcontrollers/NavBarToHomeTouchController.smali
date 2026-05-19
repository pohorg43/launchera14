.class public Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# static fields
.field private static final OVERVIEW_TO_HOME_SCRIM_MULTIPLIER:F = 0.5f

.field private static final PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "NavBarToHomeTouchController"


# instance fields
.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mEndState:Lcom/android/launcher3/LauncherState;

.field private mLastState:Lcom/android/launcher3/LauncherState;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNoIntercept:Z

.field private final mPullbackDistance:F

.field private mStartState:Lcom/android/launcher3/LauncherState;

.field private final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    sget-object v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070926

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mPullbackDistance:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->lambda$onDragEnd$0(F)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)Lcom/android/launcher3/LauncherState;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/RecentsView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->lambda$onDragEnd$1(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->lambda$onDragEnd$2(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    move p1, v0

    goto :goto_d

    :cond_c
    move p1, v1

    :goto_d
    const-string v2, "NavBarToHomeTouchController"

    if-nez p1, :cond_17

    const-string p0, "canInterceptTouch: !cameFromNavBar"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_17
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getAllTaskDismissRunning()Z

    move-result v3

    const-string v4, "canInterceptTouch: allTaskDismissRunning: "

    invoke-static {v4, v3, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v3, :cond_2a

    const-string p0, "canInterceptTouch: allTaskDismissRunning"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2a
    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isPendingLaunchTask()Z

    move-result p1

    if-eqz p1, :cond_3a

    sget-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    if-eqz p1, :cond_3a

    const-string p0, "canInterceptTouch: is task launch anim running, so not intercept touch"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3a
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_46

    const-string p0, "canInterceptTouch: mStartState.overviewUi"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_46
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_52

    const p1, 0x7ffdff

    goto :goto_55

    :cond_52
    const p1, 0x7fffff

    :goto_55
    and-int/lit16 p1, p1, -0x101

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string p0, "QuickStep"

    const-string p1, "canInterceptTouch()  return false"

    invoke-static {p0, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6d
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_7b

    const-string p0, "canInterceptTouch: AbstractFloatingView != null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7b
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_9d

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isExcludedAssistant()Z

    move-result p0

    if-eqz p0, :cond_9d

    const-string p0, "canInterceptTouch: FeatureFlags.ASSISTANT_GIVES_LAUNCHER_FOCUS && isExcludedAssistant"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9d
    return v1
.end method

.method private checkWorkspaceIcon()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v4

    :goto_19
    if-nez v1, :cond_a1

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p0, v1, :cond_a1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_3e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_48

    :cond_47
    move v3, v4

    :goto_48
    if-eqz v3, :cond_53

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const-string v1, "NavBarToHomeTouchController"

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_76

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "change pageIndicator alpha from 0f to 1f."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7a
    :goto_7a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_7a

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "isTwoPanelEnabled = $isTwoPanelEnabled, currentPage = ${oplusWorkspace.currentPage}, change shortcutsAndWidgets alpha from 0f to 1f."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :cond_a1
    return-void
.end method

.method private clearState()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->clearState()V

    return-void
.end method

.method private getShiftRange()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    return p0
.end method

.method private getSwipeUpHandler()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSwipeUpHandler()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v1

    :cond_15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-object p0
.end method

.method private initCurrentAnimation()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v1, v0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    :cond_35
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_44

    iget v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mPullbackDistance:F

    sget-object v3, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher3/AbstractFloatingView;->addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V

    :cond_44
    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherAnimUtils;->newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$onDragEnd$0(F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onDragEnd(F)V

    return-void
.end method

.method private static synthetic lambda$onDragEnd$1(Lcom/android/quickstep/views/RecentsView;)V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onDragEnd$2(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method private logHomeGesture()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    iget p0, p0, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private needDelayDragEnd()Z
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->getSwipeUpHandler()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpdatingThumbnail()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isRecentEndTarget()Z

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isCurrentTaskFinished()Z

    move-result p0

    const-string/jumbo v3, "needDelayDragEnd; "

    const-string v4, "-"

    invoke-static {v3, v1, v4, v2, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NavBarToHomeTouchController"

    invoke-static {v3, p0, v4}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez p0, :cond_29

    if-eqz v2, :cond_29

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method private onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->clearState()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->isWaitForAnimationCall()Z

    move-result v3

    goto :goto_29

    :cond_27
    const/4 v1, 0x0

    :cond_28
    move v3, v2

    :goto_29
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onSwipeInteractionCompletedDockView.targetState:"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, ",curState:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, ",dockViewWaitingPlayAnimation:"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "NavBarToHomeTouchController"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->dEx(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v4, :cond_6e

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_6e

    if-eqz v3, :cond_6e

    if-eqz v1, :cond_6e

    invoke-static {p1}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    const-string/jumbo v0, "onSwipeInteractionCompleted"

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/dock/DockView;->playEnterAnimationIfNeeded(Ljava/lang/String;)V

    goto :goto_71

    :cond_6e
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :goto_71
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget p1, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {p0, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "NavBarToHomeTouchController"

    const/4 v2, 0x0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_28

    const-string/jumbo p0, "onControllerInterceptTouchEvent: MotionEvent.ACTION_DOWN && mNoIntercept"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLastState:Lcom/android/launcher3/LauncherState;

    iget-boolean v4, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v4, :cond_46

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v4, :cond_46

    sget-object v4, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq v0, v4, :cond_46

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v0, v4, :cond_48

    :cond_46
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :cond_48
    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_4f
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_5a

    const-string/jumbo p0, "onControllerInterceptTouchEvent: mNoIntercept"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5a
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v1

    if-eqz v1, :cond_8e

    sget-object v1, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v1}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string/jumbo v2, "onControllerInterceptTouchEvent had intercepted and scroll state is "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->getScrollState()Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TouchIntercept::NavBarToHomeTouchController"

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8e
    return v0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->getShiftRange()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd(F)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v1

    sget-object v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x3f000000  # 0.5f

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v2, :cond_24

    cmpg-float v2, p1, v3

    if-gez v2, :cond_22

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    move v0, v4

    goto :goto_25

    :cond_24
    :goto_24
    move v0, v5

    :goto_25
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->getSwipeUpHandler()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->needDelayDragEnd()Z

    move-result v6

    const-string v7, "NavBarToHomeTouchController"

    if-eqz v0, :cond_43

    if-eqz v2, :cond_43

    if-eqz v6, :cond_43

    const-string v0, "delay onDragEnd because isUpdatingThumbnail"

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/graphics/h;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/graphics/h;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;F)V

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setThumbnailUpdateCompleteListener(Ljava/lang/Runnable;)V

    return-void

    :cond_43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDragEnd; success="

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "; swipeUpHandler="

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; needDelayDragEnd="

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v6, v7}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_c1

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    const/4 v0, 0x0

    new-instance v1, Lcom/android/launcher3/uioverrides/touchcontrollers/a;

    invoke-direct {v1, p1, v4}, Lcom/android/launcher3/uioverrides/touchcontrollers/a;-><init>(Lcom/android/quickstep/views/RecentsView;I)V

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    :cond_7c
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    new-instance v1, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$1;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$1;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p1, v0, v5, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_ad

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->logHomeGesture()V

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->checkWorkspaceIcon()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportAssistantSwipeUp()Z

    move-result p1

    if-eqz p1, :cond_ad

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_ad

    check-cast p1, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p1}, Lcom/android/launcher/LauncherCallbacksImp;->closeAlphaOverlay()V

    :cond_ad
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_ba

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_ba
    const-string/jumbo p0, "recentapps"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    goto :goto_ee

    :cond_c1
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v4

    aput v3, v0, v5

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_d9

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    :cond_d9
    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;Lcom/android/launcher3/LauncherState;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_ee
    return-void
.end method

.method public onDragStart(ZF)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->initCurrentAnimation()V

    return-void
.end method
