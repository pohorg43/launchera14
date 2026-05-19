.class public Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;
.implements Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;
.implements Lcom/oplus/splitscreen/observer/OplusZoomStateObserver$ZoomWindowObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;,
        Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;,
        Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OplusZoomWindowObserver;,
        Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;
    }
.end annotation


# static fields
.field private static final ENABLE_TASKBAR_SPLIT_GROUP_ANIM:Z

.field private static final FORCE_ENTER_NORMAL_DELAY:J = 0x320L

.field public static final KEY_IS_ENCRYPTAPP:Ljava/lang/String; = "EncryptApp"

.field public static final MAIN_TASK_LAYER:I = 0x0

.field public static final MIRAGE_ID_BASE:I = 0x2710

.field private static final MULTI_APP_USER_ID:I = 0x3e7

.field private static final PRIMARY_APP_NAME_KEY:Ljava/lang/String; = "primaryAppName"

.field public static final PROMOTE_LAYER_FOR_ENTER_NORMAL_STATE:I = 0x2

.field public static final RECENTS_APP_NUMS:I = 0x4

.field private static final RESET_ENTER_NORMAL_TIMEOUT:I = 0x3e8

.field private static final RESET_IS_ENTERING_MINIMIZED_TIMEOUT:I = 0x258

.field private static final RESET_ORIENTATION_TIMEOUT:I = 0x3e8

.field private static final SECONDARY_APP_NAME_KEY:Ljava/lang/String; = "secondaryAppName"

.field public static final SIDE_TASK_LAYER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StageCoordinatorExt"

.field private static final TIMEOUT:I = 0x190

.field public static final WINDOWING_MODE_COMPACTWINDOW:I = 0x78

.field public static final WINDOWING_MODE_ZOOM:I = 0x64


# instance fields
.field private final mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

.field private final mContext:Landroid/content/Context;

.field private mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

.field private mCtsPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

.field private final mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

.field private mDividerShown:Z

.field private final mEnable:Z

.field private final mEnableControlBarMenu:Z

.field private final mEnableFakeSplitMode:Z

.field private final mEnableMinimizedSplit:Z

.field private final mEnableSplitTips:Z

.field public mExcludeStartingWindowPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExitSplitForOneSideVisible:Ljava/lang/Runnable;

.field private mExiting:Z

.field private mFakeSplitMode:Z

.field private mFoldedStateChange:Z

.field private mInGestureAnimation:Z

.field private mIsChangingFocusedTask:Z

.field private mIsRecentsInSplitAnimating:Z

.field private mIsTargetStartingWindowOnTop:Z

.field private mIsUnfold:Ljava/lang/Boolean;

.field private mKeyguardShowing:Z

.field private final mMainControlBarGlobalBounds:Landroid/graphics/Rect;

.field private final mMainControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

.field private final mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field private mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

.field private mNeedEnterMinimizedSplit:Z

.field private mNeedEnterSplitScreen:Z

.field private mNeedRestoreMinimizedState:Z

.field private mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformingSwapAnimation:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mRecentTasks:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field private final mResetEnterNormalType:Ljava/lang/Runnable;

.field private final mResetIsEnteringMinimized:Ljava/lang/Runnable;

.field private final mResetOrientation:Ljava/lang/Runnable;

.field private final mSideControlBarGlobalBounds:Landroid/graphics/Rect;

.field private final mSideControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

.field private final mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

.field private final mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field private final mSplitLayoutSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitScreenAnimator:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

.field private final mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field private final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field private mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTargetStartingWindowTaskId:I

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

.field private mToDismissLeash:Landroid/view/SurfaceControl;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mTransitionBinder:Landroid/os/IBinder;

.field private mTransitionFinishCallback:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

.field private final mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private mUiMode:I

