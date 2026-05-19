.class public Lcom/android/quickstep/touch/SwipeToRecentTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# static fields
.field private static final APPROXIMATE_LINE_START_END_XY_NUMS:I = 0x4

.field private static final CIRCLE_ANGLE:F = 360.0f

.field private static final DBG:Z = false

.field private static final FLAG_SWIPE_HONE_DISTANCE:I = 0x12c

.field private static final FLAG_SWITCH_TO_APP:I = 0x1

.field private static final FLAG_SWITCH_TO_HOME:I = 0x0

.field private static final FLAG_SWITCH_TO_OVERVIEW:I = 0x2

.field private static final INTERCEPT_EVENT_ANGLE_ARCTAN:F = 0.5f

.field private static final QUICK_DOWN_TIME_DIFFERENCE:J = 0x1f4L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAnimatingToOverViewFlag:Z

.field private mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

.field private mDragPaused:Z

.field private mEndAction:Ljava/lang/Runnable;

.field private final mEndState:Lcom/android/launcher3/LauncherState;

.field private final mFlingSpeed:F

.field private mGoHomeAnimatingFlag:Z

.field private mGoOverviewCancel:Z

.field private mGoPeekPoint:Landroid/graphics/PointF;

.field private mGoingToOverview:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivelyCancelEvent:Z

.field private mIsFoldScreenExpanded:Z

.field private mIsRTL:Z

.field private mLastDisplacement:Landroid/graphics/PointF;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private final mMotionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

.field private mMotionPauseChangedFlag:Z

.field private final mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

.field private mNoIntercept:Z

.field private mOverviewInteractionCompleted:Z

.field private mPreDownTime:J

.field private mReachedOverview:Z

.field private mStartDisplacement:Landroid/graphics/PointF;

.field private mStartOverview:Z

.field private mStartState:Lcom/android/launcher3/LauncherState;

.field private final mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

.field private mSwipeTranslateInit:Z

.field private mUnpauseDistance:F

