.class public abstract Lcom/android/quickstep/AbsSwipeUpHandler;
.super Lcom/android/quickstep/SwipeUpAnimationLogic;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TS;>;Q:",
        "Lcom/android/quickstep/views/RecentsView;",
        "S::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TS;>;>",
        "Lcom/android/quickstep/SwipeUpAnimationLogic;",
        "Landroid/view/View$OnApplyWindowInsetsListener;",
        "Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;"
    }
.end annotation


# static fields
.field private static final GESTURE_TO_GRID_RECNETS_DURATION:J = 0x320L

.field private static final GESTURE_TO_GRID_RECNETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final HOME_DURATION:J = 0xfaL

.field private static final LAUNCHER_UI_STATES:I

.field private static final LOG_NO_OP_PAGE_INDEX:I = -0x1

.field private static final MAX_QUICK_SWITCH_RECENTS_SCALE_PROGRESS:F = 0.07f

.field public static final MAX_SWIPE_DURATION:J = 0x15eL

.field public static final MIN_PROGRESS_FOR_OVERVIEW:F = 0.7f

.field public static final RECENTS_ATTACH_DURATION:J = 0x12cL

.field private static final SCREENSHOT_CAPTURED_EVT:Ljava/lang/String; = "ScreenshotCaptured"

.field public static final STATE_APP_CONTROLLER_RECEIVED:I

.field public static final STATE_CAPTURE_SCREENSHOT:I

.field public static final STATE_CURRENT_TASK_FINISHED:I

.field private static final STATE_FINISH_WITH_NO_END:I

.field public static final STATE_GESTURE_CANCELLED:I

.field public static final STATE_GESTURE_COMPLETED:I

.field public static final STATE_GESTURE_STARTED:I

.field public static final STATE_HANDLER_INVALIDATED:I

.field public static final STATE_LAUNCHER_BIND_TO_SERVICE:I

.field public static final STATE_LAUNCHER_DRAWN:I

.field public static final STATE_LAUNCHER_PRESENT:I

.field public static final STATE_LAUNCHER_STARTED:I

.field private static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_RESUME_LAST_TASK:I

.field public static final STATE_SCALED_CONTROLLER_HOME:I

.field public static final STATE_SCALED_CONTROLLER_RECENTS:I

.field public static final STATE_SCREENSHOT_CAPTURED:I

.field public static final STATE_SCREENSHOT_VIEW_SHOWN:I

.field public static final STATE_START_NEW_TASK:I

.field private static final SWIPE_DURATION_MULTIPLIER:F

.field private static final TAG:Ljava/lang/String; = "AbsSwipeUpHandler"


# instance fields
.field public isInfloatingWindow:Z

.field public mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

.field public final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field public final mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field public mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

.field public mCanceled:Z

.field public mClosingAppUserId:I

.field public mClosingPkg:Ljava/lang/String;

.field private mContinuingLastGesture:Z

.field public final mCustomOnDeferredCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDividerAnimator:Landroid/animation/ValueAnimator;

.field private mDownPos:Landroid/graphics/PointF;

.field public mGestureEndCallback:Ljava/lang/Runnable;

.field public mGestureStarted:Z

.field private mHasEndedLauncherTransition:Z

.field private mHasMotionEverBeenPaused:Z

.field public final mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

.field public mIsLikelyToStartNewTask:Z

.field public mIsMotionPaused:Z

.field public mIsSwipingPipToHome:Z

.field private mLauncherFrameDrawnTime:J

.field public mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

.field public final mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

.field private mLogDirectionUpOrLeft:Z

.field private final mOnDeferredActivityLaunch:Ljava/lang/Runnable;

.field private final mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public mParallelRunningAnim:Landroid/animation/Animator;

.field public mPassedOverviewThreshold:Z

.field public mPendingApplyLoadPlanMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingOpts:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mQuickSwitchScaleScrollThreshold:F

.field public mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

.field public mRecentsView:Lcom/android/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TQ;"
        }
    .end annotation
.end field

.field public mRecentsViewScrollLinked:Z

.field public mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

.field public mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field public mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

.field public final mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

.field public final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field public mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field public mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mToHomeProgress:F

.field private final mTouchTimeMs:J

.field public mWasLauncherAlreadyVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "STATE_LAUNCHER_PRESENT"

    invoke-static {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    const/4 v1, 0x1

    const-string v2, "STATE_LAUNCHER_STARTED"

    invoke-static {v1, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    const/4 v2, 0x2

    const-string v3, "STATE_LAUNCHER_DRAWN"

    invoke-static {v2, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    const/4 v3, 0x3

    const-string v4, "STATE_LAUNCHER_BIND_TO_SERVICE"

    invoke-static {v3, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    const/4 v4, 0x4

    const-string v5, "STATE_APP_CONTROLLER_RECEIVED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    const/4 v4, 0x5

    const-string v5, "STATE_SCALED_CONTROLLER_HOME"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    const/4 v4, 0x6

    const-string v5, "STATE_SCALED_CONTROLLER_RECENTS"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    const/4 v4, 0x7

    const-string v5, "STATE_HANDLER_INVALIDATED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    const/16 v4, 0x8

    const-string v5, "STATE_GESTURE_STARTED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    const/16 v4, 0x9

    const-string v5, "STATE_GESTURE_CANCELLED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    const/16 v4, 0xa

    const-string v5, "STATE_GESTURE_COMPLETED"

    invoke-static {v4, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    const/16 v5, 0xb

    const-string v6, "STATE_CAPTURE_SCREENSHOT"

    invoke-static {v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    const/16 v5, 0xc

    const-string v6, "STATE_SCREENSHOT_CAPTURED"

    invoke-static {v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    const/16 v5, 0xd

    const-string v6, "STATE_SCREENSHOT_VIEW_SHOWN"

    invoke-static {v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    const/16 v5, 0xe

    const-string v6, "STATE_RESUME_LAST_TASK"

    invoke-static {v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    const/16 v5, 0xf

    const-string v6, "STATE_START_NEW_TASK"

    invoke-static {v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    const/16 v5, 0x10

    const-string v6, "STATE_CURRENT_TASK_FINISHED"

    invoke-static {v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    const/16 v5, 0x11

    const-string v6, "STATE_FINISH_WITH_NO_END"

    invoke-static {v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->getFlagForIndex(ILjava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->LAUNCHER_UI_STATES:I

    const v0, 0x3fb6db6e

    const v1, 0x40555555

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/android/quickstep/AbsSwipeUpHandler;->SWIPE_DURATION_MULTIPLIER:F

    new-instance v0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;

    new-array v1, v4, [F

    fill-array-data v1, :array_d0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;-><init>([F)V

    sput-object v0, Lcom/android/quickstep/AbsSwipeUpHandler;->GESTURE_TO_GRID_RECNETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void

    :array_d0
    .array-data 4
        0x3d6147ae  # 0.055f
        0x3dc1f213  # 0.0947f
        0x3e439581  # 0.191f
        0x3e932618  # 0.2874f
        0x3ea68db9  # 0.3253f
        0x3ba3d70a  # 0.005f
        0x3f045a1d  # 0.517f
        0x3f2fdf3b  # 0.687f
        0x3f7b22d1  # 0.981f
        0x3f7d6388  # 0.9898f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .registers 16

    invoke-direct {p0, p1, p2, p4}, Lcom/android/quickstep/SwipeUpAnimationLogic;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/quickstep/i;

    invoke-direct {p2, p0}, Lcom/android/quickstep/i;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    sget-object v0, Lcom/android/quickstep/j;->a:Lcom/android/quickstep/j;

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    iput-boolean p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->isInfloatingWindow:Z

    new-instance v1, Lcom/android/quickstep/n;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnDeferredActivityLaunch:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mToHomeProgress:F

    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$2;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCustomOnDeferredCallback:Ljava/util/function/Consumer;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$7;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$7;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p4}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p4

    iput-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v0, Lcom/android/quickstep/h;

    invoke-direct {v0, p0, p2}, Lcom/android/quickstep/h;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {p4, v0}, Lcom/android/quickstep/BaseActivityInterface;->createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_70

    :cond_6a
    new-instance v0, Lcom/android/launcher3/model/u0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/u0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/content/Context;)V

    goto :goto_75

    :cond_70
    :goto_70
    new-instance v0, Lcom/android/launcher/folder/download/model/a;

    invoke-direct {v0, p1}, Lcom/android/launcher/folder/download/model/a;-><init>(Landroid/content/Context;)V

    :goto_75
    move-object v2, v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/android/quickstep/p;

    invoke-direct {v4, p0, p2}, Lcom/android/quickstep/p;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    new-instance v5, Lcom/android/quickstep/util/InputProxyHandlerFactory;

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {v5, p4, p2}, Lcom/android/quickstep/util/InputProxyHandlerFactory;-><init>(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/GestureState;)V

    move-object v3, p8

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/quickstep/util/InputConsumerProxy;->createInstance(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/lang/Runnable;Ljava/util/function/Supplier;Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/util/InputConsumerProxy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    iput-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iput-wide p5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTouchTimeMs:J

    iput-boolean p7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070d7a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mQuickSwitchScaleScrollThreshold:F

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initAfterSubclassConstructor()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initStateCallbacks()V

    return-void
.end method

.method public static synthetic A(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$38(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    return-void
.end method

.method public static synthetic B(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$startNewTask$27(Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$39(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    return-void
.end method

.method public static synthetic D(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onDeferredActivityLaunch$16()V

    return-void
.end method

.method public static synthetic E(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onLauncherPresentAndGestureStarted$15()V

    return-void
.end method

.method public static synthetic F(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherBindToService()V

    return-void
.end method

.method public static synthetic G(Lcom/android/quickstep/AbsSwipeUpHandler;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$endLauncherTransitionController$28(F)F

    move-result p0

    return p0
.end method

.method public static synthetic H(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;ZILjava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$startNewTask$41(Ljava/util/function/Consumer;ZILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic I(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToRecents$32()V

    return-void
.end method

.method public static synthetic J(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToHome$34()V

    return-void
.end method

.method public static synthetic K(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onLauncherStart$13(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic L(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->continueComputingRecentsScrollIfNecessary()V

    return-void
.end method

.method public static synthetic M(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->startNewTask()V

    return-void
.end method

.method public static synthetic N(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/graphics/RectF;F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$setupWindowAnimation$26(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static synthetic O(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$setupLauncherUiAfterSwipeUpToRecentsAnimation$36()V

    return-void
.end method

.method public static synthetic P(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$37(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic Q(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onLauncherStart$14()V

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$initStateCallbacks$9(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onGestureEnded$18(FZLandroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic T(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$handleNormalGestureEnd$22()V

    return-void
.end method

.method public static synthetic U(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$switchToScreenshot$30(IZ)V

    return-void
.end method

.method public static synthetic V(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherPresentAndGestureStarted()V

    return-void
.end method

.method public static synthetic W(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$initStateCallbacks$10(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic X()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$initStateCallbacks$4()V

    return-void
.end method

.method public static synthetic Y(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->invalidateHandler()V

    return-void
.end method

.method public static synthetic Z(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onActivityInit$12()V

    return-void
.end method

.method public static synthetic a0(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$initStateCallbacks$7(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/quickstep/AbsSwipeUpHandler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasMotionEverBeenPaused:Z

    return p1
.end method

.method public static synthetic b0(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$handleTaskAppeared$20(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method private buildAnimationController()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "AbsSwipeUpHandler"

    const-string v2, "buildAnimationController()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->canCreateNewOrUpdateExistingLauncherTransitionController()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v2, :cond_1a

    const-string p0, "mActivity is null"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->createActivityInterface(J)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->setIgnoreBackgroundState(Z)V

    return-void
.end method

.method public static synthetic c0(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$animateToProgressInternal$25(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calculateWindowRotation(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/RecentsOrientedState;)I
    .registers 3

    iget p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    if-eqz p0, :cond_11

    sget-boolean p1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_11

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    const/4 p1, 0x3

    :cond_10
    return p1

    :cond_11
    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result p0

    return p0
.end method

.method private continueComputingRecentsScrollIfNecessary()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->hasState(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_28

    new-instance v1, Lcom/android/quickstep/p;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/p;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_28
    return-void
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$handleNormalGestureEnd$21()V

    return-void
.end method

.method public static synthetic d0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->invalidateHandlerWithLauncher()V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initializeLauncherAnimationController()V

    return-void
.end method

.method public static synthetic f(ZLandroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$setDividerShown$42(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$initStateCallbacks$5()V

    return-void
.end method

.method private static getFlagForIndex(ILjava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_NAMES:[Ljava/lang/String;

    aput-object p1, v0, p0

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method

.method private getKeepClearAreaForHotseat()Landroid/graphics/Rect;
    .registers 5

    sget-boolean v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->ENABLE_PIP_KEEP_CLEAR_ALGORITHM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-direct {v0, v1, v1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v0, v1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5c

    :cond_27
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_3d

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int v3, v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v0, v3, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5c

    :cond_3d
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int v3, v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5c

    :cond_4d
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int v3, v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_5c
    return-object v0
.end method

.method private getScaleProgressDueToScroll()F
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_74

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-nez v1, :cond_15

    goto :goto_74

    :cond_15
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v2

    add-int/2addr v2, v0

    const v0, 0x3d8f5c29  # 0.07f

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mQuickSwitchScaleScrollThreshold:F

    cmpg-float p0, v1, v3

    if-gez p0, :cond_61

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    goto :goto_73

    :cond_61
    int-to-float p0, v2

    sub-float v2, p0, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_73

    sub-float v2, p0, v3

    const/4 v5, 0x0

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    move v3, p0

    move v4, v0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    :cond_73
    :goto_73
    return v0

    :cond_74
    :goto_74
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic h(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->launcherFrameDrawn()V

    return-void
.end method

.method private handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V
    .registers 23
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p2

    move-object/from16 v7, p3

    move/from16 v1, p4

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    move/from16 v3, p1

    invoke-virtual {v0, v7, v3, v8, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->calculateEndTarget(Landroid/graphics/PointF;FZZ)Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNormalGestureEnd: endTarget = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AbsSwipeUpHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v5}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {v3, v6}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    if-eqz v3, :cond_3a

    invoke-virtual {v3, v1, v6, v8}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->handleNormalGestureEnd(ZLcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    :cond_3a
    iget-boolean v1, v6, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    const/high16 v1, 0x3f800000  # 1.0f

    move v9, v1

    goto :goto_44

    :cond_43
    move v9, v3

    :goto_44
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_7f

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isCameraPreopencloseEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_7f

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "com.oplus.camera"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v6, v1, :cond_78

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v1, :cond_7f

    :cond_78
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v10, Lcom/android/quickstep/c;->b:Lcom/android/quickstep/c;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7f
    const-wide/16 v10, 0x15e

    if-nez v8, :cond_9a

    sub-float v1, v9, v2

    const/high16 v3, 0x43af0000  # 350.0f

    mul-float/2addr v1, v3

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->SWIPE_DURATION_MULTIPLIER:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move v1, v2

    goto :goto_d5

    :cond_9a
    invoke-static {}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a2

    move v1, v2

    goto :goto_b8

    :cond_a2
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget-object v12, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v1, v12

    iget v12, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v12, v12

    div-float/2addr v1, v12

    sub-float v1, v2, v1

    iget v12, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-static {v1, v3, v12}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    :goto_b8
    iget v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    if-lez v3, :cond_d4

    sub-float v2, v9, v2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v12, 0x2

    mul-long/2addr v2, v12

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_d5

    :cond_d4
    move-wide v12, v10

    :goto_d5
    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v2, v6}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    iget-object v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-interface {v2, v3}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    if-eqz v2, :cond_e6

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    goto :goto_ef

    :cond_e6
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v2, :cond_ed

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    goto :goto_ef

    :cond_ed
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    :goto_ef
    iget-boolean v3, v6, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    const/4 v14, 0x3

    if-eqz v3, :cond_fc

    new-instance v3, Lcom/android/quickstep/o;

    invoke-direct {v3, v0, v14}, Lcom/android/quickstep/o;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    :cond_fc
    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v15, 0x1

    if-ne v6, v3, :cond_130

    iget-object v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v5, v4, Lcom/android/launcher/Launcher;

    if-eqz v5, :cond_123

    check-cast v4, Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->isAssistantScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_123

    iget-object v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v5, :cond_123

    check-cast v4, Lcom/android/launcher/LauncherCallbacksImp;

    const-string/jumbo v5, "swipe_up_to_home"

    invoke-virtual {v4, v5}, Lcom/android/launcher/LauncherCallbacksImp;->onGestureSwipeUp(Ljava/lang/String;)V

    :cond_123
    const-wide/16 v4, 0xfa

    iget-object v10, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v10, :cond_12c

    invoke-virtual {v10, v15}, Lcom/android/quickstep/RecentsAnimationController;->detachNavigationBarFromApp(Z)V

    :cond_12c
    :goto_12c
    move-wide v12, v4

    :cond_12d
    :goto_12d
    move-object v5, v2

    goto/16 :goto_20c

    :cond_130
    sget-object v5, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v5, :cond_1fd

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v5, v2, Lcom/android/launcher/Launcher;

    if-eqz v5, :cond_156

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->isAssistantScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_156

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v2

    instance-of v5, v2, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v5, :cond_156

    check-cast v2, Lcom/android/launcher/LauncherCallbacksImp;

    const-string/jumbo v5, "swipe_up_to_recents"

    invoke-virtual {v2, v5}, Lcom/android/launcher/LauncherCallbacksImp;->onGestureSwipeUp(Ljava/lang/String;)V

    :cond_156
    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->GESTURE_TO_RECNETS:Landroid/view/animation/Interpolator;

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_163

    const-wide/16 v12, 0x320

    sget-object v2, Lcom/android/quickstep/AbsSwipeUpHandler;->GESTURE_TO_GRID_RECNETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_164

    :cond_163
    move-wide v12, v10

    :goto_164
    iget-object v5, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v5, :cond_12d

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_179

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v11, "RecentsView destination page is invalid"

    invoke-static {v4, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_179
    iget-object v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v4

    if-eq v4, v5, :cond_1cc

    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v10, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v10}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v10

    iget v10, v10, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eq v10, v15, :cond_1a6

    iget-object v10, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne v4, v14, :cond_1a4

    goto :goto_1a6

    :cond_1a4
    const/4 v4, 0x0

    goto :goto_1a7

    :cond_1a6
    :goto_1a6
    move v4, v15

    :goto_1a7
    iget-object v10, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v10, v10, Lcom/android/quickstep/views/RecentsView;->recentsViewOffsetXSpring:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    invoke-virtual {v10}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->isSpringAnimationRunning()Z

    move-result v10

    if-eqz v10, :cond_1c1

    if-eqz v4, :cond_1c1

    iget-object v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toIntExact(J)I

    move-result v10

    invoke-virtual {v4, v5, v10}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    goto :goto_1ca

    :cond_1c1
    iget-object v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v12, v13}, Ljava/lang/Math;->toIntExact(J)I

    move-result v10

    invoke-virtual {v4, v5, v10}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    :goto_1ca
    move v5, v15

    goto :goto_1cd

    :cond_1cc
    const/4 v5, 0x0

    :goto_1cd
    iget-object v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v4

    int-to-long v10, v4

    const-wide/16 v16, 0x15e

    cmp-long v4, v10, v16

    if-lez v4, :cond_1ea

    iget-object v4, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v5

    const/16 v10, 0x15e

    invoke-virtual {v4, v5, v10}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    goto :goto_1eb

    :cond_1ea
    move v15, v5

    :goto_1eb
    iget-object v4, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->isHandlingAtomicEvent()Z

    move-result v4

    if-eqz v4, :cond_1f5

    if-eqz v15, :cond_12d

    :cond_1f5
    const-wide/16 v4, 0x15e

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto/16 :goto_12d

    :cond_1fd
    move-wide v4, v10

    sget-object v10, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v10, :cond_204

    goto/16 :goto_12c

    :cond_204
    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v4, :cond_12d

    const-wide/16 v4, 0xf5

    goto/16 :goto_12c

    :goto_20c
    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v2, :cond_236

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v2, :cond_22a

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_222

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_22a

    :cond_222
    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v4, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v2, v4}, Lcom/android/quickstep/GestureState;->setState(I)V

    goto :goto_23d

    :cond_22a
    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v4, Lcom/android/quickstep/n;

    const/4 v10, 0x5

    invoke-direct {v4, v0, v10}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_23d

    :cond_236
    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v4, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v2, v4}, Lcom/android/quickstep/GestureState;->setState(I)V

    :goto_23d
    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v2, Lcom/android/launcher3/Launcher;

    if-ne v6, v3, :cond_24b

    if-eqz v2, :cond_248

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_25e

    :cond_248
    sget-object v2, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    goto :goto_25e

    :cond_24b
    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v3, :cond_257

    if-eqz v2, :cond_254

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    goto :goto_25e

    :cond_254
    sget-object v2, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    goto :goto_25e

    :cond_257
    if-eqz v2, :cond_25c

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    goto :goto_25e

    :cond_25c
    sget-object v2, Lcom/android/quickstep/fallback/RecentsState;->BACKGROUND_APP:Lcom/android/quickstep/fallback/RecentsState;

    :goto_25e
    invoke-static {v2}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    move-object/from16 v0, p0

    move v2, v9

    move-wide v3, v12

    move-object/from16 v7, p3

    move/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private handleRecentsAttachedToWindowStable()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNonPendingApplyData()Z

    move-result v0

    const-string v1, "handleRecentsAttachedToWindowStable,nonPendingApplyData="

    const-string v2, ",RecentsView="

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsSwipeUpHandler"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_24

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateUseAbsoluteScrollX(Z)V

    :cond_24
    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$40()V

    return-void
.end method

.method private initializeLauncherAnimationController()V
    .registers 7

    const-string v0, "QuickStep"

    const-string v1, "AbsSwipeUpHandler"

    const-string v2, "initializeLauncherAnimationController()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->buildAnimationController()V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "logToggleRecents"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherFrameDrawnTime:J

    iget-wide v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTouchTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/shared/system/LatencyTrackerCompat;->logToggleRecents(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    return-void
.end method

.method private invalidateHandler()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "AbsSwipeUpHandler"

    const-string v2, "invalidateHandler()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_2f

    :cond_24
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V

    :cond_2f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->unregisterCallback()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method

.method private invalidateHandlerWithLauncher()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const-string v1, "AbsSwipeUpHandler"

    const-string v2, "QuickStep"

    if-nez v0, :cond_e

    const-string p0, "invalidateHandlerWithLauncher() do nothing, because mRecentsView is null !"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v0, "invalidateHandlerWithLauncher()"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationEnd()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    return-void
.end method

.method private static isNotInRecents(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    if-nez v0, :cond_c

    iget p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static synthetic j(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$new$3()V

    return-void
.end method

.method public static synthetic k(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToHome$35()V

    return-void
.end method

.method public static synthetic l(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$new$1(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$animateToProgress$24(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private synthetic lambda$animateToProgressInternal$25(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    return-void
.end method

.method private synthetic lambda$endLauncherTransitionController$28(F)F
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$finishCurrentTransitionToHome$34()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private synthetic lambda$finishCurrentTransitionToHome$35()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private synthetic lambda$finishCurrentTransitionToRecents$32()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private synthetic lambda$finishCurrentTransitionToRecents$33()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private static synthetic lambda$handleNormalGestureEnd$21()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/AbsSwipeUpHandler;->preCloseCamera()V

    return-void
.end method

.method private synthetic lambda$handleNormalGestureEnd$22()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onSetupInputProxy()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/InputConsumerProxy;->enable(Z)V

    return-void
.end method

.method private synthetic lambda$handleNormalGestureEnd$23()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/GestureState;->setState(I)V

    return-void
.end method

.method private synthetic lambda$handleTaskAppeared$20(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 4

    iget v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result v1

    if-eq v0, v1, :cond_17

    iget p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastStartedSecondTaskId()I

    move-result p0

    if-ne p1, p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private synthetic lambda$initStateCallbacks$10(Ljava/lang/Boolean;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    :cond_d
    return-void
.end method

.method private static synthetic lambda$initStateCallbacks$4()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->setInPreStageOfGestureRecentsAnimation(Z)V

    return-void
.end method

.method private static synthetic lambda$initStateCallbacks$5()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->setInPreStageOfGestureRecentsAnimation(Z)V

    return-void
.end method

.method private static synthetic lambda$initStateCallbacks$6()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->setInPreStageOfGestureRecentsAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$initStateCallbacks$7(Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleRecentsAttachedToWindowStable()V

    return-void
.end method

.method private synthetic lambda$initStateCallbacks$8(Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleRecentsAttachedToWindowStable()V

    return-void
.end method

.method private synthetic lambda$initStateCallbacks$9(Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleRecentsAttachedToWindowStable()V

    return-void
.end method

.method private static synthetic lambda$isNonPendingApplyData$43(Ljava/util/Map$Entry;)Ljava/lang/Boolean;
    .registers 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$linkRecentsViewScroll$37(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 2

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    return-void
.end method

.method private synthetic lambda$linkRecentsViewScroll$38(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    return-void
.end method

.method private synthetic lambda$linkRecentsViewScroll$39(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 3

    new-instance v0, Lcom/android/quickstep/j0;

    invoke-direct {v0, p1}, Lcom/android/quickstep/j0;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/quickstep/s;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$linkRecentsViewScroll$40()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    :cond_b
    return-void
.end method

.method private static synthetic lambda$new$0(J)V
    .registers 2

    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$2(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez p0, :cond_1f

    const-string p0, "AbsSwipeUpHandler"

    const-string/jumbo v0, "mRecentsView is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$3()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    return-void
.end method

.method private synthetic lambda$onActivityInit$11()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_26

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_26

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentGestureState()Lcom/android/quickstep/GestureState;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentGestureState()Lcom/android/quickstep/GestureState;

    move-result-object v0

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->hasState(I)Z

    move-result v0

    if-nez v0, :cond_26

    const-string p0, "QuickStep"

    const-string v0, "AbsSwipeUpHandler"

    const-string v1, "current is new Gesture, not to cleanupScreenshot"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    goto :goto_38

    :cond_2e
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    :cond_38
    :goto_38
    return-void
.end method

.method private synthetic lambda$onActivityInit$12()V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->consumeRecentsAnimationCanceledSnapshot()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_1a

    new-instance v2, Lcom/android/quickstep/o;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/o;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onRecentsAnimationComplete()V

    :cond_1a
    return-void
.end method

.method private synthetic lambda$onAnimatorPlaybackControllerCreated$17()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateLauncherTransitionProgress()V

    return-void
.end method

.method private synthetic lambda$onDeferredActivityLaunch$16()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$onGestureEnded$18(FZLandroid/graphics/PointF;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method private synthetic lambda$onLauncherPresentAndGestureStarted$15()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/RotationTouchHelper;->onEndTargetCalculated(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/BaseActivityInterface;)V

    return-void
.end method

.method private synthetic lambda$onLauncherStart$13(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 2

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    return-void
.end method

.method private synthetic lambda$onLauncherStart$14()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    new-instance v3, Lcom/android/quickstep/e;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/quickstep/e;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    :cond_29
    return-void
.end method

.method private synthetic lambda$onSettledOnEndTarget$19()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method private static synthetic lambda$setDividerShown$42(ZLandroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_8
    return-void
.end method

.method private synthetic lambda$setupLauncherUiAfterSwipeUpToRecentsAnimation$36()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    return-void
.end method

.method private synthetic lambda$setupWindowAnimation$26(Landroid/graphics/RectF;F)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget p1, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    return-void
.end method

.method private synthetic lambda$startNewTask$27(Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p0, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    :cond_11
    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {p0, p2, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method private synthetic lambda$startNewTask$41(Ljava/util/function/Consumer;ZILjava/lang/Boolean;)V
    .registers 6

    invoke-interface {p1, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_32

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startNewTask(), callback: success="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hasAppeared="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", taskId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AbsSwipeUpHandler"

    const-string v0, "QuickStep"

    invoke-static {p3, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p3, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p3, :cond_3e

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->updateStartingNewTaskId(I)V

    :cond_3e
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4a

    if-eqz p2, :cond_5b

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRestartPreviouslyAppearedTask()V

    goto :goto_5b

    :cond_4a
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onStartNewTaskFailed()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskFailed()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_5b

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method private synthetic lambda$switchToScreenshot$29(Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateThumbnail(IZ)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setScreenshotCapturedState()V

    :cond_b
    const-string/jumbo p1, "switchToScreenshot; single task updateThumbnail"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onThumbnailUpdateComplete(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$switchToScreenshot$30(IZ)V
    .registers 6

    const-string v0, "AbsSwipeUpHandler"

    const-string/jumbo v1, "switchToScreenshot; child thread start get TaskSnapshot"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_13

    const-string/jumbo p1, "switchToScreenshot; first mRecentsAnimationController is null"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onThumbnailUpdateComplete(Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->screenshotGroupTask(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_25

    const-string/jumbo p1, "switchToScreenshot; second mRecentsAnimationController is null"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onThumbnailUpdateComplete(Ljava/lang/String;)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_4b

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/o;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/o;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p2, :cond_44

    invoke-virtual {p2, p1}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_44
    const-string/jumbo p1, "switchToScreenshot; EndTarget is HOME"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onThumbnailUpdateComplete(Ljava/lang/String;)V

    goto :goto_64

    :cond_4b
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_5e

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/b;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/quickstep/b;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_64

    :cond_5e
    const-string/jumbo p1, "switchToScreenshot; EndTarget no HOME"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onThumbnailUpdateComplete(Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method private synthetic lambda$updateThumbnail$31()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private launcherFrameDrawn()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherFrameDrawnTime:J

    return-void
.end method

.method public static synthetic m(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$new$0(J)V

    return-void
.end method

.method public static synthetic n(Ljava/util/Map$Entry;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$isNonPendingApplyData$43(Ljava/util/Map$Entry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private notifyGestureStartedAsync()V
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_9

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_9
    return-void
.end method

.method public static synthetic o(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$animateToProgress$24(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private onDeferredActivityLaunch()V
    .registers 5

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/quickstep/l;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/BaseActivityInterface;->switchRunningTaskViewToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    goto :goto_1b

    :cond_15
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    :goto_1b
    return-void
.end method

.method private onLauncherBindToService()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    return-void
.end method

.method private onLauncherPresentAndGestureStarted()V
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupRecentsViewUi()V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnDeferredActivityLaunch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$4;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->setRecentInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    new-instance v2, Lcom/android/quickstep/m;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/m;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureStartedAsync()V

    return-void
.end method

.method public static synthetic p(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$updateThumbnail$31()V

    return-void
.end method

.method public static preCloseCamera()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    const-class v1, Landroid/hardware/camera2/IOplusCameraManager$Cmd;

    const-string v2, "CMD_PRE_CLOSE"

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/IOplusCameraManager$Cmd;

    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/camera2/OplusCameraManager;->sendOplusExtCamCmd(Landroid/content/Context;Landroid/hardware/camera2/IOplusCameraManager$Cmd;[I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    const-string v0, "AbsSwipeUpHandler"

    const-string/jumbo v1, "preCloseCamera error"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public static synthetic q(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onAnimatorPlaybackControllerCreated$17()V

    return-void
.end method

.method public static synthetic r(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onSettledOnEndTarget$19()V

    return-void
.end method

.method public static synthetic s(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$finishCurrentTransitionToRecents$33()V

    return-void
.end method

.method private setIsLikelyToStartNewTask(ZZ)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    if-eq v0, p1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsLikelyToStartNewTask: isLikelyToStartNewTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AbsSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    invoke-virtual {p0, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    :cond_2a
    return-void
.end method

.method private setupRecentsViewUi()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->setCurrentGestureState(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/MultiStateCallback;)V

    :cond_f
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureAnimationStartToRecents()V

    return-void
.end method

.method private setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    new-instance v2, Lcom/android/quickstep/k;

    invoke-direct {v2, p0}, Lcom/android/quickstep/k;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    aget-object v1, p1, v0

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$12;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$12;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz p0, :cond_1e

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    :cond_1e
    return-void
.end method

.method private startNewTask()V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    :goto_a
    new-instance v1, Lcom/android/quickstep/j2;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/j2;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->startNewTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$new$2(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$handleNormalGestureEnd$23()V

    return-void
.end method

.method public static synthetic v(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onActivityInit$11()V

    return-void
.end method

.method public static synthetic w()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$initStateCallbacks$6()V

    return-void
.end method

.method public static synthetic x(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onDeferredActivityLaunch()V

    return-void
.end method

.method public static synthetic y(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$initStateCallbacks$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic z(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$switchToScreenshot$29(Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V

    return-void
.end method


# virtual methods
.method public advanceHideDragLayerIfNeed()V
    .registers 1

    return-void
.end method

.method public animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 20
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->ensureAnimateToProgressInternalReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/oplus/quickstep/gesture/f;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 24
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    move-object v7, p0

    move/from16 v8, p1

    move-wide/from16 v2, p3

    move-object/from16 v9, p7

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState()V

    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget-object v4, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v4}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_40

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$8;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$8;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_40
    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v0, v1, :cond_103

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v12, 0x0

    if-eqz v0, :cond_64

    iget-object v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    move-object v13, v0

    goto :goto_65

    :cond_64
    move-object v13, v12

    :goto_65
    if-eqz v13, :cond_6c

    iget-object v0, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    goto :goto_71

    :cond_6c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_71
    move-object v1, v0

    if-eqz v13, :cond_7a

    iget-boolean v0, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz v0, :cond_7a

    move v4, v10

    goto :goto_7b

    :cond_7a
    move v4, v11

    :goto_7b
    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isPipActive()Z

    move-result v0

    if-nez v0, :cond_97

    if-eqz v13, :cond_97

    iget-boolean v0, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    if-eqz v0, :cond_97

    iget-object v0, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_97

    move v14, v10

    goto :goto_98

    :cond_97
    move v14, v11

    :goto_98
    move-object v0, p0

    move-wide/from16 v2, p3

    move v5, v14

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object v0

    iget-boolean v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForStagedSplit:Z

    if-nez v1, :cond_a8

    if-eqz v14, :cond_a8

    goto :goto_a9

    :cond_a8
    move v10, v11

    :goto_a9
    iput-boolean v10, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    if-eqz v10, :cond_b8

    invoke-virtual {p0, v0, v13, v8}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    move-result-object v1

    iput-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    aput-object v1, v2, v11

    goto :goto_c8

    :cond_b8
    iput-object v12, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {p0, v8, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v2

    aget-object v1, v2, v11

    new-instance v3, Lcom/android/quickstep/AbsSwipeUpHandler$9;

    invoke-direct {v3, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$9;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_c8
    array-length v1, v2

    new-array v1, v1, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    array-length v1, v2

    :goto_ce
    if-ge v11, v1, :cond_e5

    aget-object v3, v2, v11

    if-nez v3, :cond_d5

    goto :goto_e2

    :cond_d5
    iget-object v4, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v9}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Landroid/graphics/PointF;)V

    iget-object v4, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v3

    aput-object v3, v4, v11

    :goto_e2
    add-int/lit8 v11, v11, 0x1

    goto :goto_ce

    :cond_e5
    iget v1, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setSwipeVelocity(F)V

    iget v1, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    iput-object v12, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_14c

    iget-object v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    goto :goto_14c

    :cond_103
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    move/from16 v4, p2

    invoke-virtual {v1, v8, v4}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Lcom/android/keyguardservice/b;

    invoke-direct {v4, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$10;

    move-object/from16 v5, p6

    invoke-direct {v4, p0, v5}, Lcom/android/quickstep/AbsSwipeUpHandler$10;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_136

    iget-object v4, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    :cond_136
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    new-array v1, v10, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v0

    aput-object v0, v1, v11

    iput-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    :cond_14c
    :goto_14c
    return-void
.end method

.method public applyScrollAndTransform()V
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    iget-boolean v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v4, v3

    :goto_1a
    if-ge v2, v4, :cond_51

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v6

    if-eqz v6, :cond_35

    iget-object v7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v7, v7, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getScaleProgressDueToScroll()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-virtual {v6, v7, v8}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    :cond_35
    if-eqz v0, :cond_4e

    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    if-eqz v1, :cond_47

    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_47
    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_51
    return-void
.end method

.method public calculateEndTarget(Landroid/graphics/PointF;FZZ)Lcom/android/quickstep/GestureState$GestureEndTarget;
    .registers 12

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isHandlingAtomicEvent()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_19

    :goto_17
    move v0, v1

    goto :goto_2b

    :cond_19
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v3

    if-ltz v0, :cond_2a

    if-eq v3, v0, :cond_2a

    goto :goto_17

    :cond_2a
    move v0, v2

    :goto_2b
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    const v4, 0x3f333333  # 0.7f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_38

    move v3, v1

    goto :goto_39

    :cond_38
    move v3, v2

    :goto_39
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070d7c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_52

    move v4, v1

    goto :goto_53

    :cond_52
    move v4, v2

    :goto_53
    if-nez p3, :cond_94

    if-eqz p4, :cond_5b

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_dd

    :cond_5b
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result p1

    if-eqz p1, :cond_83

    if-eqz v0, :cond_6b

    if-eqz v4, :cond_6b

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_dd

    :cond_6b
    iget-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-eqz p1, :cond_73

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_dd

    :cond_73
    if-eqz v0, :cond_79

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_dd

    :cond_79
    if-nez v3, :cond_7f

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_dd

    :cond_7f
    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_dd

    :cond_83
    if-eqz v3, :cond_8c

    iget-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz p1, :cond_8c

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_dd

    :cond_8c
    if-eqz v0, :cond_91

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_dd

    :cond_91
    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_dd

    :cond_94
    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gez p3, :cond_9b

    move p3, v1

    goto :goto_9c

    :cond_9b
    move p3, v2

    :goto_9c
    if-eqz v0, :cond_ad

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_ad

    goto :goto_ae

    :cond_ad
    move v1, v2

    :goto_ae
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result p1

    if-eqz p1, :cond_bd

    if-eqz p3, :cond_bd

    if-nez v1, :cond_bd

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_dd

    :cond_bd
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result p1

    if-eqz p1, :cond_ca

    if-eqz p3, :cond_ca

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_dd

    :cond_ca
    if-eqz p3, :cond_d6

    if-nez v3, :cond_d3

    if-eqz v1, :cond_d3

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_dd

    :cond_d3
    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_dd

    :cond_d6
    if-eqz v0, :cond_db

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_dd

    :cond_db
    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_dd
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOverviewDisabled()Z

    move-result p0

    if-eqz p0, :cond_f0

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p1, p0, :cond_ed

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, p0, :cond_f0

    :cond_ed
    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_f0
    return-object p1
.end method

.method public canCreateNewOrUpdateExistingLauncherTransitionController()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_10

    iget-boolean p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasEndedLauncherTransition:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public cancelCurrentAnimation()V
    .registers 3

    const-string v0, "AbsSwipeUpHandler"

    const-string v1, "cancelCurrentAnimation()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->unregisterCallback()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method

.method public cancelRunningWindowAnimWithoutEnd()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "AbsSwipeUpHandler"

    const-string v2, "cancelRunningWindowAnimWithoutEnd()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz p0, :cond_1b

    array-length v0, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1b

    aget-object v2, p0, v1

    if-eqz v2, :cond_18

    invoke-interface {v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->cancelWithoutEndAnim()V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method public checkPendingProgress(ILjava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    if-nez p2, :cond_4

    return p1

    :cond_4
    iget p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mToHomeProgress:F

    const/4 p2, 0x0

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_c

    return p1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public computeRecentsScrollIfInvisible()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    :cond_f
    return-void
.end method

.method public abstract createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;JZZ",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            ")",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;"
        }
    .end annotation
.end method

.method public createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-object p1
.end method

.method public createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const-string v4, "AbsSwipeUpHandler"

    if-nez v3, :cond_13

    const-string v0, "AbsSwipeUpHandler--createWindowAnimationToPip(), mRecentsView == null"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_13
    iget-object v3, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->calculateWindowRotation(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/RecentsOrientedState;)I

    move-result v7

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOriRecentsActivityRotation()I

    move-result v5

    goto :goto_35

    :cond_31
    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v5

    :goto_35
    iget-object v8, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v8, v8

    new-array v8, v8, [Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateProgressForStartRectInPip([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;

    move-result-object v9

    aget-object v14, v9, v6

    aget-object v6, v8, v6

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v15, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getKeepClearAreaForHotseat()Landroid/graphics/Rect;

    move-result-object v13

    sget-object v8, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v9, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/quickstep/SystemUiProxy;

    iget-object v9, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    move v12, v5

    invoke-virtual/range {v8 .. v13}, Lcom/android/quickstep/SystemUiProxy;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_100

    const-string v9, "AbsSwipeUpHandler--createWindowAnimationToPip(), "

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", progress="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", start="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hToW="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wToH="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", windowRotation="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", homeRotation="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hotseatPx="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dBounds="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wBounds="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cRadius="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPipCornerRadius()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sRadius="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPipShadowRadius()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_100
    new-instance v2, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    invoke-direct {v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;-><init>()V

    iget-object v4, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setContext(Landroid/content/Context;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v2

    iget v4, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setTaskId(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v2

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setComponentName(Landroid/content/ComponentName;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setLeash(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v1

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setAppBounds(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setHomeToWindowPositionMap(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setStartBounds(Landroid/graphics/RectF;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPipCornerRadius()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setCornerRadius(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPipShadowRadius()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setShadowRadius(I)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setAttachedView(Landroid/view/View;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v5, :cond_171

    if-eq v7, v2, :cond_163

    const/4 v4, 0x3

    if-ne v7, v4, :cond_171

    :cond_163
    iget-object v4, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v7, v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->setFromRotation(Lcom/android/quickstep/util/TaskViewSimulator;ILandroid/graphics/Rect;)Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;

    :cond_171
    invoke-virtual {v1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$Builder;->build()Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$11;

    invoke-direct {v4, v0, v3}, Lcom/android/quickstep/AbsSwipeUpHandler$11;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v1, v4}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, v2, [Lcom/android/quickstep/util/RectFSpringAnim;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-object v1
.end method

.method public deferSetCapturedState()V
    .registers 1

    return-void
.end method

.method public doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V
    .registers 6
    .param p2  # Lcom/android/quickstep/views/TaskView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_65

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDownPos:Landroid/graphics/PointF;

    if-nez v0, :cond_d

    goto :goto_65

    :cond_d
    sget-object v0, Lcom/android/quickstep/AbsSwipeUpHandler$13;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    const/4 v2, 0x4

    if-eq v0, v2, :cond_24

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_33

    :cond_24
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_LEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_33

    :cond_2b
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_33

    :cond_2e
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_33

    :cond_31
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_33
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget v2, p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->containerType:I

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    if-eqz p2, :cond_50

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_50
    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p1, p2, :cond_5e

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez p0, :cond_59

    goto :goto_5e

    :cond_59
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 p0, -0x1

    :goto_5f
    invoke-interface {v1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    invoke-interface {v1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_65
    :goto_65
    return-void
.end method

.method public endLauncherTransitionController()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasEndedLauncherTransition:Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/a;

    invoke-direct {v1, p0}, Lcom/android/quickstep/a;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    :cond_23
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation()V

    :cond_2a
    return-void
.end method

.method public endRunningWindowAnim(Z)V
    .registers 5

    const-string v0, "endRunningWindowAnim: "

    const-string v1, "QuickStep"

    const-string v2, "AbsSwipeUpHandler"

    invoke-static {v0, p1, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    if-eqz v0, :cond_2a

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    array-length p1, v0

    :goto_11
    if-ge v1, p1, :cond_2a

    aget-object v2, v0, v1

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->cancel()V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    array-length p1, v0

    :goto_1e
    if-ge v1, p1, :cond_2a

    aget-object v2, v0, v1

    if-eqz v2, :cond_27

    invoke-interface {v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->end()V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_31
    return-void
.end method

.method public ensureAnimateToProgressInternalReady()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public finishCurrentTransitionToHome()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeFinishSwipeToHome()V

    new-instance v0, Lcom/android/quickstep/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/o;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsControllerToHome(Ljava/lang/Runnable;)V

    goto :goto_5d

    :cond_18
    :goto_18
    const-string v0, "finishCurrentTransitionToHome: mRecentsAnimationTargets: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecentsAnimationController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsSwipeUpHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationTargets;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_56

    const-string v0, "finishCurrentTransitionToHome: force finish recents animation, if controller isn\'t null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeFinishSwipeToHome()V

    new-instance v0, Lcom/android/quickstep/b1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsControllerToHome(Ljava/lang/Runnable;)V

    goto :goto_5d

    :cond_56
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    :goto_5d
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const/4 v1, 0x1

    const-string v2, "finishRecentsAnimation"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v1, :cond_6d

    const/4 v1, 0x0

    goto :goto_71

    :cond_6d
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    :goto_71
    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method public finishCurrentTransitionToRecents()V
    .registers 5

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_71

    invoke-virtual {p0, v1}, Lcom/android/quickstep/RecentsAnimationController;->detachNavigationBarFromApp(Z)V

    goto :goto_71

    :cond_18
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_23

    goto :goto_2d

    :cond_23
    new-instance v2, Lcom/android/quickstep/m;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/m;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    goto :goto_71

    :cond_2d
    :goto_2d
    const-string v0, "finishCurrentTransitionToRecents: mRecentsAnimationTargets: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRecentsAnimationController: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbsSwipeUpHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationTargets;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_6a

    const-string v0, "finishCurrentTransitionToRecents: force finish recents animation, if controller isn\'t null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    new-instance v2, Lcom/android/quickstep/n;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    goto :goto_71

    :cond_6a
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    :cond_71
    :goto_71
    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v0, "finishRecentsAnimation"

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    return-void
.end method

.method public abstract finishRecentsControllerToHome(Ljava/lang/Runnable;)V
.end method

.method public flushOnRecentsAnimationAndLauncherBound()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_BIND_TO_SERVICE:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_37

    :cond_f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    :cond_32
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_37
    :goto_37
    return-void
.end method

.method public fromRecentReverseState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getLastAppearedTaskIndex()I
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getLastAppearedTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastAppearedTaskId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result p0

    goto :goto_1c

    :cond_16
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result p0

    :goto_1c
    return p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getOverviewIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMotionPauseListener()Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;
    .registers 2

    new-instance v0, Lcom/android/quickstep/AbsSwipeUpHandler$5;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$5;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-object v0
.end method

.method public getRecentsView()Lcom/android/quickstep/views/RecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method public getRecentsViewDispatcher(F)Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getEventDispatcher(F)Ljava/util/function/Consumer;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public handleActivityDestroyed()V
    .registers 1

    return-void
.end method

.method public handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/quickstep/h;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/quickstep/h;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    invoke-virtual {v0, v3}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return v2

    :cond_2a
    return v1
.end method

.method public hasGestureStart()Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    return p0
.end method

.method public hasStartedNewTask()Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public hasTargets()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationTargets;->hasTargets()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public hasTaskPreviouslyAppeared(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getPreviouslyAppearedTaskIds()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasTaskPreviouslyAppearedWithoutHandle(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getPreviouslyNonHandledAppearedTaskIds()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public initAfterSubclassConstructor()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public initStateCallbacks()V
    .registers 15

    new-instance v0, Lcom/android/quickstep/MultiStateCallback;

    sget-object v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    or-int v3, v1, v2

    new-instance v4, Lcom/android/quickstep/n;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    or-int v4, v3, v2

    new-instance v6, Lcom/android/quickstep/l;

    invoke-direct {v6, p0, v5}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v4, v6}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v4, v1, v3

    new-instance v6, Lcom/android/quickstep/m;

    invoke-direct {v6, p0, v5}, Lcom/android/quickstep/m;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v4, v6}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    or-int/2addr v4, v1

    sget v6, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    or-int/2addr v4, v6

    new-instance v6, Lcom/android/quickstep/l;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v4, v6}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    sget v6, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    or-int v8, v4, v6

    new-instance v9, Lcom/android/quickstep/p;

    invoke-direct {v9, p0, v5}, Lcom/android/quickstep/p;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v8, v9}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v8, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    sget v9, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    or-int/2addr v8, v9

    new-instance v10, Lcom/android/quickstep/b1;

    const/4 v11, 0x4

    invoke-direct {v10, p0, v11}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v8, v10}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int/2addr v6, v1

    or-int/2addr v3, v6

    sget v8, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int v10, v3, v8

    new-instance v12, Lcom/android/quickstep/o;

    invoke-direct {v12, p0, v5}, Lcom/android/quickstep/o;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v10, v12}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    or-int/2addr v9, v5

    sget v10, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    or-int/2addr v9, v10

    new-instance v12, Lcom/android/quickstep/n;

    invoke-direct {v12, p0, v11}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v9, v12}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v9, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    or-int v12, v5, v9

    new-instance v13, Lcom/android/quickstep/m;

    invoke-direct {v13, p0, v7}, Lcom/android/quickstep/m;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v12, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    or-int/2addr v9, v12

    new-instance v13, Lcom/android/quickstep/l;

    invoke-direct {v13, p0, v11}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v9, v13}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int/2addr v3, v10

    or-int/2addr v3, v12

    or-int/2addr v3, v5

    or-int/2addr v2, v3

    new-instance v3, Lcom/android/quickstep/m;

    const/4 v9, 0x0

    invoke-direct {v3, p0, v9}, Lcom/android/quickstep/m;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v2, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    new-instance v3, Lcom/android/quickstep/l;

    const/4 v10, 0x1

    invoke-direct {v3, p0, v10}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v3, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    or-int/2addr v2, v3

    new-instance v3, Lcom/android/quickstep/p;

    invoke-direct {v3, p0, v10}, Lcom/android/quickstep/p;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    new-instance v3, Lcom/android/quickstep/b1;

    invoke-direct {v3, p0, v7}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int/2addr v1, v2

    new-instance v3, Lcom/android/quickstep/o;

    invoke-direct {v3, p0, v10}, Lcom/android/quickstep/o;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    or-int v1, v2, v4

    new-instance v3, Lcom/android/quickstep/n;

    invoke-direct {v3, p0, v7}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/android/quickstep/m;

    invoke-direct {v2, p0, v10}, Lcom/android/quickstep/m;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_11a

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v0

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget-object v1, Lcom/android/launcher3/e3;->d:Lcom/android/launcher3/e3;

    invoke-virtual {v0, v5, v1}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_INITIALIZED:I

    sget-object v2, Lcom/android/launcher3/h3;->d:Lcom/android/launcher3/h3;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    sget-object v2, Lcom/android/launcher/guide/side/d;->d:Lcom/android/launcher/guide/side/d;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    :cond_11a
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getStateCallback()Lcom/android/quickstep/MultiStateCallback;

    move-result-object v0

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ATTACHED_TO_WINDOW_STABLE:I

    new-instance v2, Lcom/android/quickstep/i0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/i0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/quickstep/MultiStateCallback;->addChangeListener(ILjava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getStateCallback()Lcom/android/quickstep/MultiStateCallback;

    move-result-object v0

    sget v2, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_SUCCESS:I

    new-instance v3, Lcom/android/quickstep/e;

    invoke-direct {v3, p0, v9}, Lcom/android/quickstep/e;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v2, v3, v10}, Lcom/android/quickstep/MultiStateCallback;->addChangeListener(ILjava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getStateCallback()Lcom/android/quickstep/MultiStateCallback;

    move-result-object v0

    sget v2, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_DONE_INVALIDATED:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/android/launcher3/g;

    invoke-direct {v2, p0}, Lcom/android/launcher3/g;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/quickstep/MultiStateCallback;->addChangeListener(ILjava/util/function/Consumer;Z)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_161

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    or-int/2addr v1, v6

    or-int/2addr v1, v8

    new-instance v2, Lcom/android/quickstep/f;

    invoke-direct {v2, p0, v9}, Lcom/android/quickstep/f;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->addChangeListener(ILjava/util/function/Consumer;)V

    :cond_161
    return-void
.end method

.method public initWhenReady()V
    .registers 3

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {p0}, Lcom/android/quickstep/util/ActivityInitListener;->register()V

    return-void
.end method

.method public isCanceled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    return p0
.end method

.method public isNonPendingApplyData()Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingApplyLoadPlanMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/b;->d:Lcom/android/launcher3/allapps/b;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v2, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_SUCCESS:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/GestureState;->hasState(I)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_PENDING_APPLY_LOAD_PLAN_INIT:I

    invoke-virtual {p0, v1}, Lcom/android/quickstep/GestureState;->hasState(I)Z

    move-result p0

    if-eqz p0, :cond_3d

    if-eqz v0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    :goto_3e
    return p0
.end method

.method public linkRecentsViewScroll()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/f;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-static {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->create(Landroid/view/View;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->clearOnScrollChangedListener()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    new-instance v0, Lcom/android/quickstep/m;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/m;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    return-void
.end method

.method public maybeFinishSwipeToHome()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v5}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getContentOverlay()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/quickstep/SystemUiProxy;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getFinishTransaction()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v4}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->getContentOverlay()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/quickstep/RecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->delayReleaseContentOverlay()V

    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    goto :goto_7d

    :cond_4f
    iget-boolean v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForStagedSplit:Z

    if-eqz v0, :cond_7d

    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setAlpha(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->build()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v2

    array-length v3, v2

    :goto_70
    if-ge v1, v3, :cond_7d

    aget v4, v2, v1

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v0, v6}, Lcom/android/quickstep/RecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_7d
    :goto_7d
    return-void
.end method

.method public maybeUpdateRecentsAttachedState()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    return-void
.end method

.method public maybeUpdateRecentsAttachedState(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(ZZ)V

    return-void
.end method

.method public maybeUpdateRecentsAttachedState(ZZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_e

    goto/16 :goto_9b

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v2, v1, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    goto :goto_5b

    :cond_26
    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->recentsAttachedToAppWindow:Z

    goto :goto_5b

    :cond_35
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    if-eq v1, v2, :cond_48

    goto :goto_5b

    :cond_48
    if-eqz v0, :cond_51

    invoke-static {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNotInRecents(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_5b

    :cond_51
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mHasMotionEverBeenPaused:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    if-eqz v0, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :cond_5b
    :goto_5b
    const-string/jumbo v0, "maybeUpdateRecentsAttachedState: , animate="

    const-string v1, ", recentsAttachedToAppWindow = "

    const-string v2, ", mContinuingLastGesture = "

    invoke-static {v0, p1, v1, v3, v2}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mContinuingLastGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLikelyToStartNewTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsLikelyToStartNewTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isThreeFingerGesture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v1, v1, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    const-string v2, "QuickStep"

    const-string v4, "AbsSwipeUpHandler"

    invoke-static {v0, v1, v2, v4}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_96

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {p2}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->hasRecentsEverAttachedToAppWindow()Z

    move-result p2

    if-nez p2, :cond_96

    if-eqz v3, :cond_96

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->moveFocusedTaskToFront()V

    :cond_96
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    invoke-interface {p0, v3, p1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setRecentsAttachedToAppWindow(ZZ)V

    :cond_9b
    :goto_9b
    return-void
.end method

.method public moveWindowWithRecentsScroll()Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public notifyGestureAnimationStartToRecents()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForStagedSplit:Z

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v0

    if-nez v0, :cond_28

    const-string p0, "QuickStep"

    const-string v0, "AbsSwipeUpHandler"

    const-string/jumbo v1, "splitTaskIds == null is true"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks([I)[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    goto :goto_3d

    :cond_33
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    :goto_3d
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v1, :cond_53

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/views/RecentsView;->setCurrentGestureState(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/MultiStateCallback;)V

    :cond_53
    return-void
.end method

.method public onActivityInit(Ljava/lang/Boolean;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6f

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v4, v3

    if-lez v4, :cond_29

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    goto :goto_2a

    :cond_29
    move-object v1, v2

    :goto_2a
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v3

    if-eqz v3, :cond_6c

    if-eqz v1, :cond_6c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_68

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    const-string v5, "AbsSwipeUpHandler"

    if-eq v3, v4, :cond_62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityInit(), dp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", acDp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_62
    const-string/jumbo v0, "onActivityInit, getOrientationState.deviceProfile"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    :goto_68
    invoke-virtual {p0, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    goto :goto_6f

    :cond_6c
    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_7b

    return v3

    :cond_7b
    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v1, v4}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget p1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/GestureState;->setState(I)V

    return v3

    :cond_8f
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v1}, Lcom/android/quickstep/MultiStateCallback;->getState()I

    move-result v1

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->LAUNCHER_UI_STATES:I

    not-int v4, v4

    and-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->initStateCallbacks()V

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v4, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :cond_a1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v4, 0x9

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    goto :goto_bc

    :cond_b7
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BaseActivity;->addForceInvisibleFlag(I)V

    :goto_bc
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    iput-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d8

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherStart()V

    goto :goto_e1

    :cond_d8
    new-instance p1, Lcom/android/quickstep/l;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->runOnceOnStart(Ljava/lang/Runnable;)V

    :goto_e1
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    new-instance v2, Lcom/android/quickstep/p;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4}, Lcom/android/quickstep/p;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {p1, v1, v2}, Lcom/android/quickstep/GestureState;->runOnceAtState(ILjava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setupRecentsViewUi()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->linkRecentsViewScroll()V

    new-instance p1, Lcom/android/quickstep/b1;

    const/4 v1, 0x7

    invoke-direct {p1, p0, v1}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return v3
.end method

.method public onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_18

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    new-instance v2, Lcom/android/quickstep/n;

    invoke-direct {v2, p0, v1}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    :cond_18
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->buildAnimationController()V

    return-object p1
.end method

.method public onConsumerAboutToBeSwitched()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->clearRunOnceOnStartCallback()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    :cond_a
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->cancelCurrentAnimation()V

    goto :goto_32

    :cond_28
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_FINISH_WITH_NO_END:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    :goto_32
    return-void
.end method

.method public onGestureCancelled()V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateDisplacement(F)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleNormalGestureEnd(FZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method public onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;Z)V
    .registers 10
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d7c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-nez v1, :cond_21

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v3

    :goto_22
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {v1, v4}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3b

    move v1, v2

    goto :goto_3c

    :cond_3b
    move v1, v3

    :goto_3c
    const/4 v4, 0x0

    if-eqz v1, :cond_4a

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_46

    goto :goto_47

    :cond_46
    move v2, v3

    :goto_47
    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    goto :goto_54

    :cond_4a
    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_51

    goto :goto_52

    :cond_51
    move v2, v3

    :goto_52
    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLogDirectionUpOrLeft:Z

    :goto_54
    iput-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDownPos:Landroid/graphics/PointF;

    new-instance p3, Lcom/android/launcher3/views/e;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/android/launcher3/views/e;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p1, :cond_6e

    if-eqz p4, :cond_65

    invoke-virtual {p3}, Lcom/android/launcher3/views/e;->run()V

    goto :goto_68

    :cond_65
    invoke-virtual {p1, p3}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    :goto_68
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->updateUseAbsoluteScrollX(Z)V

    goto :goto_71

    :cond_6e
    invoke-virtual {p3}, Lcom/android/launcher3/views/e;->run()V

    :goto_71
    return-void
.end method

.method public onGestureStarted(Z)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay(Z)V

    const-string/jumbo v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$6;

    invoke-direct {v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$6;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_1c
    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureStartedAsync()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsLikelyToStartNewTask(ZZ)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->notifySwipeUpGestureStarted()V

    return-void
.end method

.method public onLauncherStart()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v1, v0, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->updateRecentsRotation()V

    new-instance v1, Landroidx/core/location/a;

    invoke-direct {v1, p0}, Landroidx/core/location/a;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v1, v2, :cond_42

    new-instance v1, Lcom/android/quickstep/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v2, v3, v1}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    goto :goto_42

    :cond_3f
    invoke-virtual {v1}, Lcom/android/quickstep/l;->run()V

    :cond_42
    :goto_42
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_6f

    :cond_55
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "WTS-init"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/AbsSwipeUpHandler$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/quickstep/AbsSwipeUpHandler$3;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Object;Landroid/view/View;Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_6f
    :goto_6f
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    sget-object p1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v0, "cancelRecentsAnimation"

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInitListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {p1}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeferredCleanupRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_CANCELLED:I

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    :cond_23
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_2f

    invoke-virtual {p0, p1, p1}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    :cond_2f
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationController;->getFinishTargetIsLauncher()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1, p1}, Lcom/android/quickstep/views/RecentsView;->setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    :cond_17
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 9

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    iget-object v1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    const-string/jumbo v2, "startRecentsAnimationCallback"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Landroid/content/Context;Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    if-nez p1, :cond_65

    iget-object p1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object p1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, p2, Lcom/android/quickstep/RecentsAnimationTargets;->minimizedHomeBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_4d

    if-eqz p1, :cond_4d

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v4, v3, p1}, Lcom/android/quickstep/BaseActivityInterface;->getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/launcher3/util/WindowBounds;

    iget-object v5, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-direct {v4, p1, v5}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    goto :goto_53

    :cond_4d
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    :goto_53
    iget-object p2, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    :cond_65
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    or-int/2addr v0, p2

    new-instance v2, Lcom/android/quickstep/b1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iput-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPassedOverviewThreshold:Z

    return-void
.end method

.method public onRecentsViewScroll()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->moveWindowWithRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateFinalShift()V

    :cond_9
    return-void
.end method

.method public onRestartPreviouslyAppearedTask()V
    .registers 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method public onSettledOnEndTarget()V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/BaseActivityInterface;->onSettledOnEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_19

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    :cond_19
    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_22

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    :cond_22
    sget-object v2, Lcom/android/quickstep/AbsSwipeUpHandler$13;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5c

    const/4 v4, 0x3

    if-eq v2, v4, :cond_51

    const/4 v5, 0x4

    if-eq v2, v5, :cond_37

    goto :goto_8c

    :cond_37
    if-eqz v1, :cond_42

    new-instance v2, Lcom/android/quickstep/p;

    invoke-direct {v2, p0, v4}, Lcom/android/quickstep/p;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-static {v1, v2}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    goto :goto_49

    :cond_42
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_RESUME_LAST_TASK:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :goto_49
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v1, :cond_8c

    invoke-virtual {p0, v3, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    goto :goto_8c

    :cond_51
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_START_NEW_TASK:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_8c

    :cond_5c
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_RECENTS:I

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v1, v2

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_VIEW_SHOWN:I

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_8c

    :cond_6a
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCALED_CONTROLLER_HOME:I

    sget v3, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CAPTURE_SCREENSHOT:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v2}, Lcom/android/quickstep/SystemUiProxy;->setPipAnimationTypeToAlpha()V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->notifySwipeToHomeFinished()V

    :cond_8c
    :goto_8c
    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSettledOnEndTarget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method public onSetupInputProxy()V
    .registers 1

    return-void
.end method

.method public onStartNewTaskBefore(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    return-void
.end method

.method public onStartNewTaskFailed()V
    .registers 1

    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskSuccess()V

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string p1, "finishRecentsAnimation"

    invoke-virtual {p0, p1, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public onThumbnailUpdateComplete(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onThumbnailUpdateStart()V
    .registers 1

    return-void
.end method

.method public onWindowAnimationEnd()V
    .registers 1

    return-void
.end method

.method public onWindowAnimationStart()V
    .registers 1

    return-void
.end method

.method public performHapticFeedback()V
    .registers 2

    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method public resetLauncherListeners()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->setRecentInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    :cond_13
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mOnRecentsScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/RecentsView;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_25
    return-void
.end method

.method public resetStateForAnimationCancel()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    move v0, v1

    :goto_d
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    :cond_1f
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_26

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_26
    return-void
.end method

.method public restoreBtvIconState()V
    .registers 1

    return-void
.end method

.method public resumeLastTask()V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v3, "finishRecentsAnimation"

    invoke-virtual {v0, v3, v2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Z)V

    :cond_10
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method public runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationStartCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    return-void
.end method

.method public screenshotGroupTask(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setDividerShown(ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDividerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-instance v1, Lcom/android/launcher/i;

    const/4 v2, 0x6

    invoke-direct {v1, p2, v2}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-static {v0, p1, v1}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mDividerAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setGestureEndCallback(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setIsLikelyToStartNewTask(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsLikelyToStartNewTask(ZZ)V

    return-void
.end method

.method public setScreenshotCaptured()V
    .registers 1

    return-void
.end method

.method public setScreenshotCapturedState()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "ScreenshotCaptured"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public setupLauncherUiAfterSwipeUpToRecentsAnimation()V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "AbsSwipeUpHandler"

    const-string/jumbo v2, "setupLauncherUiAfterSwipeUpToRecentsAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onSwipeUpAnimationSuccess()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance v2, Lcom/android/quickstep/b1;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TaskAnimationManager;->setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->enableLiveTileRestartListener()V

    :cond_35
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method public startInterceptingTouchesForGesture()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->enableInputConsumer()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->setDividerShown(ZZ)V

    return-void
.end method

.method public startNewTask(Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const-string v1, "AbsSwipeUpHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const-string p1, "RecentsView is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    return-void

    :cond_f
    iget-boolean v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez v3, :cond_8f

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/quickstep/AbsSwipeUpHandler;->onStartNewTaskBefore(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v7

    aget v7, v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(II)V

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v6, v5, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v6, :cond_45

    check-cast v5, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v5, v4}, Lcom/oplus/quickstep/gesture/OplusGestureState;->updateStartingNewTaskId(I)V

    :cond_45
    invoke-virtual {p0, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTaskPreviouslyAppeared(I)Z

    move-result v5

    invoke-virtual {p0, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTaskPreviouslyAppearedWithoutHandle(I)Z

    move-result v6

    if-eqz v5, :cond_6d

    if-eqz v6, :cond_6d

    const-string v0, "QuickStep"

    const-string v3, "hasTaskPreviouslyAppeared and hasTaskPreviouslyAppearedWithoutHandle.SKIP launch task."

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRestartPreviouslyAppearedTask()V

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v0, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v0, :cond_8f

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->updateStartingNewTaskId(I)V

    goto :goto_8f

    :cond_6d
    new-instance v1, Lcom/android/quickstep/g;

    invoke-direct {v1, p0, p1, v5, v4}, Lcom/android/quickstep/g;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;ZI)V

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;ZZ)V

    goto :goto_8f

    :cond_76
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskFailed()V

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const v0, 0x7f1200b4

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p1, :cond_8f

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :cond_8f
    :goto_8f
    iput-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    return-void
.end method

.method public switchToScreenshot()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    goto :goto_64

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchToScreenshot(), runningTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const-string v3, ""

    if-nez v2, :cond_2b

    const-string v2, "; mRecentsAnimationController is Empty"

    goto :goto_2c

    :cond_2b
    move-object v2, v3

    :goto_2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v2, :cond_35

    const-string v3, "; mTaskSnapshot is Empty"

    :cond_35
    const-string v2, "QuickStep"

    const-string v4, "AbsSwipeUpHandler"

    invoke-static {v1, v3, v2, v4}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v3, :cond_5f

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v2, :cond_5b

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onThumbnailUpdateStart()V

    sget-object v2, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/quickstep/q;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/quickstep/q;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5b
    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateThumbnail(IZ)Z

    move-result v2

    :cond_5f
    if-nez v2, :cond_64

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setScreenshotCapturedState()V

    :cond_64
    :goto_64
    return-void
.end method

.method public updateFinalShift()V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const v1, 0x3f333333  # 0.7f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPassedOverviewThreshold:Z

    if-eq v0, v1, :cond_27

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPassedOverviewThreshold:Z

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isTwoButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isHandlingAtomicEvent()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->performHapticFeedback()V

    :cond_27
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->applyScrollAndTransform()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateLauncherTransitionProgress()V

    return-void
.end method

.method public updateLauncherTransitionProgress()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->canCreateNewOrUpdateExistingLauncherTransitionController()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1e

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-direct {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getScaleProgressDueToScroll()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public updateProgressForStartRectInPip([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateProgressForStartRect([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public updateSplitScreenMinimized(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->setSplitScreenMinimized(Landroid/content/Context;Z)V

    return-void
.end method

.method public updateSysUiFlags(F)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewNearestToCenterOfScreen()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_1c

    :cond_15
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    :goto_1c
    const v2, 0x3e199998  # 0.14999998f

    cmpl-float p1, p1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_27

    move p1, v2

    goto :goto_28

    :cond_27
    move p1, v3

    :goto_28
    if-eq v1, v0, :cond_2c

    move v0, v2

    goto :goto_2d

    :cond_2c
    move v0, v3

    :goto_2d
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez p1, :cond_32

    move v2, v3

    :cond_32
    invoke-virtual {v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->setUseLauncherSystemBarFlags(Z)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSplitScreenMinimized(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->setWillFinishToHome(Z)V

    const/4 v0, 0x3

    if-eqz p1, :cond_4a

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    goto :goto_53

    :cond_4a
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    :cond_53
    :goto_53
    return-void
.end method

.method public updateThumbnail(IZ)Z
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_15

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    :goto_1f
    if-eqz p1, :cond_37

    if-eqz p2, :cond_37

    iget-boolean p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez p2, :cond_37

    new-instance p2, Lcom/android/quickstep/b1;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V

    new-instance v0, Lcom/android/quickstep/d;

    invoke-direct {v0, p0}, Lcom/android/quickstep/d;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-static {p1, p2, v0}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z

    move-result p0

    goto :goto_38

    :cond_37
    const/4 p0, 0x0

    :goto_38
    return p0
.end method
