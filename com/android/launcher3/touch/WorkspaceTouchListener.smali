.class public Lcom/android/launcher3/touch/WorkspaceTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final STATE_CANCELLED:I = 0x0

.field private static final STATE_COMPLETED:I = 0x3

.field private static final STATE_PENDING_PARENT_INFORM:I = 0x2

.field private static final STATE_REQUESTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WorkspaceTouchListener"


# instance fields
.field private mDownUptimeMillion:J

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mLongPressState:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchDownPoint:Landroid/graphics/PointF;

.field private final mTouchSlop:F

.field private final mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/Workspace;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mDownUptimeMillion:J

    iput-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchSlop:F

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private canHandleLongPress()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->allowToToggleBar(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private cancelLongPress()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "WorkspaceTouchListener"

    iget-object v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-nez v1, :cond_50

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v2, "is_double_click_lock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_50

    :cond_2c
    :try_start_2c
    const-string/jumbo p1, "onDoubleTap, goToSleep"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_46

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_46} :catch_48

    :cond_46
    const/4 p0, 0x1

    return p0

    :catch_48
    move-exception p0

    const-string/jumbo p1, "onDoubleTap error, "

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_50
    :goto_50
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 9

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SimpleGuidPageManager;->isPageCalled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SimpleGuidPageManager;->callPage(Landroid/content/Context;I)Z

    :cond_26
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v2, "WorkspaceTouchListener"

    if-eqz v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLongPress  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mDownUptimeMillion:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-gez p1, :cond_61

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_60

    const-string p0, "ActionDown event is too close, ignore long press!!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-void

    :cond_61
    iget p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    if-ne p1, v1, :cond_d0

    const-string p1, "Main"

    const-string v2, "Workspace.longPress"

    invoke-static {p1, v2}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->canHandleLongPress()Z

    move-result p1

    if-eqz p1, :cond_cd

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WORKSPACE_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_d0

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_d0

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p1

    if-nez p1, :cond_d0

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/LauncherAssetManager;->reloadCategoryMapIfNeeded()V

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    const/16 v0, 0x45

    const-wide/16 v1, 0x32

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    iget-object p0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const-string p1, "long_click"

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Lcom/android/statistics/LauncherStatistics;->statsEnterToggleBarState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d0

    :cond_cd
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    :cond_d0
    :goto_d0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const-string v0, "WorkspaceTouchListener"

    const/4 v1, 0x1

    if-nez p1, :cond_95

    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->canHandleLongPress()Z

    move-result p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mDownUptimeMillion:J

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "ACTION_DOWN mDownUptimeMillion = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mDownUptimeMillion:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    :cond_78
    if-eqz p1, :cond_89

    iput v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_89
    iget-object p0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, p2}, Lcom/android/launcher/OplusPagedViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-string/jumbo p0, "onTouch: handleLongPress"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_95
    iget v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_a8

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p2}, Lcom/android/launcher/OplusPagedViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setAction(I)V

    iput v4, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    :cond_a8
    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_be

    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_be

    move v2, v1

    goto :goto_bf

    :cond_be
    const/4 v2, 0x0

    :goto_bf
    iget v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    if-ne v6, v4, :cond_c4

    goto :goto_f8

    :cond_c4
    if-ne v6, v1, :cond_fa

    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, p2}, Lcom/android/launcher/OplusPagedViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v6

    if-eqz v6, :cond_d7

    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    goto :goto_f8

    :cond_d7
    if-ne p1, v3, :cond_f8

    iget-object v3, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v3, v6}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    iget v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchSlop:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_f8

    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    :cond_f8
    :goto_f8
    move v3, v1

    goto :goto_fb

    :cond_fa
    move v3, v2

    :goto_fb
    if-eq p1, v1, :cond_100

    const/4 v6, 0x6

    if-ne p1, v6, :cond_11b

    :cond_100
    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v6

    if-nez v6, :cond_11b

    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    if-eqz v6, :cond_11b

    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, p2}, Lcom/android/launcher3/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    :cond_11b
    if-eq p1, v1, :cond_11f

    if-ne p1, v4, :cond_14d

    :cond_11f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_139

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP or ACTION_CANCEL, ev = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_139
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_14d

    if-ne p1, v4, :cond_14d

    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher/OplusPagedViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_14d
    if-ne p1, v1, :cond_19b

    if-eqz v2, :cond_19b

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget v0, v5, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget p2, p2, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p2

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_CLOSE_TAP_OUTSIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_19b
    return v3
.end method