.field private mWillGoHomeFlag:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoPeekPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseChangedFlag:Z

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoHomeAnimatingFlag:Z

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mWillGoHomeFlag:Z

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mIsActivelyCancelEvent:Z

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    const v3, 0x7f070158

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v2, v3}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;-><init>(F)V

    iput-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    const v2, 0x7f0708cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mUnpauseDistance:F

    const v2, 0x7f070f5d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mFlingSpeed:F

    new-instance v1, Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    sget-object v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v1, p1, p0, v2}, Lcom/oplus/quickstep/touch/OplusSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    new-instance v2, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-direct {v2, p1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    new-instance v2, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-direct {v2, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->setTanAngle(F)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setSwipeToRecentAnimationHelper(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    :cond_8c
    const-string p1, "construct mAnimationHelper: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/touch/SwipeToRecentTouchController;Lcom/android/launcher3/LauncherState;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->lambda$onDragEnd$1(Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/touch/SwipeToRecentTouchController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->lambda$onDragEnd$2()V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/touch/SwipeToRecentTouchController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->lambda$goOverviewVibrate$0()V

    return-void
.end method

.method private changeAssistScreenStatus()V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportAssistantSwipeUp()Z

    move-result v1

    if-eqz v1, :cond_16

    instance-of p0, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz p0, :cond_5b

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->openAlphaOverlay()V

    goto :goto_5b

    :cond_16
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_28
    const/4 v5, 0x0

    if-ge v4, v2, :cond_42

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getScrimBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_42
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    const-string/jumbo v1, "recentapps"

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    instance-of p0, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz p0, :cond_5b

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    const-string/jumbo p0, "swipe_up_to_recents"

    invoke-virtual {v0, p0}, Lcom/android/launcher/LauncherCallbacksImp;->onGestureSwipeUp(Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method private checkSwitchMode()I
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v0, "checkSwitchMode; Launcher is no resume"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityX()F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v3}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityY()F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->checkSwitchMode(FFLandroid/graphics/PointF;)I

    move-result v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_31

    iget-boolean v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mIsFoldScreenExpanded:Z

    if-eq v3, v2, :cond_31

    goto :goto_32

    :cond_31
    move v1, v0

    :goto_32
    iput-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mIsFoldScreenExpanded:Z

    return v1
.end method

.method private clearState()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoingToOverview:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mEndAction:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->clearState()V

    return-void
.end method

.method private closeTopViewOrMovePageIfNeeded()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const v3, 0x7ffeff

    invoke-static {v0, v3}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mWillGoHomeFlag:Z

    if-nez v0, :cond_29

    move v0, v1

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v4, "closeTopViewOrMovePageIfNeeded shouldMoveToDefaultScreen="

    invoke-static {v4, v0, v3}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    if-eqz v3, :cond_63

    sget v3, Lcom/android/launcher3/Workspace;->DEFAULT_PAGE:I

    if-ne v0, v3, :cond_51

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_57

    :cond_51
    invoke-static {v2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isInMinimized(I)Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_57
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v3, "closeTopViewOrMovePageIfNeeded: we are in multi window mode, so we should send home key"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectKeyEvent(I)V

    goto :goto_6c

    :cond_63
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->moveToDefaultScreen()V

    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_8b

    :cond_89
    move v0, v2

    goto :goto_8c

    :cond_8b
    :goto_8b
    move v0, v1

    :goto_8c
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    if-eqz v3, :cond_99

    if-eqz v0, :cond_99

    invoke-virtual {v3, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_99
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    const-string p0, "homekey"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    return-void
.end method

.method private dragEndByAnimationing()Z
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v1, "dragEndByAnimationing isGoHomeAnimatingFlag: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoHomeAnimatingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isMotionPauseChangedFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseChangedFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mChangeQuickSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->getMChangeQuickSwitch()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoHomeAnimatingFlag:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseChangedFlag:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->getMChangeQuickSwitch()Z

    move-result v0

    if-nez v0, :cond_65

    iput-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mWillGoHomeFlag:Z

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->removeRecentEndListener()V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelAllAnimationIfNeed()V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeStartClearButtonExitAnima()V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeStartAppIconsExitAnima()V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setWallPaperBlurStart(F)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->onGoHome(Z)V

    goto :goto_81

    :cond_65
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_76

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecentMotionPaused(Z)V

    :cond_76
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v0, "dragEndByAnimationing MotionPauseChanged not callback"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7e
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->dragEndPeekingAnimation()V

    :goto_81
    return v1
.end method

.method private dragEndPeekingAnimation()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoOverviewCancel:Z

    if-eqz v0, :cond_9

    goto :goto_68

    :cond_9
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->checkSwitchMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goToOverviewOrHomeOnDragEnd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateStiffnessWhenFling()V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goSwitchAppAnimation()V

    return-void

    :cond_36
    if-nez v0, :cond_43

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeAnimation()V

    return-void

    :cond_43
    const/4 v1, 0x2

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;

    const-string v2, "HIDDEN_TIP_REQUIRED"

    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    :cond_5e
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverviewAnimation()V

    :cond_68
    :goto_68
    return-void
.end method

.method private getSwipeCompletedLauncherState()Lcom/android/launcher3/LauncherState;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->hasCanceledAllAppsToNormal()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v0, "getSwipeCompletedLauncherState back to ALL_APPS"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_10
    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method private goOverviewVibrate()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/c1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentTouchController;)V

    sget-object p0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hasCanceledAllAppsToNormal()Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_1d

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v4, :cond_25

    :cond_1d
    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    if-eqz p0, :cond_26

    if-ne v2, v3, :cond_26

    if-ne v0, v3, :cond_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method private synthetic lambda$goOverviewVibrate$0()V
    .registers 2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportLuxunVirbrator()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16f

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, v0}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$onDragEnd$1(Lcom/android/launcher3/LauncherState;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView(Z)V

    :cond_27
    return-void
.end method

.method private synthetic lambda$onDragEnd$2()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method

.method private onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwipeInteractionCompleted: targetState = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " animate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    if-ne p1, v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    if-eqz v0, :cond_3a

    :cond_2d
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->updateAnimatingFlag(Z)V

    :cond_3a
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    iget p1, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {p0, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    return-void
.end method

.method private updateAnimatingFlag(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseChangedFlag:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    return-void
.end method


# virtual methods
.method public canBeReused(Lcom/android/launcher/Launcher;)Z
    .registers 5
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2d

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p1

    if-eq p0, p1, :cond_2b

    return v1

    :cond_2b
    const/4 p0, 0x1

    return p0

    :cond_2d
    return v1
.end method

.method public canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 8

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
    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v4, "canInterceptTouch: cameFromNavBar="

    const-string v5, ", mStartState="

    invoke-static {v4, p1, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean v5, v5, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mAnimationHelper.isAnimatingToOverView()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v5}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAnimatingToOverView()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->isJustStartApp()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string p1, "isJustStartApp"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_59
    if-nez v2, :cond_63

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string p1, "!launcherFinishBindFlag"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_63
    if-nez p1, :cond_6d

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string p1, "!cameFromNavBar"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6d
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_83

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string p1, "Launcher is SPRING_LOADED"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_83
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->setQuickSwipeUp(Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAnimatingToOverView()Z

    move-result p1

    if-eqz p1, :cond_ae

    invoke-direct {p0, v0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->updateAnimatingFlag(Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->setQuickSwipeUp(Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeAnimalCheck()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoHomeAnimatingFlag:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mPreDownTime:J

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string p1, "isAnimatingToOverView"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_ae
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_c2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mPreDownTime:J

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string p1, "canInterceptTouch: mStartState.overviewUi"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_c2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mPreDownTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long p1, v1, v3

    if-gtz p1, :cond_e1

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v1, "canInterceptTouch: quick swipe up"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->setQuickSwipeUp(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mPreDownTime:J

    :cond_e1
    return v0
.end method

.method public getHelper()Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    return-object p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setApproximateLineTiltAngleInActionUp(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onControllerInterceptTouchEvent: mNoIntercept"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2e
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_33
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mNoIntercept:Z

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_82

    :cond_40
    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v1

    if-eqz v1, :cond_81

    sget-object v1, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v1}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v2, "TouchIntercept::"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onControllerInterceptTouchEvent had intercepted and scroll state is:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->getScrollState()Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_81
    return v0

    :cond_82
    :goto_82
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onControllerInterceptTouchEvent: mNoIntercept || !mLauncher.isResumed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mIsActivelyCancelEvent:Z

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_1a

    if-eq v0, v4, :cond_f

    if-ne v0, v3, :cond_19

    :cond_f
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onControllerTouchEvent; actively cancel event so rest variable"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mIsActivelyCancelEvent:Z

    :cond_19
    return v4

    :cond_1a
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingState()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_57

    if-eq v0, v4, :cond_57

    if-eq v0, v3, :cond_57

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onControllerTouchEvent; launcher is no resume; origin-ev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; temp-ev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mIsActivelyCancelEvent:Z

    goto :goto_58

    :cond_57
    move-object v1, p1

    :goto_58
    const/16 v5, 0x2002

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    if-nez p1, :cond_c0

    sget-object p1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->receiveEvent(Landroid/view/MotionEvent;)V

    if-eq v0, v4, :cond_77

    if-ne v0, v3, :cond_c0

    :cond_77
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->getApproximateLineStartEndXYs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c0

    invoke-static {p1, v4}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    if-eqz p1, :cond_c0

    array-length v0, p1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_c0

    aget v0, p1, v2

    float-to-double v5, v0

    aget v0, p1, v4

    float-to-double v7, v0

    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-double v9, v0

    aget p1, p1, v3

    float-to-double v11, p1

    invoke-static/range {v5 .. v12}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->calculateTiltAngle(DDDD)D

    move-result-wide v2

    neg-double v4, v2

    const-wide/16 v6, 0x0

    cmpg-double p1, v4, v6

    if-gez p1, :cond_b7

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    const-wide v4, 0x4076800000000000L  # 360.0

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setApproximateLineTiltAngleInActionUp(Ljava/lang/Double;)V

    goto :goto_c0

    :cond_b7
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setApproximateLineTiltAngleInActionUp(Ljava/lang/Double;)V

    :cond_c0
    :goto_c0
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateBackgroundAnimate(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDrag(FFLandroid/view/MotionEvent;)Z
    .registers 8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string v1, " onDrag: displacementX="

    const-string v2, ", displacementy="

    const-string v3, ", ev="

    invoke-static {v1, p2, v2, p1, v3}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDragPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSwipeTranslateInit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    invoke-static {v1, v2, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2d
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v0, p3}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    iget-boolean p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_38

    return v0

    :cond_38
    iget-boolean p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-eqz p3, :cond_85

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityY()F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityX()F

    move-result v2

    invoke-virtual {p3, p2, p1, v1, v2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateSwipeDirection(FFFF)V

    iget-boolean p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    if-nez p3, :cond_5d

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p0}, Landroid/graphics/PointF;->set(FF)V

    return v0

    :cond_5d
    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->checkRecentsViewAlpha()V

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p3, p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateTranslateAndAnimate(F)V

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityY()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateScaleAndAnimate(FF)V

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoPeekPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mUnpauseDistance:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_81

    goto :goto_82

    :cond_81
    const/4 v0, 0x0

    :goto_82
    invoke-virtual {p3, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->setAllowCancel(Z)V

    :cond_85
    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p3, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->onDrag(F)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(F)V
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDragEnd mSwipeTranslateInit:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mReachedOverview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDragPaused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAnimatingToOverViewFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->updateFlags(IZ)V

    iput-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mWillGoHomeFlag:Z

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    if-eqz v0, :cond_57

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->dragEndByAnimationing()Z

    move-result v0

    if-eqz v0, :cond_7a

    return-void

    :cond_57
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-eqz v0, :cond_6c

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->dragEndPeekingAnimation()V

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v3, :cond_7a

    move v0, v1

    goto :goto_7b

    :cond_6c
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateBackgroundAnimate(F)V

    :cond_7a
    move v0, v2

    :goto_7b
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_8c

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mFlingSpeed:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_8c

    move p1, v1

    goto :goto_8d

    :cond_8c
    move p1, v2

    :goto_8d
    iget-boolean v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    const/high16 v4, 0x3f800000  # 1.0f

    if-nez v3, :cond_a3

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x43960000  # 300.0f

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_a7

    if-nez p1, :cond_a7

    :cond_a3
    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mWillGoHomeFlag:Z

    if-eqz p1, :cond_f0

    :cond_a7
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->closeTopViewOrMovePageIfNeeded()V

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->getSwipeCompletedLauncherState()Lcom/android/launcher3/LauncherState;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mWillGoHomeFlag:Z

    if-eqz v0, :cond_b3

    goto :goto_cc

    :cond_b3
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    if-eq v0, p1, :cond_cd

    goto :goto_cc

    :cond_c0
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    if-eq v0, p1, :cond_cd

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v0

    if-nez v0, :cond_cd

    :goto_cc
    move v2, v1

    :cond_cd
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_d6

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0, v4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setWallPaperBlurStart(F)V

    :cond_d6
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher3/z0;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/launcher3/z0;-><init>(Lcom/android/quickstep/touch/SwipeToRecentTouchController;Lcom/android/launcher3/LauncherState;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportAssistantSwipeUp()Z

    move-result p1

    if-eqz p1, :cond_117

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    goto :goto_117

    :cond_f0
    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    if-nez p1, :cond_117

    if-nez v0, :cond_fa

    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-nez p1, :cond_117

    :cond_fa
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->hasCanceledAllAppsToNormal()Z

    move-result p1

    if-eqz p1, :cond_117

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDragEnd back to ALL_APPS when animating to home"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1, v4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->setWallPaperBlurStart(F)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/model/b1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentTouchController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_117
    :goto_117
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->clear()V

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->clearState()V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_RECENTS_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onDragStart(ZF)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDragStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " startDisplacement: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", controller="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancel()V

    :cond_3f
    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_RECENTS_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->clear()V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    return-void

    :cond_53
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelAllAnimationIfNeed()V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p2, :cond_72

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->endOveriewToNormalAnim()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->endGridAnimOfBackgroundToOverview()V

    :cond_72
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mOverviewInteractionCompleted:Z

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p2

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->hideZoomWindow(I)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x1

    const/high16 v1, 0x100000

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p2, :cond_9e

    invoke-virtual {p2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/QuickstepTransitionManager;->cancelContentViewAnim()V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->updateSreenHeight(I)V

    :cond_9e
    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p2}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->clear()V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p2, p0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initState()V

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoOverviewCancel:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartOverview:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mIsFoldScreenExpanded:Z

    return-void
.end method

.method public onFoldStateChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelAllAnimationIfNeed()V

    return-void
.end method

.method public onMotionPauseChanged(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimatingToOverViewFlag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseChangedFlag:Z

    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-ne p1, v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionPauseChanged: "

    const-string v3, ", mGoingToOverview="

    invoke-static {v2, p1, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoingToOverview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSwipeTranslateInit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    invoke-static {v2, v3, v0}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updatePaused(Z)V

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-eqz p1, :cond_7d

    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoingToOverview:Z

    if-nez p1, :cond_7d

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isAssistantScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_49

    sget-object p1, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/LauncherActivityInterface;->removeApplyStateRunnable()V

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->changeAssistScreenStatus()V

    :cond_49
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->goOverviewVibrate()V

    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    if-nez p1, :cond_61

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initDragParam(Landroid/graphics/PointF;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoPeekPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_61
    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    if-nez p1, :cond_7b

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelAnimationIfNeed()V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->setAllowCancel(Z)V

    :cond_7b
    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    :cond_7d
    return-void
.end method

.method public onMotionPauseDetected()V
    .registers 1

    return-void
.end method