.field private final mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.taskbar.split_group_anim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->ENABLE_TASKBAR_SPLIT_GROUP_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/util/function/Supplier;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayImeController;ILcom/android/wm/shell/splitscreen/SplitScreenTransitions;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/splitscreen/MainStage;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;",
            "Lcom/android/wm/shell/splitscreen/SideStage;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;",
            "Landroid/view/SurfaceSession;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "I",
            "Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;",
            "Lcom/android/wm/shell/transition/Transitions;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p7

    move-object/from16 v15, p9

    move-object/from16 v11, p17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "persist.sys.minimized_split_feature_enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableMinimizedSplit:Z

    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    invoke-direct {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitScreenAnimator:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    new-instance v10, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v10, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;)V

    iput-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    invoke-direct {v9, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;)V

    iput-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterSplitScreen:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    new-instance v5, Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-direct {v5}, Lcom/oplus/splitscreen/SplitScreenDefer;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    new-instance v5, Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-direct {v5}, Lcom/oplus/splitscreen/SplitScreenDefer;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExiting:Z

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerShown:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFoldedStateChange:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mInGestureAnimation:Z

    new-instance v2, Lcom/android/wm/shell/splitscreen/s0;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/splitscreen/s0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExitSplitForOneSideVisible:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/splitscreen/u1;

    invoke-direct {v2, v0, v4}, Lcom/android/wm/shell/splitscreen/u1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;I)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetOrientation:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/splitscreen/j;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/splitscreen/j;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetEnterNormalType:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/splitscreen/k1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/splitscreen/k1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetIsEnteringMinimized:Ljava/lang/Runnable;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUiMode:I

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedRestoreMinimizedState:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsTargetStartingWindowOnTop:Z

    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTargetStartingWindowTaskId:I

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsRecentsInSplitAnimating:Z

    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;

    invoke-direct {v8, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    const-string v2, "android.view.inputmethod.cts"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mCtsPkgList:Ljava/util/List;

    const-string v2, "com.taobao.taobao"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExcludeStartingWindowPkgList:Ljava/util/List;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasColorSplitFeature()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnable:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableControlBarMenu:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableFakeSplitMode:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableSplitTips:Z

    iput-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    iput-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    const-string/jumbo v2, "power"

    invoke-virtual {v12, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_12b

    new-instance v2, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    move-object v1, v2

    move-object v12, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v16, v8

    move-object/from16 v8, p6

    move-object v13, v9

    move-object/from16 v9, p3

    move-object/from16 p8, v13

    move-object v13, v10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v11}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;Ljava/util/function/Supplier;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    goto :goto_130

    :cond_12b
    move-object/from16 v16, v8

    move-object/from16 p8, v9

    move-object v13, v10

    :goto_130
    new-instance v10, Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p12

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/function/Supplier;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-virtual {v14, v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setControlBarListener(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;)V

    move-object/from16 v1, p8

    invoke-virtual {v15, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setControlBarListener(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;)V

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mRecentTasks:Ljava/util/Optional;

    move/from16 v1, p15

    iput v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayId:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->createDividerMenu()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->createControlBarMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->registerNavigationModeChangeObserver()V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->setStageCoordinator(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->getInstance()Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->addForZoomWindowObserver(Lcom/oplus/splitscreen/observer/OplusZoomStateObserver$ZoomWindowObserver;)V

    return-void
.end method

.method public static synthetic A(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onStageHasChildrenChanged$13(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic B(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startIntentAndTaskWithSlideAnim$5(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onStageVisibilityChanged$18(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic D(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onZoomWindowHide$26(ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic E(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startIntentAndTaskWithAnim$6(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitSplitScreenForOneStageVisible()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1300()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->ENABLE_TASKBAR_SPLIT_GROUP_ANIM:Z

    return v0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/transition/Transitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/oplus/splitscreen/SplitControlBarMenu;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsRecentsInSplitAnimating:Z

    return p0
.end method

.method public static synthetic access$2500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onControlBarClicked(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionFinishCallback:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

    return-object p0
.end method

.method public static synthetic access$2802(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionFinishCallback:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

    return-object p1
.end method

.method public static synthetic access$2902(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/DividerOrientationController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-object p0
.end method

.method private adjustSplitControlBarVisibility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz v1, :cond_44

    if-nez p1, :cond_11

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_44

    :cond_11
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->DEVICE_FOLD:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_41

    :cond_2d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->DEVICE_FOLD:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->removeControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->removeControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    :goto_41
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_44
    :goto_44
    return-void
.end method

.method private adjustZoomOrMirageModeWhenPairIntent(Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    if-eqz v1, :cond_1a5

    if-eqz v2, :cond_1a5

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v6

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEncryptAndNoPassApp(Landroid/content/Intent;I)Z

    move-result v7

    const-string v8, "EncryptApp"

    const/4 v9, 0x1

    if-eqz v7, :cond_4f

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_4e

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v13, 0x44000000  # 512.0f

    const/4 v14, 0x0

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v7, -0x1

    move-object v0, v6

    move/from16 v2, p3

    move-object v3, v4

    move v4, v7

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_4e
    return v9

    :cond_4f
    invoke-virtual {v0, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEncryptAndNoPassApp(Landroid/content/Intent;I)Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_81

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v13, 0x44000000  # 512.0f

    const/4 v14, 0x0

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v0, v6

    move/from16 v2, p4

    move v4, v7

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_81
    return v9

    :cond_82
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setPendingUpdateRecommendAppPair(Landroid/util/Pair;)V

    if-eqz v5, :cond_166

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-eqz v10, :cond_166

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v10

    sub-int/2addr v10, v9

    :goto_a5
    if-ltz v10, :cond_166

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v11}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-eqz v11, :cond_161

    iget-object v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_161

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_161

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c9

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_161

    :cond_c9
    sget-object v13, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v14, "adjustZoomOrMirageModeWhenPairIntent mTargetPkg:"

    const-string v15, " pkg1:"

    const-string v9, " pkg2:"

    invoke-static {v14, v12, v15, v7, v9}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " displayId:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " windowMode:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v11, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/16 v13, 0x2710

    if-lt v9, v13, :cond_139

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    goto :goto_103

    :cond_102
    move v3, v4

    :goto_103
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10a

    goto :goto_10b

    :cond_10a
    move-object v1, v2

    :goto_10b
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x44000000  # 512.0f

    const/4 v5, 0x0

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object/from16 p0, v0

    move/from16 p1, v2

    move-object/from16 p2, v1

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v7

    invoke-static/range {p0 .. p5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object/from16 p0, v6

    move-object/from16 p1, v0

    move/from16 p2, v3

    move-object/from16 p3, v1

    move/from16 p4, v2

    move-object/from16 p5, v4

    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0

    :cond_139
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v9

    const/16 v12, 0x64

    if-ne v9, v12, :cond_161

    const/16 v9, 0xe

    invoke-static {v9}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusZoomWindowManager_hideZoomWindow(I)V

    new-instance v9, Landroid/window/WindowContainerTransaction;

    invoke-direct {v9}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v9, v11, v13}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v11, v9}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_161
    add-int/lit8 v10, v10, -0x1

    const/4 v9, 0x1

    goto/16 :goto_a5

    :cond_166
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v1, :cond_1a5

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getPkgInMinimized()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a5

    const-string v2, ":999"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_186

    const/16 v2, 0x3e7

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_187

    :cond_186
    const/4 v2, 0x0

    :goto_187
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_194

    if-ne v2, v3, :cond_194

    invoke-direct {v0, v8, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentFromPkg(Ljava/lang/String;I)V

    const/4 v5, 0x1

    return v5

    :cond_194
    const/4 v5, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    if-ne v2, v4, :cond_1a1

    invoke-direct {v0, v7, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentFromPkg(Ljava/lang/String;I)V

    return v5

    :cond_1a1
    invoke-direct {v0, v8, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentFromPkg(Ljava/lang/String;I)V

    return v5

    :cond_1a5
    const/4 v0, 0x0

    return v0
.end method

.method private attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :cond_d
    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnim$11(Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/window/WindowContainerTransaction;Ljava/lang/Boolean;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnimAndShellTransition$9(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/window/WindowContainerTransaction;Ljava/lang/Boolean;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method private createDividerMenu()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/oplus/splitscreen/DividerMenu;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$2;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$3;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/splitscreen/DividerMenu;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$continueApplyDividerVisibility$19(Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private dealBottomTaskPositionWhenShowIme(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 12

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4f

    invoke-static {p1, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    move v1, v2

    :goto_e
    if-ltz v0, :cond_cb

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4c

    const/high16 v5, 0x100000

    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_4c

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v6

    if-eq v5, v6, :cond_4b

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v5

    if-ne v4, v5, :cond_4c

    :cond_4b
    move v1, v3

    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_4f
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_ca

    invoke-static {p1, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    move v4, v2

    move v5, v4

    :goto_5b
    if-ltz v0, :cond_c3

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    if-ne v7, v1, :cond_96

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_96

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_96

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.oplus.safecenter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    move v5, v3

    :cond_96
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c0

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_c0

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v8

    if-eq v7, v8, :cond_bf

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v7

    if-ne v6, v7, :cond_c0

    :cond_bf
    move v4, v3

    :cond_c0
    add-int/lit8 v0, v0, -0x1

    goto :goto_5b

    :cond_c3
    if-eqz v5, :cond_ca

    if-nez v4, :cond_c8

    goto :goto_ca

    :cond_c8
    move v1, v4

    goto :goto_cb

    :cond_ca
    :goto_ca
    move v1, v2

    :cond_cb
    :goto_cb
    if-eqz v1, :cond_133

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result p1

    if-eqz p1, :cond_133

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p1, :cond_e2

    return-void

    :cond_e2
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isImeShown()Z

    move-result v0

    if-eqz v0, :cond_133

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_133

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds2(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getYOffsetForIme()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p1

    if-nez p1, :cond_108

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_10a

    :cond_108
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_10a
    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, "dealBottomTaskPositionWhenShowIme lef:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_133
    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$afterApplyExitSplitScreen$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private enterNormalSplit(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterNormalSplit(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showTips()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    return-void
.end method

.method private exitSplitScreenForOneStageVisible()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_12

    move v3, v4

    goto :goto_13

    :cond_12
    move v3, v5

    :goto_13
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v6, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v6, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v6, :cond_20

    goto :goto_21

    :cond_20
    move v4, v5

    :goto_21
    if-eqz v3, :cond_34

    if-eqz v4, :cond_34

    if-eqz v1, :cond_28

    goto :goto_29

    :cond_28
    move-object v0, v2

    :goto_29
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    :cond_34
    return-void
.end method

.method private exitSplitScreenWithSlideAnim(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 22

    move-object/from16 v8, p0

    move/from16 v0, p2

    move-object/from16 v7, p3

    move-object/from16 v2, p4

    if-eqz p1, :cond_d

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_f

    :cond_d
    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_f
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v1

    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v9, :cond_2c

    iget-object v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_2c
    new-instance v10, Lcom/android/common/util/e;

    invoke-direct {v10, v8, v3, v0, v1}, Lcom/android/common/util/e;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;II)V

    if-eqz p1, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3c

    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3c
    move-object v11, v0

    if-eqz p1, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_48

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_48
    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v13

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v8, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget v1, v11, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v11, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v7, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    new-instance v14, Lcom/android/wm/shell/splitscreen/v1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p1

    move-object v4, v9

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/v1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    new-instance v15, Landroid/window/WindowContainerTransaction;

    invoke-direct {v15}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v15, v1}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_a6

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    sget-object v4, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    move-object v0, v15

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    :cond_a6
    if-eqz v9, :cond_ad

    iget-object v0, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v15, v0, v11}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_ad
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_c8

    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$10;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$10;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v9, v1, v15}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V

    goto :goto_cd

    :cond_c8
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, v15}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_cd
    return-void
.end method

.method private exitSplitScreenWithSlideAnim(I)Z
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->peekTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object v7

    if-nez v7, :cond_1c

    return v1

    :cond_1c
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_32

    :cond_28
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_32
    :goto_32
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v9, 0x1

    if-ne v2, v3, :cond_39

    move v5, v9

    goto :goto_3a

    :cond_39
    move v5, v1

    :goto_3a
    if-eqz v5, :cond_3e

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_3e
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->peekTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object v8

    if-nez v8, :cond_4b

    return v1

    :cond_4b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v10, Lcom/android/wm/shell/splitscreen/o1;

    move-object v3, v10

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/splitscreen/o1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v0, v2, v10}, Lcom/android/wm/shell/ShellTaskOrganizer;->screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return v9
.end method

.method private exitSplitScreenWithSlideAnimAndShellTransition(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Boolean;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 26

    move-object v1, p0

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move/from16 v2, p10

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    new-instance v14, Lcom/android/wm/shell/splitscreen/x1;

    move-object v0, v14

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p9

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/splitscreen/x1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/window/WindowContainerTransaction;Ljava/lang/Boolean;)V

    invoke-virtual {v12, v11, v13, v14}, Lcom/android/wm/shell/ShellTaskOrganizer;->screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic f(IILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$breakPairedTaskInRecent$21(IILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startIntentAndTaskWithSlideAnim$4(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method private getEnableMinimalOverlayStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDisplaySupport()Z

    move-result v2

    if-nez v2, :cond_13

    return-object v1

    :cond_13
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->atFirstSplitTarget()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-nez v2, :cond_28

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_2a

    :cond_28
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_2a
    move-object v1, p0

    goto :goto_3e

    :cond_2c
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->atLastSplitTarget()Z

    move-result v0

    if-eqz v0, :cond_3e

    if-nez v2, :cond_3b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_2a

    :cond_3b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_2a

    :cond_3e
    :goto_3e
    return-object v1
.end method

.method private getSwapDividerPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_16

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-lez p0, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_21

    :cond_11
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_21

    :cond_16
    if-lez p0, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_21

    :cond_1d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_21
    return p0
.end method

.method private getSwapSidePosition(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;)I
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-ne p1, v0, :cond_c

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_c

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_18

    :cond_c
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, p0, :cond_1a

    iget p0, p2, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_18

    iget p0, p2, Landroid/graphics/Rect;->top:I

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method public static synthetic h(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;IILcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$delaySetLayoutOffsetTarget$25(IILcom/android/wm/shell/common/split/SplitLayout;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onStageHasChildrenChanged$14()V

    return-void
.end method

.method private isInExcludeStartingWindowPkgList(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExcludeStartingWindowPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private isInExcludeStartingWindowPkgList(Landroid/window/StartingWindowInfo;)Z
    .registers 2

    iget-object p1, p1, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isInExcludeStartingWindowPkgList(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startPairIntent$2(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic k(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnimAndShellTransition$8(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic l(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$switchToZoom$22(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$afterApplyExitSplitScreen$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->cleanMaintainSplitToZoomTaskStateUncheck()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetDragState()V

    :cond_a
    return-void
.end method

.method private static synthetic lambda$breakPairedTaskInRecent$21(IILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    if-lez p0, :cond_5

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_5
    if-lez p1, :cond_a

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$continueApplyDividerVisibility$19(Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibilityWrapper(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$continueApplyDividerVisibility$20(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/m0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/m0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private synthetic lambda$delaySetLayoutOffsetTarget$25(IILcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenWithSlideAnim$10(Landroid/window/WindowContainerTransaction;II)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-static {p2, p3}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_removeSelfSplitTaskIfNeed(II)V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenWithSlideAnim$11(Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 8

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz p2, :cond_a

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_c

    :cond_a
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_c
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p3, :cond_1e

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {v0, p1, v1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1e
    if-eqz p2, :cond_23

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_25

    :cond_23
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_25
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p4, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p5, :cond_37

    iget-object p0, p5, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, p4, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_37
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenWithSlideAnim$7(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitSplitScreenWithSlideAnim(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method private static synthetic lambda$exitSplitScreenWithSlideAnimAndShellTransition$8(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 5

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_21
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2f
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenWithSlideAnimAndShellTransition$9(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/window/WindowContainerTransaction;Ljava/lang/Boolean;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 23

    move-object v10, p0

    move-object v6, p2

    move-object v0, p3

    if-eqz p10, :cond_107

    invoke-virtual/range {p10 .. p10}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    if-nez v1, :cond_d

    goto/16 :goto_107

    :cond_d
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "SplitSurfaceSnapshotTmpForDismiss"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "SplitSurfaceSnapshotTmpForDismiss#startAnimation"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iget-object v2, v10, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2, v8, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    const v2, 0x7fffffff

    invoke-virtual {v1, v8, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v3, "SplitSurfaceSnapshotTmpForDismiss#top"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v4, "SplitSurfaceSnapshotTmpForDismissTop#startAnimation"

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget v4, v6, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v5, "SplitSurfaceSnapshotTmpForDismiss#bottom"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v4, "SplitSurfaceSnapshotTmpForDismissBottom#startAnimation"

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual/range {p10 .. p10}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual/range {p10 .. p10}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p10 .. p10}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v3, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v1, v3, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v4, Lcom/android/wm/shell/splitscreen/g0;

    invoke-direct {v4, v2, v3, v8}, Lcom/android/wm/shell/splitscreen/g0;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v4

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    new-instance v0, Landroid/window/RemoteTransition;

    invoke-static {v11}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->toRemoteTransition(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    iget-object v1, v10, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v2, v10, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/16 v4, 0xe

    move-object/from16 v5, p8

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->setRemoteTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitSplitType(I)I

    :cond_107
    :goto_107
    return-void
.end method

.method private synthetic lambda$moveToSplitScreen$3(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$onRemoteAnimationCancelled$24(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setShouldUpdateRecents(Z)V

    return-void
.end method

.method private static synthetic lambda$onRootTaskInfoChanged$15(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_notifyFoldUpdatingComplete()V

    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$13(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterNormalSplit(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$14()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/j1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/j1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private synthetic lambda$onStageVisibilityChanged$17(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onStageVisibilityChanged$18(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private static synthetic lambda$onZoomWindowHide$26(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    return-void
.end method

.method private static synthetic lambda$removePairIfNeeded$23(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    return-void
.end method

.method private synthetic lambda$resetStateOnDismissTransitionConsumed$27(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static synthetic lambda$resetStateOnDismissTransitionConsumed$28(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    return-void
.end method

.method private synthetic lambda$runWithTransactionDelayed$29(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->runWithTransaction(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private synthetic lambda$startIntentAndTaskWithAnim$6(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$startIntentAndTaskWithSlideAnim$4(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 16

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method private synthetic lambda$startIntentAndTaskWithSlideAnim$5(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueApplyDividerVisibility(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$startPairIntent$2(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$startPairIntentForSafeControlApp$1(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibilityWrapper(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->inflateSplitDecor()V

    return-void
.end method

.method private synthetic lambda$startSwapTask$12(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibilityWrapper(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferUpdateSurfaceBounds()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitScreenAnimator:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v7, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v8, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;

    invoke-direct {v9, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->startSwapAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private static synthetic lambda$switchToZoom$22(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V

    sget-object p3, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchToZoom: startZoomWindowFromSplit, motionStageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", zoomBounds="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", zoomScale="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateMinimalTaskOverlay$16(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onClickExchangeMenu(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->toggleFirstLastSplitTarget(Z)V

    :cond_15
    return-void
.end method

.method public static synthetic m(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$updateMinimalTaskOverlay$16(Z)V

    return-void
.end method

.method public static synthetic n(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnim$10(Landroid/window/WindowContainerTransaction;II)V

    return-void
.end method

.method public static synthetic o(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onRootTaskInfoChanged$15(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p4, :cond_13

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1e

    :cond_13
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    :goto_1e
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method private offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-object p0
.end method

.method private offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private onClickExchangeMenu(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_18

    move-object v2, v0

    goto :goto_19

    :cond_18
    move-object v2, v1

    :goto_19
    if-eqz p1, :cond_1c

    move-object v0, v1

    :cond_1c
    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p1

    goto :goto_2b

    :cond_25
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p1

    :goto_2b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenExchangeMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private onControlBarClicked(ZLandroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_a3

    :cond_16
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_32

    :cond_30
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_32
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    const-wide/32 v2, 0xa4cb800

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_70
    new-instance v1, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/wm/shell/R$drawable;->split_screen_all_apps_icon_1:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "allApps"

    invoke-direct {v1, v3, v2}, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v3, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    const/high16 v1, 0x41000000  # 8.0f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {v2, p1, v3, p0, v0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->showAtLocation(ZIILjava/util/List;)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method private onUnfoldStateChanged(Ljava/lang/Boolean;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->adjustSplitControlBarVisibility(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnim$7(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$resetStateOnDismissTransitionConsumed$27(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$moveToSplitScreen$3(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private registerNavigationModeChangeObserver()V
    .registers 5

    const-string/jumbo v0, "navigation_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$13;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$13;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onStageVisibilityChanged$17(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private setFakeSplitMode(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableFakeSplitMode:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateFakeSplitMode()V

    return-void
.end method

.method private setMultiAppFlags(Landroid/content/Intent;I)V
    .registers 3

    const/16 p0, 0x3e7

    if-ne p2, p0, :cond_7

    const/16 p0, 0x1000

    goto :goto_9

    :cond_7
    const/16 p0, 0x800

    :goto_9
    :try_start_9
    invoke-static {p1, p0}, Lcom/oplus/compat/content/IntentNative;->setOplusFlags(Landroid/content/Intent;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "startPairIntent setOplusFlags for intent error "

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method

.method private showScreenshotWhenEnter(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)Landroid/view/SurfaceControl;
    .registers 5

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_58

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v2, "SplitSurfaceSnapshotTmpForEnter"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "SplitSurfaceSnapshotTmpForEnter#startAnimation"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    const p0, 0x7ffffffe

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    :goto_59
    return-object v1
.end method

.method private splitWindowManager_setConfiguration(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/content/res/Configuration;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string/jumbo v0, "mSplitWindowManager"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_31

    :catch_19
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "splitWindowManager_setConfiguration failed catch:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method

.method private startIntentAndTaskWithAnim(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/RemoteTransition;)Z
    .registers 22

    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_10

    if-eqz v3, :cond_10

    move v7, v5

    goto :goto_11

    :cond_10
    move v7, v6

    :goto_11
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v8, :cond_24

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startIntentAndTaskWithAnim fail, null SplitLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_24
    invoke-virtual {v8}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    new-instance v9, Landroid/window/WindowContainerTransaction;

    invoke-direct {v9}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez p5, :cond_37

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    goto :goto_39

    :cond_37
    move-object/from16 v10, p5

    :goto_39
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v11, v4, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v11

    if-nez v11, :cond_4b

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v11, v9, v6}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_4b
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v11, v8, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBoundsWrapper(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    if-eqz v2, :cond_64

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual/range {p3 .. p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitRequest(Landroid/content/Intent;I)V

    :cond_64
    if-eqz v7, :cond_73

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual/range {p3 .. p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitRequest(Landroid/content/Intent;I)V

    invoke-virtual {v9, v2, v3, v10}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_7c

    :cond_73
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitRequest(ILandroid/content/Intent;I)V

    invoke-virtual {v9, p2, v10}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_7c
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    move-object v2, p1

    invoke-virtual {v1, p1, v9}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v9, v1, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v9, v1, v6}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v1, :cond_b6

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/16 v6, 0x450

    const/4 v7, 0x0

    move-object p1, v1

    move p2, v2

    move-object/from16 p3, v9

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v6

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitScreenDefer;->reset()V

    goto :goto_c7

    :cond_b6
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2, v5, v9}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/p1;

    invoke-direct {v2, p0, v8, v6}, Lcom/android/wm/shell/splitscreen/p1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_c7
    return v5
.end method

.method private startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 20

    move-object v9, p0

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->prepareEvictChildTasks(ILandroid/window/WindowContainerTransaction;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->prepareEvictChildTasks(ILandroid/window/WindowContainerTransaction;)V

    move-object v7, p1

    :try_start_f
    iget-object v2, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_22

    iget-object v2, v9, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    new-instance v3, Lcom/android/wm/shell/splitscreen/e0;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/splitscreen/e0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v10, 0x0

    if-nez v0, :cond_3b

    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, v3

    move-object v3, p1

    move/from16 v4, p7

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$7;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    move-object v8, v6

    move-object v11, v10

    goto :goto_52

    :cond_3b
    const/4 v2, 0x0

    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    move/from16 v5, p7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    new-instance v0, Landroid/window/RemoteTransition;

    invoke-static {v8}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->toRemoteTransition(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    move-object v11, v0

    move-object v8, v10

    :goto_52
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferApplyDividerVisibility()V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object v7, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithAnim(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/RemoteTransition;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueApplyDividerVisibility(Ljava/lang/Runnable;)V

    :cond_6b
    return-void
.end method

.method private startIntentFromPkg(Ljava/lang/String;I)V
    .registers 20

    move-object/from16 v1, p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getStashPositionInMinimized()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v2, v0

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/16 v0, 0x800

    :try_start_1e
    invoke-static {v5, v0}, Lcom/oplus/compat/content/IntentNative;->setOplusFlags(Landroid/content/Intent;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_2e

    :catch_22
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "startIntentFromPkg setOplusFlags for intent error "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    if-eqz v5, :cond_70

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x44000000  # 512.0f

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    :try_start_4b
    iget-object v10, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_58

    goto :goto_70

    :catch_58
    move-exception v0

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startIntentFromPkg e:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    return-void
.end method

.method public static synthetic t(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$removePairIfNeeded$23(ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onRemoteAnimationCancelled$24(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private updateDividerPosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_54

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sideDividerPosition:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_54
    return-void
.end method

.method private updateFakeSplitMode()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableFakeSplitMode:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->FAKE_SPLIT:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->setDividerShow(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->setDividerShow(Z)V

    goto :goto_4d

    :cond_36
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->FAKE_SPLIT:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->removeControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->removeControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showTips()V

    :goto_4d
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_50

    :catch_50
    return-void
.end method

.method private updateSplitStageControlBarRegion(IIZ)V
    .registers 5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_7
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getSplitControlBarLocalBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p3, :cond_1a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    goto :goto_1c

    :cond_1a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    xor-int/lit8 p0, p3, 0x1

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitControlBarRegion(Landroid/graphics/Rect;Z)V

    :cond_24
    return-void
.end method

.method public static synthetic v(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$runWithTransactionDelayed$29(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startPairIntentForSafeControlApp$1(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic x(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$resetStateOnDismissTransitionConsumed$28(ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic y(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$continueApplyDividerVisibility$20(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic z(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startSwapTask$12(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public addOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustTaskStateBeforeExitSplitScreen(ILcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    const/4 v0, -0x1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_48

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setSplitToZoomTaskId(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setSplitToZoomTaskId(I)V

    if-eq p1, v0, :cond_52

    iget-object p0, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_52

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyExitSplitScreen, change:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to zoom"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/16 p2, 0x64

    invoke-virtual {p3, p1, p2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p1, 0x1

    invoke-virtual {p3, p0, p1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_52

    :cond_48
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setSplitToZoomTaskId(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setSplitToZoomTaskId(I)V

    :cond_52
    :goto_52
    return-void
.end method

.method public afterApplyExitSplitScreen(ILcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->hideMenu()V

    :cond_e
    const/4 v0, 0x4

    if-ne v0, p1, :cond_24

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p2, v1, :cond_1d

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_1d
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p2

    invoke-static {v0, p2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_removeSelfSplitTaskIfNeed(II)V

    :cond_24
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitScreenDefer;->reset()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitScreenDefer;->reset()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterSplitScreen:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setIsDropEntering(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetExitSplitType()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskId(I)V

    const/16 v0, 0xc

    if-eq v0, p1, :cond_59

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/o2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/o2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_59
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsRecentsInSplitAnimating:Z

    return-void
.end method

.method public applyMinimalTaskChanges(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDeviceSupport()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getEnableMinimalOverlayStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p0

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_15
    return-void
.end method

.method public attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public breakPairedTaskInRecent(II)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mRecentTasks:Ljava/util/Optional;

    new-instance v0, Lcom/android/launcher3/s;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/s;-><init>(III)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public canDropAtPosition(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-ne v0, p1, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_d

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_d
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->isMinimalTaskOverlayEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public cancelDividerFadeAnimator()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerFadeAnimator()Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, "cancelDividerFadeAnimator"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_18
    return-void
.end method

.method public clearLaunchRootTask(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_9
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1, p1}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    :cond_11
    return-void
.end method

.method public continueApplyDividerVisibility(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    new-instance v1, Lcom/android/wm/shell/splitscreen/f0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/f0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitScreenDefer;->goOn(Ljava/lang/Runnable;)V

    return-void
.end method

.method public continueUpdateSurfaceBounds()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitScreenDefer;->goOn(Ljava/lang/Runnable;)V

    return-void
.end method

.method public creatExtraBundleForRecnets(IIIF)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_41

    if-eqz p0, :cond_41

    new-instance v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;

    invoke-direct {v0}, Lcom/oplus/splitscreen/applock/PendingStartInfo;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    iput p3, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sidePosition:I

    iget-object p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object p3, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    iget p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput p3, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    iget-object p3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object p3, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    iget p3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput p3, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    iput p4, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->splitRatio:F

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p0, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    invoke-static {v0, p2}, Lcom/oplus/splitscreen/applock/AppLockManager;->createExtraBundle(Lcom/oplus/splitscreen/applock/PendingStartInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :cond_41
    return-object p2
.end method

.method public createControlBarMenu()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableControlBarMenu:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/oplus/splitscreen/SplitControlBarMenu;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/splitscreen/SplitControlBarMenu;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/splitscreen/SplitControlBarMenu$SplitControlBarMenuHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    return-void
.end method

.method public createTransitionFinishCallback(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionFinishCallback:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createTransitionFinishCallback, transiton="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deferApplyDividerVisibility()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->defer()V

    return-void
.end method

.method public deferUpdateSurfaceBounds()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->defer()V

    return-void
.end method

.method public delaySetLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isWhiteSwanDevice()Z

    move-result v1

    invoke-virtual {p3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p4, p4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p4, p5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p4, p4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-static {p4}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(I)Z

    move-result p4

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object p5

    invoke-virtual {p5}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result p5

    const/4 v4, 0x1

    if-ne p4, p5, :cond_76

    if-eqz v1, :cond_75

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p5

    if-le p4, p5, :cond_65

    move p4, v4

    goto :goto_66

    :cond_65
    move p4, v0

    :goto_66
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le p5, v1, :cond_72

    move p5, v4

    goto :goto_73

    :cond_72
    move p5, v0

    :goto_73
    if-ne p4, p5, :cond_76

    :cond_75
    return v0

    :cond_76
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFlipDevice()Z

    move-result p4

    if-eqz p4, :cond_81

    return v0

    :cond_81
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p4

    if-eqz p4, :cond_8c

    return v0

    :cond_8c
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p4

    if-nez p4, :cond_a1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result p4

    if-nez p4, :cond_a1

    return v0

    :cond_a1
    invoke-static {}, Lcom/android/wm/shell/ShellMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    if-nez p4, :cond_a8

    return v0

    :cond_a8
    sget-object p5, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delaySetLayoutOffsetTarget configBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",rootBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unfold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p5, Lcom/android/common/util/e;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/android/common/util/e;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;IILcom/android/wm/shell/common/split/SplitLayout;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p4, p5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4
.end method

.method public enterMinimizedSplit(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_8d

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    if-eqz v1, :cond_8d

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterMinimizedSplit(I)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result p1

    if-nez p1, :cond_19

    return-void

    :cond_19
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_53

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_53

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->sendRecommendAppListToLauncher(Ljava/lang/String;Landroid/content/Context;)V

    :cond_53
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p1, :cond_8d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz p1, :cond_8d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_8d

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_8d

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->sendRecommendAppListToLauncher(Ljava/lang/String;Landroid/content/Context;)V

    :cond_8d
    return-void
.end method

.method public enterNormalSplit()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterNormalSplit(Z)V

    return-void
.end method

.method public exitMinimizedSplit(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitMinimizedSplit(Z)V

    :cond_7
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    return-void
.end method

.method public exitSplitScreenByType(II)V
    .registers 6

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitSplitScreenByType, toTopTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string p0, "exitSplitScreenByType, split screen is not active"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    const/16 v0, 0xc8

    if-eq p2, v0, :cond_35

    const/16 v0, 0xc9

    if-eq p2, v0, :cond_3c

    goto :goto_6e

    :cond_35
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitSplitScreenWithSlideAnim(I)Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_6e

    :cond_3c
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_52

    :cond_48
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_5e

    move p1, v1

    goto :goto_5f

    :cond_5e
    move p1, v0

    :goto_5f
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p2, v2, :cond_65

    move p2, v1

    goto :goto_66

    :cond_65
    move p2, v0

    :goto_66
    if-ne p2, p1, :cond_69

    move v0, v1

    :cond_69
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(ZZ)V

    :goto_6e
    return-void
.end method

.method public findTaskInfo(ZI)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->findTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->findTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getMainStageBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_21

    :cond_15
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method public getMinimizedStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p0

    return-object p0
.end method

.method public getMinimizedToNormalRemoteTransition()Landroid/window/RemoteTransition;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getMinimizedToNormalRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p0

    return-object p0
.end method

.method public getPkgInMinimized()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getPkgInMinimized()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRootBounds()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getRootTaskId()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    return p0
.end method

.method public getSideStageBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_21

    :cond_15
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method public getSplitAppName()Ljava/util/HashMap;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSplitScreenMode()Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz v0, :cond_55

    :cond_17
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_55

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_3c

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "primaryAppName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_54

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "secondaryAppName"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    return-object v0

    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    return-object p0
.end method

.method public getSplitRatio()F
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le p0, v0, :cond_34

    const/4 v2, 0x1

    :cond_34
    if-eqz v2, :cond_37

    return v1

    :cond_37
    return v3
.end method

.method public getSplitTransitionExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object p0

    return-object p0
.end method

.method public getSplitTransitions()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    return-object p0
.end method

.method public getStageByChildTaskId(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    return-object p0

    :cond_10
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    return-object p0

    :cond_1b
    return-object v0
.end method

.method public getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_d

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_d

    return-object v0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1a

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v0, :cond_1a

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStagePackageName(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_17
    return-object p0
.end method

.method public getSurfaceForTask(I)Landroid/view/SurfaceControl;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->peekTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getTargetPosTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_d
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v1

    if-nez v1, :cond_18

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_1a

    :cond_18
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_1a
    if-eqz p1, :cond_1f

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_1f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getTargetStageBounds(Lcom/android/wm/shell/splitscreen/StageTaskListener;)Landroid/graphics/Rect;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method public getTargetStageById(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isRootTaskId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    return-object p0

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isRootTaskId(I)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetStartingWindowTaskId()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTargetStartingWindowTaskId:I

    return p0
.end method

.method public getZoomTaskSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getZoomTaskSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public handleAfterRemoteTransitionStart(Landroid/os/IBinder;Landroid/window/TransitionInfo;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 7

    iget p1, p3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    const/16 p2, 0x44d

    if-ne p1, p2, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterNormalSplit()V

    :cond_9
    return-void
.end method

.method public handleBeforeRemoteTransitionStart(Landroid/os/IBinder;Landroid/window/TransitionInfo;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 7

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string p1, "handleBeforeRemoteTransitionStart"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleChangingFocusedTaskTransitionIfNeed(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsChangingFocusedTask:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    if-eqz v0, :cond_11

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsChangingFocusedTask:Z

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->restoreDragStageLeashIfNeed(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0

    :cond_11
    return v1
.end method

.method public handlePendingDismissTransition(Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 11

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getExitSplitType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_64

    if-ne v0, v2, :cond_64

    iget v0, p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_64

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitMinimizedSplit(Z)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p3, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz p3, :cond_28

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p3, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz p3, :cond_28

    move p3, v2

    goto :goto_29

    :cond_28
    move p3, v3

    :goto_29
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isSplitScreenGestureSnapshotRunning()Z

    move-result p4

    if-nez p3, :cond_3f

    if-eqz p4, :cond_36

    goto :goto_3f

    :cond_36
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p2, p1, p5, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onTransitionFinished()V

    return v2

    :cond_3f
    :goto_3f
    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "hook dismiss-top in handlePendingDismissTransition, bothHasChild="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isSplitScreenGestureSnapshotRunning="

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iput p0, p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    return v3

    :cond_64
    iget p0, p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    if-ne p0, v2, :cond_ac

    move p0, v3

    :goto_69
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_ac

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p2

    const/4 p5, 0x6

    if-ne p2, p5, :cond_a9

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "reset position for "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " when EXIT_REASON_APP_DOES_NOT_SUPPORT_MULTIWINDOW."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return v3

    :cond_a9
    add-int/lit8 p0, p0, 0x1

    goto :goto_69

    :cond_ac
    return v3
.end method

.method public handlePendingEnterTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 14

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1b

    if-eq v0, v2, :cond_1b

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1b

    invoke-static {v0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isEnterMinimizedBySplitBarMenu(I)Z

    move-result v3

    if-eqz v3, :cond_a5

    :cond_1b
    invoke-static {p5}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isEnterMinimizedTransition(I)Z

    move-result v3

    if-eqz v3, :cond_a5

    const/16 v3, 0x44f

    if-ne p5, v3, :cond_27

    move p5, v2

    goto :goto_28

    :cond_27
    move p5, v1

    :goto_28
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v3

    if-ne v3, p5, :cond_31

    move v1, v2

    :cond_31
    if-eqz v1, :cond_36

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_38

    :cond_36
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_38
    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_43

    :cond_3f
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v4

    :goto_43
    sget-object v5, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "start enter minimizedSplit transition, enterMinimizedType = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/oplus/splitscreen/DividerConstant;->enterMinimizedTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", stagePosition = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isSideStage = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", stageBounds = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, p1, p4, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object p1, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget p6, v4, Landroid/graphics/Rect;->left:I

    int-to-float p6, p6

    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p3, p1, p6, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget v0, Lcom/android/wm/shell/R$dimen;->split_rounded_corner_size:I

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p1, p3, p6}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterMinimizedSplit(I)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p1, p2, p4}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->buildFinishTransactionForEnterMinimized(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onTransitionFinished()V

    return v2

    :cond_a5
    return v1
.end method

.method public handleRotationTransition(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string p2, "handleRotationTransition for minimizedSplit"

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->restoreMinimizedState(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_11
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInNormalSplitScreenMode()Z

    move-result p1

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_90

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p3, p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleRotationTransition in landscape for normal split, sideBounds "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mainBounds "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    return-void
.end method

.method public handleTransitionInNormalSplitScreenModeIfNeed(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 11

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isReplaceByZoomDrag(I)Z

    move-result p5

    if-eqz p5, :cond_5e

    invoke-static {p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getReplaceByZoomDragType(I)I

    move-result p5

    invoke-static {p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getTaskIdForZoomDrag(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5e

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5e

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v3, p1, :cond_25

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getParentTaskId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    const/16 v2, 0xc

    if-ne p5, v2, :cond_49

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_4b

    :cond_49
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_4b
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p4, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_25

    :cond_5e
    const/4 p0, 0x0

    return p0
.end method

.method public hasChildTask(Z)Z
    .registers 2

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->hasChildTask()Z

    move-result p0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->hasChildTask()Z

    move-result p0

    return p0
.end method

.method public hideDividerMenu()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    :cond_7
    return-void
.end method

.method public hideImeDimLayerWhenRemoveImeSurface()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_d

    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_d
    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_14
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p0, :cond_26

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v0, "hideImeDimLayerWhenRemoveImeSurface fail, null SplitLayout"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->hideImeDimLayerWhenRemoveImeSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public hideTips()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableSplitTips:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->hideTipsIfNeed(Z)V

    :cond_16
    return-void
.end method

.method public hideTipsNoRecord()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableSplitTips:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->hideTipsIfNeed(Z)V

    :cond_16
    return-void
.end method

.method public hideZoomWindowWhenSplitPairStart(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)Z
    .registers 20

    move v2, p1

    move v4, p3

    move-object v1, p0

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eqz v5, :cond_6e

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    :goto_18
    if-ltz v5, :cond_6e

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TaskAppearedInfo;

    if-eqz v6, :cond_6b

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_6b

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-nez v6, :cond_35

    return v3

    :cond_35
    sget-object v7, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v8, "hideZoomWindowWhenSplitPairStart mainTaskId:"

    const-string v10, " sideTaskId:"

    const-string v11, " mTaskInfo:"

    invoke-static {v8, p1, v10, p3, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v8, v10, v7}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v6, v2, :cond_4c

    if-ne v6, v4, :cond_6b

    :cond_4c
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusZoomWindowManager_hideZoomWindow(I)V

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v10

    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$14;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$14;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    invoke-virtual {v10, v11}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    return v9

    :cond_6b
    add-int/lit8 v5, v5, -0x1

    goto :goto_18

    :cond_6e
    return v3
.end method

.method public hookAnimatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 12

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result p1

    const/4 p4, 0x6

    if-ne p1, p4, :cond_7e

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result p1

    if-nez p1, :cond_7e

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {p4}, Lcom/oplus/splitscreen/DividerUtils;->getHomeAndRecentsTasks(Lcom/android/wm/shell/ShellTaskOrganizer;)Ljava/util/List;

    move-result-object p4

    const/4 p5, 0x0

    :goto_22
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_76

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v3, v4, :cond_40

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_40

    :cond_73
    add-int/lit8 p5, p5, 0x1

    goto :goto_22

    :cond_76
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_7e
    return-void
.end method

.method public hookCancelPendingEnter(I)I
    .registers 4
    .param p1  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_15

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setSplitsVisible(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startHome()V

    const/4 p0, -0x1

    return p0

    :cond_15
    return p1
.end method

.method public hookFinishTransactionOnFinish(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookFinishTransactionOnFinish, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEnteringMinimized()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_22
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->restoreMinimizedState(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->hookFinishTransactionOnFinish(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    :cond_2a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInNormalSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_99

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_46
    :goto_46
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_99

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v3

    if-eqz v3, :cond_46

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_46

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-object v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v4, "hookFinishTransactionOnFinish change.getLeash(): "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetStage.mRootLeash: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_99
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_ac

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    :cond_ac
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->dealBottomTaskPositionWhenShowIme(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public hookRemoteHandlerOnTransitionFinished(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)Z
    .registers 7

    sget-object p2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string p3, "hookRemoteHandlerOnTransitionFinished"

    invoke-static {p2, p3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    const/16 p3, 0x3ec

    if-ne p1, p3, :cond_7a

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result p1

    const/16 p3, 0xe

    if-ne p1, p3, :cond_7a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-eqz p1, :cond_7a

    :try_start_2e
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object p3

    const/high16 p4, 0x3f800000  # 1.0f

    invoke-virtual {p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return p2

    :cond_5d
    const/4 p0, 0x0

    invoke-interface {p5, p6, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_61} :catch_63

    const/4 p0, 0x1

    return p0

    :catch_63
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "hookRemoteHandlerOnTransitionFinished error, "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    return p2
.end method

.method public hookStartTransactionForOpeningActivityRecord(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_43

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_40

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v2, "hookStartTransactionForOpeningActivityRecord for "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_40
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_43
    return-void
.end method

.method public inGestureAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mInGestureAnimation:Z

    return p0
.end method

.method public inSwapAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    return p0
.end method

.method public interceptStartTaskOrIntentToSplit(ILandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 17

    move-object v8, p0

    move v7, p1

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_51

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_51

    :cond_14
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSplitScreenMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_27

    return v1

    :cond_27
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v2

    iput-boolean v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v3, -0x1

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez v0, :cond_41

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez v0, :cond_41

    return v1

    :cond_41
    new-instance v10, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$12;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$12;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V

    invoke-virtual {p0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->addOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V

    :cond_51
    :goto_51
    return v9
.end method

.method public isActivityTransitionInSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4

    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    if-ne p0, v0, :cond_22

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public isApplyDividerVisibilityDeferred()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->isDeferred()Z

    move-result p0

    return p0
.end method

.method public isCompactWindowWhenStartWithLegacyTransition(I)Z
    .registers 7

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_20
    if-ltz v0, :cond_5e

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v4, p1, :cond_5b

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_5b

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is compact window when startWithLegacyTransition"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_5e
    return v1
.end method

.method public isCtsPackage(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mCtsPkgList:Ljava/util/List;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string p1, "isCtsPackage main cn = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",taskId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_48
    const/4 p0, 0x0

    return p0
.end method

.method public isEncryptAndNoPassApp(Landroid/content/Intent;I)Z
    .registers 9

    invoke-static {p2}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isPrivacySwitchStateEnable(I)Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptPass(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_1f
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    sget-object v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEncryptPassApp() isEncryptedPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",packName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",userId="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",isEncryptAndNoPassApp="

    const-string v0, ",isEnable="

    invoke-static {v3, p2, p1, v1, v0}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v3, p0, v2}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
.end method

.method public isEnteringMinimized()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isEnteringMinimized()Z

    move-result p0

    return p0
.end method

.method public isEnteringMinimizedOrInMinimized()Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isEnteringMinimized()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isMinimized()Z

    move-result p0

    if-eqz p0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public isExiting()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExiting:Z

    return p0
.end method

.method public isIncludeTask(ZI)Z
    .registers 3

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->isIncludeTask(I)Z

    move-result p0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->isIncludeTask(I)Z

    move-result p0

    return p0
.end method

.method public isLandscape()Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p0, :cond_13

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v0, "isLandscape fail, null SplitLayout"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_13
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public isMainStageActive()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isMinimized()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isMinimized()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isRecentsInSplitAnimating()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsRecentsInSplitAnimating:Z

    return p0
.end method

.method public isSplitDecorManagerIdle(Z)Z
    .registers 2

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isSplitDecorManagerIdle()Z

    move-result p0

    return p0

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isSplitDecorManagerIdle()Z

    move-result p0

    return p0
.end method

.method public isStartFromSafeControlTransition(Landroid/window/TransitionInfo;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_50

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->getStartFromSafeControl()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_50

    :cond_e
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_15
    const/4 v5, 0x2

    if-ltz v2, :cond_4b

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_48

    invoke-virtual {p0, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    if-ne v6, v5, :cond_44

    iget-object v5, v7, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_44

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.oplus.safecenter/com.oplus.safecenter.privacy.view.password.AppUnlockPasswordActivity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    move v3, v1

    goto :goto_48

    :cond_44
    if-eqz v8, :cond_48

    add-int/lit8 v4, v4, 0x1

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_4b
    if-eqz v3, :cond_50

    if-ne v4, v5, :cond_50

    move v0, v1

    :cond_50
    :goto_50
    return v0
.end method

.method public isTargetStartingWindowOnTop()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsTargetStartingWindowOnTop:Z

    return p0
.end method

.method public isUpdateSurfaceBoundsDeferred()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->isDeferred()Z

    move-result p0

    return p0
.end method

.method public lockOrientation()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetOrientation:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setSplitRequestedOrientation(I)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, "lockOrientation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetOrientation:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public maintainSplitToZoomTaskState(IZ)V
    .registers 3

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_maintainSplitToZoomTaskState(IZ)V

    return-void
.end method

.method public moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)Z
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "moveToSplitScreen fail, null SplitLayout"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_14
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_25

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "moveToSplitScreen fail, null mainTaskInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_25
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3, p5, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3, v2, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_3f
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBoundsWrapper(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v3, v1}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    if-nez p4, :cond_63

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_63
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v1

    invoke-virtual {p1, p4, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitRequest(Landroid/content/Intent;I)V

    if-nez p3, :cond_7c

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_7c
    const/high16 p1, 0x40000

    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p2, p3, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v2}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/splitscreen/n1;

    invoke-direct {p2, p0, v0, v4}, Lcom/android/wm/shell/splitscreen/n1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return v4
.end method

.method public needEnterMinimizedSplit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    return p0
.end method

.method public needEnterNormalSplitWithoutEnterTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 15

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "needEnterNormalSplitWithoutEnterTransition"

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x451

    if-eq p1, v1, :cond_1b

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p1

    if-eqz p1, :cond_73

    :cond_1b
    invoke-static {p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getToTopTaskInfoFromTransitionInfo(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    move-object v5, v2

    move-object v6, v5

    :goto_2a
    if-ltz p2, :cond_5e

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getTargetStageById(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v8

    if-eqz v8, :cond_44

    move v4, v1

    move-object v6, v8

    :cond_44
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v8, v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v8

    if-eqz v8, :cond_50

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_4e
    move v3, v1

    goto :goto_5b

    :cond_50
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v8, v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v7

    if-eqz v7, :cond_5b

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_4e

    :cond_5b
    :goto_5b
    add-int/lit8 p2, p2, -0x1

    goto :goto_2a

    :cond_5e
    if-eqz v3, :cond_73

    if-eqz v4, :cond_73

    if-ne v5, v6, :cond_73

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterNormalSplit(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p5, v2, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return v1

    :cond_73
    return v0
.end method

.method public needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public needRestoreMinimizedState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedRestoreMinimizedState:Z

    return p0
.end method

.method public notifyOnStageHasChildrenChange(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;->onStageHasChildrenChanged(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public notifySplitDragAnimationEnd(Z)V
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitDragAnimationEnd(Z)V

    return-void
.end method

.method public notifySplitDragAnimationStart(Z)V
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitDragAnimationStart(Z)V

    return-void
.end method

.method public onAddSplitPair(II)V
    .registers 6

    const-string v0, "com.tencent.mm"

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableFakeSplitMode:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p2, :cond_33

    if-eqz p1, :cond_33

    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v1, v2, :cond_33

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setFakeSplitMode(Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_37

    :catch_37
    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->refreshDividerView(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDividerStartDrag()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result v1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->getCurrentLetterbox(II)[Landroid/graphics/Rect;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResizeStart(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResizeStart(Landroid/graphics/Rect;)V

    :cond_38
    return-void
.end method

.method public onFoldedStateChanged(Z)V
    .registers 4

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    if-eqz v0, :cond_25

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFoldedStateChanged   hideCurrentInputMethod"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->getInstance()Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->hideCurrentInputMethod()V

    :cond_25
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    :cond_2c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->hideMenu()V

    :cond_33
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFoldedStateChange:Z

    :cond_3e
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_45

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->onFoldedStateChanged(Z)V

    :cond_45
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onKeyguardVisibilityChanged KeyguardShowing="

    const-string v2, " isScreenOn:"

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    if-eqz p1, :cond_33

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_33

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 p1, -0x1

    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    :cond_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_4e

    if-eqz v1, :cond_4e

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateDimLayerForImeWhenKeyguardVisibilityChanged(Z)V

    :cond_4e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-nez v0, :cond_64

    if-nez p0, :cond_64

    if-eqz p1, :cond_64

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeChanged(Z)V

    :cond_64
    return-void
.end method

.method public onPreRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1d

    :cond_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onUnfoldStateChanged(Ljava/lang/Boolean;)V

    :cond_1d
    return-void
.end method

.method public onRemoteAnimationCancelled(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setDividerRemoteAnimating(Z)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setSplitRequestedOrientation(I)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, " onRemoteAnimationCancelled mMainStage:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSideStage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/h2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/h2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_4b

    :cond_47
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setShouldUpdateRecents(Z)V

    :goto_4b
    return-void
.end method

.method public onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v0}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v1}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    sget-object v1, Lcom/android/wm/shell/splitscreen/t1;->a:Lcom/android/wm/shell/splitscreen/t1;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_31

    :cond_1e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_38
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/oplus/splitscreen/DividerMenu;->notifyConfigurationChanged()V

    :cond_3f
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateFakeSplitMode()V

    return-void
.end method

.method public onRotateChanged(II)V
    .registers 6

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRotateChanged  fromRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",toRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_39

    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    if-eqz p2, :cond_36

    :cond_28
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2d

    if-eqz p2, :cond_36

    :cond_2d
    const/4 v2, 0x2

    if-ne p1, v1, :cond_32

    if-eq p2, v2, :cond_36

    :cond_32
    if-ne p1, v0, :cond_39

    if-ne p2, v2, :cond_39

    :cond_36
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->swapMiniPositionWhenTabletDevice()Z

    :cond_39
    return-void
.end method

.method public onStageChildTaskStatusChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V
    .registers 5

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne p1, p4, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    if-eqz p3, :cond_1d

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->findTaskInfo(ZI)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_13

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_14

    :cond_13
    move-object p0, p2

    :goto_14
    if-eqz p0, :cond_18

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_18
    if-eqz p2, :cond_1d

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->setAppUsageStartTimeAndPkgName(ZLjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onStageHasChildrenChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Z)V
    .registers 10

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_a

    move p1, v2

    goto :goto_b

    :cond_a
    move p1, v3

    :goto_b
    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onStageHasChildrenChanged() isDropToNormal="

    const-string v5, " hasChildren="

    const-string v6, ",isSideStage="

    invoke-static {v4, p2, v5, v0, v6}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mainStage(mHasChildren="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isActive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "),,mSideStage(mHasChildren="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v4, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v4, :cond_b2

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v5, :cond_b2

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_a5

    const-string/jumbo p2, "onStageHasChildrenChanged() enterNormalSplit return"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x320

    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterSplitScreen:Z

    if-eqz p2, :cond_89

    const-string/jumbo p2, "none transition for enter normal split when minimized"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    :cond_89
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasMinimizedTransitionFinished()Z

    move-result p2

    if-eqz p2, :cond_95

    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterSplitScreen:Z

    if-eqz p2, :cond_ae

    :cond_95
    const-string p2, "Force enterNormalSplit when minimized wct transition not complete cause no normal transition will play!"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v6, Lcom/android/wm/shell/splitscreen/u1;

    invoke-direct {v6, p0, v2}, Lcom/android/wm/shell/splitscreen/u1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;I)V

    invoke-interface {p2, v6, v4, v5}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_ae

    :cond_a5
    const-string/jumbo p2, "onStageHasChildrenChanged() enterNormalSplit"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterNormalSplit()V

    :cond_ae
    :goto_ae
    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterSplitScreen:Z

    goto/16 :goto_14b

    :cond_b2
    if-nez v4, :cond_e7

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez v5, :cond_e7

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_d0

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->hasPendingEnter()Z

    move-result p2

    if-eqz p2, :cond_d0

    const-string p2, "has pendingEnterTransiiton, do not exitMinimizedSplit"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d9

    :cond_d0
    const-string/jumbo p2, "onStageHasChildrenChanged() exitMinimizedSplit"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitMinimizedSplit(Z)V

    :goto_d9
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isApplyDividerVisibilityDeferred()Z

    move-result p2

    if-eqz p2, :cond_e4

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitScreenDefer;->reset()V

    :cond_e4
    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterSplitScreen:Z

    goto :goto_14b

    :cond_e7
    if-eqz v4, :cond_104

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_f4

    const-string/jumbo p2, "onStageHasChildrenChanged() enterMinimizedSplit from mian return"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    :cond_f4
    const-string/jumbo p2, "onStageHasChildrenChanged() enterMinimizedSplit from main"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterMinimizedSplit(I)V

    goto :goto_14b

    :cond_104
    if-eqz p2, :cond_10d

    const-string/jumbo p2, "onStageHasChildrenChanged() needEnterNormal so return"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    :cond_10d
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result p2

    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v3, :cond_13c

    if-ne p2, v2, :cond_126

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v3

    if-nez v3, :cond_126

    goto :goto_13c

    :cond_126
    const-string/jumbo v3, "onStageHasChildrenChanged() enterMinimizedSplit from side return, for "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/oplus/splitscreen/DividerConstant;->enterMinimizedTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    :cond_13c
    :goto_13c
    const-string/jumbo p2, "onStageHasChildrenChanged() enterMinimizedSplit from side"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterMinimizedSplit(I)V

    :goto_14b
    if-eqz v0, :cond_158

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_158
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    if-nez p2, :cond_164

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p2

    if-nez p2, :cond_1a8

    :cond_164
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result p2

    if-nez p2, :cond_1a8

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result p2

    if-nez p2, :cond_1a8

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    const/4 v0, 0x2

    if-nez p2, :cond_18f

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v3, :cond_18f

    const-string/jumbo p2, "onStageHasChildrenChanged() exitSplitScreen from side"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    goto :goto_1a8

    :cond_18f
    if-eqz p2, :cond_1a8

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p2, :cond_1a8

    const-string/jumbo p2, "onStageHasChildrenChanged() exitSplitScreen from main"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    :cond_1a8
    :goto_1a8
    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->notifyOnStageHasChildrenChange(Z)V

    return-void
.end method

.method public onStageRootTaskAppeared()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0, v1, p0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_notifySplitRootTaskId(III)V

    :cond_21
    return-void
.end method

.method public onStageTaskInfoChanged(ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->onStageTaskInfoChanged(ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onStageVisibilityChanged()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    sget-object v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStageVisibilityChanged mainVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",sideVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_61

    if-eqz v1, :cond_48

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz v2, :cond_48

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v5

    if-ne v2, v5, :cond_48

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/q1;

    invoke-direct {v2, p0, v1, v4}, Lcom/android/wm/shell/splitscreen/q1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZI)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_a0

    :cond_48
    if-eqz v0, :cond_a0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz v1, :cond_a0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v2

    if-ne v1, v2, :cond_a0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/q1;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/wm/shell/splitscreen/q1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZI)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_a0

    :cond_61
    if-eqz v0, :cond_87

    if-eqz v1, :cond_87

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitRatio()F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeChanged(ZF)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_83

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    :cond_83
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetIsEnteringMinimized()V

    goto :goto_a0

    :cond_87
    if-nez v0, :cond_a0

    if-nez v1, :cond_a0

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeChanged(Z)V

    :cond_96
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskId(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetIsEnteringMinimized()V

    :cond_a0
    :goto_a0
    return-void
.end method

.method public onStartTaskToSplit()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setNeedEnterMinimizedSplit()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getStartType()I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v2, 0x3

    if-ne v0, v2, :cond_26

    :cond_21
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateTaskBounds()V

    :cond_26
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v2, :cond_33

    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v3, :cond_30

    if-eq v0, v1, :cond_33

    :cond_30
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->onStartTaskToSideStage()V

    :cond_33
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->getPendingEnterSplitTaskId()I

    move-result v2

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->getPendingEnterSplitTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-ne v0, v1, :cond_64

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-nez v0, :cond_64

    if-eqz v2, :cond_64

    if-eqz v3, :cond_64

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-direct {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isInExcludeStartingWindowPkgList(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_64

    invoke-static {v2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_hideTargetSplashScreen(I)V

    :cond_64
    return-void
.end method

.method public onStartingWindowAdding(Landroid/window/StartingWindowInfo;)V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartingWindowAdding, info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isInExcludeStartingWindowPkgList(Landroid/window/StartingWindowInfo;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    iget-object p1, p1, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsTargetStartingWindowOnTop:Z

    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTargetStartingWindowTaskId:I

    return-void
.end method

.method public onStartingWindowRemoving(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartingWindowRemoving, info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsTargetStartingWindowOnTop:Z

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTargetStartingWindowTaskId:I

    iget p1, p1, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    if-ne v0, p1, :cond_28

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsTargetStartingWindowOnTop:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTargetStartingWindowTaskId:I

    :cond_28
    return-void
.end method

.method public onTransitionAnimationComplete()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExiting:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->onTransitionAnimationComplete()V

    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 7

    sget-object p3, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTransitionConsumed, aborted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget p2, p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_41

    const/4 v0, 0x3

    if-eq p1, v0, :cond_41

    if-eq p1, v1, :cond_41

    const/4 v0, 0x6

    if-eq p1, v0, :cond_41

    invoke-static {p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isEnterMinimizedBySplitBarMenu(I)Z

    move-result v0

    if-eqz v0, :cond_94

    :cond_41
    invoke-static {p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isEnterMinimizedTransition(I)Z

    move-result v0

    if-eqz v0, :cond_94

    const/16 v0, 0x44f

    const/4 v2, 0x0

    if-ne p2, v0, :cond_4e

    move p2, v1

    goto :goto_4f

    :cond_4e
    move p2, v2

    :goto_4f
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-ne v0, p2, :cond_58

    goto :goto_59

    :cond_58
    move v1, v2

    :goto_59
    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_64

    :cond_60
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_64
    const-string/jumbo v2, "start enter minimizedSplit transition, enterMinimizedType = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerConstant;->enterMinimizedTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", stagePosition = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isSideStage = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", stageBounds = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterMinimizedSplit(I)V

    :cond_94
    return-void
.end method

.method public onTransitionFinished()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public onTransitionFinished(Landroid/os/IBinder;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionFinishCallback:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->onFinished(Landroid/os/IBinder;)V

    :cond_7
    return-void
.end method

.method public onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionFinishCallback:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->update(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_7
    return-void
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    return-void
.end method

.method public onTransitionStarting(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 4

    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lastExitMethod:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    iget-object p1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    const-string/jumbo v0, "topChildTaskId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_12

    return-void

    :cond_12
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mRecentTasks:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/splitscreen/o;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/o;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1d
    return-void
.end method

.method public postDelayExitSplitScreen()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExitSplitForOneSideVisible:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public preHandleRequest(Landroid/window/TransitionRequestInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/IBinder;)V
    .registers 9

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->setSafeAppFinishIfneed(Z)V

    if-eqz p1, :cond_87

    if-nez p2, :cond_e

    goto/16 :goto_87

    :cond_e
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransitionBinder:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p3

    invoke-static {p3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p3

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    iget v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    move v1, v2

    :cond_28
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v3

    if-eqz p3, :cond_3b

    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setIsOpeningFullApp(I)V

    :cond_3b
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oplus/splitscreen/applock/AppLockManager;->notifySafeAppFinishIfneed(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_4c
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_62

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "preHandleRequest, type = TRANSIT_RELAUNCH."

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->setAppReLaunchRequest(Z)V

    :cond_62
    if-eqz v3, :cond_87

    if-eqz p3, :cond_87

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isActivityTransitionInSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_87

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->setIsActivityTransitionInSplit()V

    :cond_87
    :goto_87
    return-void
.end method

.method public preStartTasksFromRecents(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/os/Bundle;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "set_force_divider_orientation"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_11

    if-eq p2, v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result v2

    if-ne p2, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eq v2, v1, :cond_4c

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->toggleDividerOrientation()V

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->forceUpdateLayout()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_4c
    return-void
.end method

.method public prepareEvictChildTasks(ILandroid/window/WindowContainerTransaction;)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-nez v1, :cond_9

    goto :goto_17

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p1, p0, :cond_13

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    goto :goto_16

    :cond_13
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    :goto_16
    return-void

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "prepareEvictChildTasks mSideStage or mMainStage is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareExitSplitScreenUncheck(ILandroid/window/WindowContainerTransaction;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    invoke-virtual {v0, p2, v3}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-nez p1, :cond_11

    move v1, v2

    :cond_11
    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public refreshDividerView(Landroid/content/res/Configuration;)V
    .registers 5

    if-eqz p1, :cond_2f

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_2f

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUiMode:I

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "oldDarkMode not equal newDarkMode:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUiMode:I

    invoke-static {v1, v2, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->hasInit()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->splitWindowManager_setConfiguration(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/content/res/Configuration;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2f
    return-void
.end method

.method public removeExitSplitScreenRunnable()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExitSplitForOneSideVisible:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    :cond_13
    return-void
.end method

.method public removePairIfNeeded(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result p1

    goto :goto_26

    :cond_1c
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result p1

    :goto_26
    if-lez p1, :cond_33

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mRecentTasks:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/splitscreen/o;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/o;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_33
    return-void
.end method

.method public resetDividerVisibilityDefer()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isApplyDividerVisibilityDeferred()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->reset()V

    :cond_b
    return-void
.end method

.method public resetDragState()V
    .registers 3

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetDragState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setAnimationState(Z)V

    return-void
.end method

.method public resetEnterNormalType()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetEnterNormalType:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateEnterNormalType(I)V

    return-void
.end method

.method public resetIsEnteringMinimized()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetIsEnteringMinimized:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenEnteringMinimized(Z)V

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetIsEnteringMinimized"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public resetOrientation()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetOrientation:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setSplitRequestedOrientation(I)V

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetOrientation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public resetStateOnDismissTransitionConsumed(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/pip/g;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/g;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setIsDropEntering(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetExitSplitType()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mRecentTasks:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/splitscreen/o;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/o;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restoreMinimizedState(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->restoreMinimizedState(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public restoreSideStageAlphaIfNeed(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->restoreSideStageAlphaIfNeed(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public runWithTransaction(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;->runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public runWithTransactionDelayed(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;J)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/f0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/f0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAnimationState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mInGestureAnimation:Z

    return-void
.end method

.method public setDividerRemoteAnimating(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_6
    const-string v1, "mIsDividerRemoteAnimating"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_19

    :catchall_19
    return-void
.end method

.method public setDividerShown(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerShown:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerShown:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    if-nez p0, :cond_16

    return-void

    :cond_16
    if-eqz p1, :cond_1e

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_22

    :cond_1e
    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_22
    return-void
.end method

.method public setDropAnimalStatus(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setDropAnimalStatus(Z)V

    :cond_7
    return-void
.end method

.method public setEnterNormalType(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetEnterNormalType:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateEnterNormalType(I)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetEnterNormalType:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setIsChangingFocusedTaskTransition()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsChangingFocusedTask:Z

    return-void
.end method

.method public setIsEnteringMinimized()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetIsEnteringMinimized:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenEnteringMinimized(Z)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsEnteringMinimized"

    invoke-static {v0, v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mResetIsEnteringMinimized:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setIsExiting(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExiting:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExiting:Z

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenExiting(Z)V

    return-void
.end method

.method public setIsRecentsInSplitAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsRecentsInSplitAnimating:Z

    return-void
.end method

.method public setMinimizedStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setSplitStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_7
    return-void
.end method

.method public setNeedEnterMinimizedSplit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    return-void
.end method

.method public setNeedEnterSplitScreenNormal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterSplitScreen:Z

    return-void
.end method

.method public setNeedRestoreMinimizedState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedRestoreMinimizedState:Z

    return-void
.end method

.method public setResizingSplits(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->setResizingSplits(Z)V

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    :cond_e
    return-void
.end method

.method public setShouldUpdateRecents(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_6
    const-string/jumbo v1, "mShouldUpdateRecents"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1a

    :catchall_1a
    return-void
.end method

.method public setSplitRequestedOrientation(I)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitRequestedOrientation(I)V

    return-void
.end method

.method public setSplitTaskLayerHierarchy(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainSurface()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public setSplitsVisible(Z)V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSplitsVisible in EXT, visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    return-void
.end method

.method public setWallpaperVisible(Z)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setWallpaperVisible(Z)V

    return-void
.end method

.method public showDividerMenu()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->onDividerClicked()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenu;->showMenuIfNeed()V

    :cond_c
    return-void
.end method

.method public showTips()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableSplitTips:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v1, :cond_39

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->showTipsIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    :cond_39
    return-void
.end method

.method public showTipsOnFoldedStateChange()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFoldedStateChange:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showTips()V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFoldedStateChange:Z

    return-void
.end method

.method public startDimAnimationForDragSplitToZoom()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startDimAnimationForDragSplitToZoom()V

    :cond_7
    return-void
.end method

.method public startHome()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.android.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startHome"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 22

    move-object v8, p1

    move-object v0, p2

    if-nez v0, :cond_24

    move-object v1, p0

    iget-object v9, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    new-instance v11, Lcom/android/wm/shell/splitscreen/w1;

    move-object v0, v11

    move-object v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/w1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/wm/shell/ShellTaskOrganizer;->screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    goto :goto_46

    :cond_24
    move-object v1, p0

    new-instance v2, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v5, p4

    invoke-direct {v2, p2, v3, v5, v4}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    :goto_46
    return-void
.end method

.method public startIntentInMinimize(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 13

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result p3

    if-eqz p3, :cond_1b

    :try_start_6
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public startIntentToFullScreen(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 7

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setIsDropEntering(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterNormal(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct {v6, v7, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setMultiAppFlags(Landroid/content/Intent;I)V

    invoke-direct {v6, v8, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setMultiAppFlags(Landroid/content/Intent;I)V

    invoke-virtual/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startPairIntentForSafeControlApp(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntent startPairIntentForSafeControlApp return true"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    new-instance v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;

    invoke-direct {v0}, Lcom/oplus/splitscreen/applock/PendingStartInfo;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    const/4 v10, 0x1

    iput v10, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    iput v9, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sidePosition:I

    iput-object v7, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    iput-object v8, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    iput v1, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    iput v3, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    iput v4, v0, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/oplus/splitscreen/applock/AppLockManager;->createExtraBundle(Lcom/oplus/splitscreen/applock/PendingStartInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v13, "androidx.activity.extra"

    invoke-virtual {v5, v13, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->adjustZoomOrMirageModeWhenPairIntent(Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntent intercept"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_67
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getExitSplitType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7b

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntent intercept, it\'s exit split-screen from return home"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7b
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v0, :cond_8e

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntent fail, null SplitLayout"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8e
    invoke-static/range {p6 .. p6}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictALLChildrenWithoutStartPkg(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictALLChildrenWithoutStartPkg(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;

    invoke-direct {v4, v6, v0, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V

    if-eqz v1, :cond_df

    new-instance v5, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v16

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v18

    move-object v14, v5

    move-object v15, v4

    invoke-direct/range {v14 .. v19}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    goto :goto_e0

    :cond_df
    move-object v5, v11

    :goto_e0
    if-eqz v5, :cond_eb

    invoke-static {v5}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_f3

    :cond_eb
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    :goto_f3
    invoke-virtual {v5, v13, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v12, v9, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_109

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v12, v2, v13}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_109
    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v12, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBoundsWrapper(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v12, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v12, v10}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v12, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v12, v13}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    const-string/jumbo v12, "startUserId"

    move-object/from16 v14, p6

    invoke-virtual {v14, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iget-object v14, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/content/Intent;

    aput-object v7, v11, v13

    aput-object v8, v11, v10

    const/high16 v17, 0x44000000  # 512.0f

    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v19

    move-object/from16 v16, v11

    move-object/from16 v18, v5

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitRequest(Landroid/content/Intent;I)V

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v7}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    sget-boolean v5, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v5, :cond_1b2

    new-instance v0, Landroid/window/RemoteTransition;

    invoke-static {v4}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->toRemoteTransition(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    new-array v4, v10, [Landroid/os/IBinder;

    if-nez v1, :cond_177

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_177

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "use local animation runner."

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/window/RemoteTransition;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;

    invoke-direct {v1, v6, v4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;[Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    invoke-direct {v0, v1}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    :cond_177
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v3, 0x1

    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/16 v6, 0x3ec

    const/4 v7, 0x0

    move-object/from16 p0, v1

    move/from16 p1, v3

    move-object/from16 p2, v2

    move-object/from16 p3, v0

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    invoke-virtual/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    move-result-object v0

    aput-object v0, v4, v13

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startEnterTransition transition:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    goto :goto_1c1

    :cond_1b2
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v2}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/p1;

    invoke-direct {v2, v6, v0, v10}, Lcom/android/wm/shell/splitscreen/p1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_1c1
    return-void
.end method

.method public startPairIntentForSafeControlApp(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)Z
    .registers 22

    move-object v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p6

    const/4 v3, 0x0

    if-nez v2, :cond_9

    return v3

    :cond_9
    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/applock/AppLockManager;->getStartFromSafeControl()Z

    move-result v4

    if-nez v4, :cond_1c

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntentForSafeControlApp getStartFromSafeControl is false"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1c
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitTransitionExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->getPendingDismiss()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_34

    iget v4, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    if-ne v4, v5, :cond_34

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntentForSafeControlApp  last exitSplitScreen is not finish ,not enter normal!"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_34
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v4, :cond_47

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntent fail, null SplitLayout"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_47
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/splitscreen/applock/AppLockManager;->getSplitRatio()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {v4, v6}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    :cond_5c
    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    invoke-static {v13}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->addExtraBundle(Landroid/os/Bundle;)V

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v8, v1, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v8

    if-nez v8, :cond_83

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v8, v6, v3}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_83
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v8, v4, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBoundsWrapper(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v8, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v8, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v8, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v8, v3}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/splitscreen/applock/AppLockManager;->getCurrentStartInfo()Lcom/oplus/splitscreen/applock/PendingStartInfo;

    move-result-object v8

    const/4 v9, -0x1

    if-eqz v8, :cond_bc

    iget v10, v8, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    iget v11, v8, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    if-eq v10, v9, :cond_b9

    if-eq v11, v9, :cond_b9

    move v9, v10

    move v10, v5

    goto :goto_be

    :cond_b9
    move v9, v10

    move v10, v3

    goto :goto_be

    :cond_bc
    move v10, v3

    move v11, v9

    :goto_be
    if-eqz v10, :cond_10e

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v13

    invoke-virtual {v13, v7, v12}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictAllChildren(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v13

    invoke-virtual {v13, v7, v12}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictAllChildren(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v7, v2, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptionsWrapper(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v7, v10, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptionsWrapper(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v8, v8, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    invoke-virtual {v7, v11, v8, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitRequest(ILandroid/content/Intent;I)V

    invoke-virtual {v6, v9, v2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v6, v11, v10}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_15b

    :cond_10e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictALLChildrenWithoutStartPkg(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictALLChildrenWithoutStartPkg(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    const-string/jumbo v7, "startUserId"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v7, 0x2

    new-array v11, v7, [Landroid/content/Intent;

    aput-object p1, v11, v3

    aput-object p2, v11, v5

    const/high16 v12, 0x44000000  # 512.0f

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitRequest(Landroid/content/Intent;I)V

    const/4 v1, 0x0

    invoke-virtual {v6, v2, v1, v1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_15b
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v6}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/n1;

    invoke-direct {v2, p0, v4, v3}, Lcom/android/wm/shell/splitscreen/n1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return v5
.end method

.method public startSwapTask()V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    if-eqz v1, :cond_17

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v0, "already performing swapAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    sget-object v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v3, "begin performing swapAnimation and mPerformingSwapAnimation is "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v0}, Lcom/oplus/splitscreen/DividerUtils;->getDisplayBounds(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v6

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v7

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getDividerSize(Landroid/content/res/Resources;)I

    move-result v7

    const/high16 v8, 0x3f800000  # 1.0f

    if-eqz v6, :cond_65

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v6, v7

    int-to-float v5, v6

    mul-float/2addr v5, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_75

    :cond_65
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v6, v7

    int-to-float v5, v6

    mul-float/2addr v5, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    :goto_75
    int-to-float v4, v4

    div-float/2addr v5, v4

    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_86

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->notifySplitRatioChange()V

    :cond_86
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v4, Lcom/android/wm/shell/splitscreen/r1;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/wm/shell/splitscreen/r1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setShouldUpdateRecents(Z)V

    return-void
.end method

.method public swapSplitStages(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSwapSidePosition(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSwapDividerPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "replaceSplitStages sidePosition:"

    const-string v3, " dividerPosition:"

    const-string v4, " motionStageStartBounds:"

    invoke-static {v2, p1, v3, v0, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " nonMotionStageStartBounds:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(I)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-nez v0, :cond_49

    if-eq p1, p3, :cond_49

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_49
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateImeTargetPosition()V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateDividerPosition(Landroid/view/SurfaceControl$Transaction;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setDividerShown(ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public switchToZoom(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;F)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_6
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/s1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/s1;-><init>(ILandroid/graphics/Rect;F)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public updateDimLayerForImeWhenKeyguardVisibilityChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_d

    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_d
    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_14
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p0, :cond_1f

    return-void

    :cond_1f
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDimLayerForImeWhenKeyguardVisibilityChanged(ZLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public updateEnterNormalType(I)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_updateEnterNormalType(I)V

    return-void
.end method

.method public updateFoldDividerPositionIfNeed(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDeviceSupport()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v0

    if-eqz v0, :cond_43

    :cond_33
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_45

    :cond_43
    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->updateFoldDividerPositionIfNeed(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    :cond_55
    return-void
.end method

.method public updateMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V
    .registers 12

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDeviceSupport()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getEnableMinimalOverlayStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result v2

    if-lez v2, :cond_52

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne v1, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_34

    :cond_30
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    :goto_34
    move-object v5, v3

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getSnapAlgorithmInsets()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->atFirstSplitTarget()Z

    move-result v7

    new-instance v9, Lcom/android/launcher/locateaction/b;

    invoke-direct {v9, p0, v2}, Lcom/android/launcher/locateaction/b;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Z)V

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->enableMinimalTaskOverlay(Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;)V

    :cond_52
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eq v0, v1, :cond_5d

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->disableMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V

    :cond_5d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eq p0, v1, :cond_68

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->disableMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V

    :cond_68
    return-void
.end method

.method public updateMinimizedVisibleSize()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-nez v1, :cond_f

    goto :goto_19

    :cond_f
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->updateMinimizedVisibleSize(Z)V

    return-void

    :cond_19
    :goto_19
    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMinimizedVisibleSize fail,splitLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",mMinimizedSplitManager="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateRecommendAppList(II)V
    .registers 6

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->shouldupdateRecommendAppList()Z

    move-result v0

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getPendingUpdateRecommendAppPair()Landroid/util/Pair;

    move-result-object v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_78

    :cond_c
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz v2, :cond_78

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p1, :cond_78

    if-eqz p0, :cond_78

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_57

    const/4 p2, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_57

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_57

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setPendingUpdateRecommendAppPair(Landroid/util/Pair;)V

    goto :goto_57

    :cond_4b
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setPendingUpdateRecommendAppPair(Landroid/util/Pair;)V

    :cond_57
    :goto_57
    sget-object p2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add or update pkg pair to recommend app list, mainpkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sidePkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->updateRecommendAppList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    return-void
.end method

.method public updateSplitControlBarRegion(II)V
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateSplitStageControlBarRegion(IIZ)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateSplitStageControlBarRegion(IIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    :cond_2a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->hideMenu()V

    :cond_2f
    return-void
.end method
