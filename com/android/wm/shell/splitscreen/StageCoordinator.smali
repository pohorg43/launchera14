.class public Lcom/android/wm/shell/splitscreen/StageCoordinator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;,
        Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;,
        Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StageCoordinator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayId:I

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mDividerVisible:Z

.field private mDividerVisibleForGesture:Z

.field private mExitSplitScreenOnHide:Z

.field private mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field private mFlagEnterNormalWhenDrop:Z

.field private mHasMinimizedTransitionFinished:Z

.field private mIsDirectDragToNormal:Z

.field private mIsDividerRemoteAnimating:Z

.field private mIsDropEntering:Z

.field private mIsExiting:Z

.field private mIsRootTranslucent:Z

.field private mKeyguardShowing:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

.field private final mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field private mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field private final mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

.field private final mPausingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentTasks:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field public mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRootTaskLeash:Landroid/view/SurfaceControl;

.field private mShouldUpdateRecents:Z

.field private mShowDecorImmediately:Z

.field private final mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

.field private final mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mSideStagePosition:I
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation
.end field

.field private mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field private mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

.field private final mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field private final mSplitUnsupportedToast:Landroid/widget/Toast;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V
    .registers 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move/from16 v9, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move/from16 v15, p2

    move-object/from16 v5, p3

    move-object/from16 v4, p4

    move-object/from16 v14, p6

    move-object/from16 v17, p8

    move-object/from16 v6, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v26, v1

    new-instance v1, Landroid/view/SurfaceSession;

    move-object/from16 v27, v2

    move-object v2, v11

    move-object v11, v1

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSurfaceSession:Landroid/view/SurfaceSession;

    move-object/from16 v28, v4

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-object/from16 v29, v5

    move-object v5, v8

    move-object v8, v4

    invoke-direct {v4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-object/from16 v30, v6

    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-object/from16 v31, v8

    move-object v8, v10

    move-object v10, v6

    invoke-direct {v6, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v6, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-object/from16 v32, v10

    const/4 v10, 0x1

    iput v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisibleForGesture:Z

    move-object/from16 v33, v11

    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDirectDragToNormal:Z

    iput-boolean v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mHasMinimizedTransitionFinished:Z

    new-instance v10, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-direct {v10, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    iput-object v0, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iput v9, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    move-object/from16 v10, p3

    iput-object v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v7, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance v11, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-direct {v11}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;-><init>()V

    iput-object v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    move-object/from16 v11, p11

    iput-object v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v11, p12

    iput-object v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    const/4 v11, 0x1

    invoke-virtual {v7, v9, v11, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    new-instance v11, Lcom/android/wm/shell/splitscreen/MainStage;

    move-object v7, v11

    move-object/from16 v18, v11

    move-object/from16 v19, p1

    move-object/from16 v20, p4

    move/from16 v21, p2

    move-object/from16 v22, v4

    move-object/from16 v23, p3

    move-object/from16 v24, v1

    move-object/from16 v25, p10

    invoke-direct/range {v18 .. v25}, Lcom/android/wm/shell/splitscreen/MainStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    new-instance v4, Lcom/android/wm/shell/splitscreen/SideStage;

    move-object v9, v4

    move-object/from16 v18, v4

    move-object/from16 v22, v6

    invoke-direct/range {v18 .. v25}, Lcom/android/wm/shell/splitscreen/SideStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iput-object v8, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v1, p6

    iput-object v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v1, p7

    iput-object v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object v2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual/range {p4 .. p4}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v6, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v10, Lcom/android/wm/shell/bubbles/j;

    invoke-direct {v10, v3}, Lcom/android/wm/shell/bubbles/j;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-direct {v6, v0, v10}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v4, v6}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object/from16 v16, v1

    new-instance v4, Lcom/android/wm/shell/splitscreen/m1;

    invoke-direct {v4, v3}, Lcom/android/wm/shell/splitscreen/m1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v8, v3}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-virtual {v5, v3}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    sget v1, Lcom/android/wm/shell/R$string;->dock_non_resizeble_failed_to_dock_text:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    iput-boolean v0, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    iput-object v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-object v0, v1

    new-instance v2, Lcom/android/launcher/layout/f;

    move-object v4, v3

    move-object v3, v2

    invoke-direct {v2, v4}, Lcom/android/launcher/layout/f;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    move-object/from16 v34, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v8, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    invoke-direct/range {v0 .. v17}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/util/function/Supplier;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayImeController;ILcom/android/wm/shell/splitscreen/SplitScreenTransitions;Lcom/android/wm/shell/transition/Transitions;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V
    .registers 23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/splitscreen/MainStage;",
            "Lcom/android/wm/shell/splitscreen/SideStage;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v5, 0x1

    iput v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    iput-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisibleForGesture:Z

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDirectDragToNormal:Z

    iput-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mHasMinimizedTransitionFinished:Z

    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    move v5, p2

    iput v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    move-object v5, p3

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v5, p4

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v5, p5

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    move-object v5, p6

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v7, Lcom/android/wm/shell/splitscreen/l1;

    invoke-direct {v7, p0}, Lcom/android/wm/shell/splitscreen/l1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-direct {v5, v4, v3, v7, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-direct {v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {p7, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-virtual {v3, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    sget v2, Lcom/android/wm/shell/R$string;->dock_non_resizeble_failed_to_dock_text:I

    invoke-static {p1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method public static synthetic A(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onRemoteAnimationFinishedOrCancelled$6(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic B(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$prepareDismissAnimation$31(Landroid/window/TransitionInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$applyDividerVisibility$20(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic D(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onChildTaskAppeared$18(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic E(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$applyExitSplitScreen$11(ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic F(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$addEnterOrExitIfNeeded$27(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic G(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onLayoutSizeChanged$25(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic H(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$startPendingDismissAnimation$32(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$launchAsFullscreenWithRemoteAnimation$4(Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/split/SplitLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/DisplayImeController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/transition/Transitions$TransitionObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)Lcom/android/wm/shell/transition/Transitions$TransitionObserver;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/transition/Transitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onChildTaskAppeared(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;I)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageHasChildrenChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageVisibilityChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onStageChildTaskStatusChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskVanished()V

    return-void
.end method

.method public static synthetic access$2500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    return p0
.end method

.method public static synthetic access$2502(Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    return p1
.end method

.method public static synthetic access$2600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/wm/shell/splitscreen/StageCoordinator;[Landroid/view/RemoteAnimationTarget;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SideStage;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/widget/Toast;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static synthetic access$700()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/MainStage;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRemoteAnimationFinishedOrCancelled(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .registers 3

    if-eqz p2, :cond_e

    iget-object p0, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_e

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p1, "addActivityOptions mRootTaskInfo = null so return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-eqz p2, :cond_19

    iget-object p0, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string p2, "android.activity.launchRootTaskToken"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_19
    const-string p0, "android.pendingIntent.backgroundActivityAllowed"

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "android.pendingIntent.backgroundActivityAllowedByPermission"

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3e

    :cond_f
    new-instance v1, Landroid/window/TransitionInfo$Change;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v0}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_31

    const/4 p0, 0x3

    goto :goto_32

    :cond_31
    const/4 p0, 0x4

    :goto_32
    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    const/high16 p0, 0x400000

    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    return-void

    :cond_3e
    :goto_3e
    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p1, "addDividerBarToTransition but leash was released or not be created"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v0, :cond_d

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setDividerVisibility splitLayout = null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p1, "Skip animating divider bar due to divider leash not ready."

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p0, :cond_2a

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0xb385b71

    const-string v0, "   Skip animating divider bar due to divider leash not ready."

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    return-void

    :cond_2b
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    if-eqz v3, :cond_45

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p1, "Skip animating divider bar due to it\'s remote animating."

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p0, :cond_44

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x42a56eb2

    const-string v0, "   Skip animating divider bar due to it\'s remote animating."

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    return-void

    :cond_45
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_54
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getYOffsetForIme()I

    move-result v1

    if-eqz v1, :cond_84

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "offset divider position for ime shown."

    invoke-static {v1, v3}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getYOffsetForIme()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_84
    if-eqz p1, :cond_9d

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_dc

    :cond_9d
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz p1, :cond_cb

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_de

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/splitscreen/l;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/l;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_dc

    :cond_cb
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :goto_dc
    return-void

    nop

    :array_de
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_126

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    if-eqz v0, :cond_e

    goto/16 :goto_126

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hideTips()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSplitScreenExit()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v1, Lcom/android/quickstep/o1;

    invoke-direct {v1, p0, p3}, Lcom/android/quickstep/o1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getInvisibleBounds(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3a

    goto :goto_4c

    :cond_3a
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsExiting(Z)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->resetBounds(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_94

    :cond_4c
    :goto_4c
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-ne v3, p1, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v4, v0

    :goto_53
    invoke-virtual {v3, p2, v4}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne v3, p1, :cond_5c

    move v4, v2

    goto :goto_5d

    :cond_5c
    move v4, v0

    :goto_5d
    invoke-virtual {v3, p2, v4}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-ne p1, v4, :cond_68

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :cond_68
    invoke-virtual {v3, p3, v4, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->adjustTaskStateBeforeExitSplitScreen(ILcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v3, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v3, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->clearLaunchRootTask(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0, v2, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsExiting(Z)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :goto_94
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1, v0}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    new-array v1, v2, [Z

    const/16 v3, 0x8

    const/16 v4, 0xc

    if-eq p3, v3, :cond_a8

    if-eq p3, v4, :cond_a8

    const/4 v3, 0x5

    if-ne p3, v3, :cond_aa

    :cond_a8
    aput-boolean v2, v1, v0

    :cond_aa
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p2}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_b9

    :cond_b4
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_b9
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v3, Lcom/android/wm/shell/splitscreen/d1;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/android/wm/shell/splitscreen/d1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    if-ne v4, p3, :cond_d1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/h1;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/splitscreen/h1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    const-wide/16 v3, 0x1f4

    invoke-interface {p2, v1, v3, v4}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_d1
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result p2

    if-eqz p2, :cond_e5

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result p2

    if-nez p2, :cond_e5

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->reset()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->forceUpdateLayout()V

    :cond_e5
    sget-object p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "applyExitSplitScreen, reason = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " childrenToTop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    const-string v4, "    "

    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_11e

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, p2, :cond_11a

    move v0, v2

    :cond_11a
    invoke-direct {p0, p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExitToStage(IZ)V

    goto :goto_121

    :cond_11e
    invoke-direct {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExit(I)V

    :goto_121
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->afterApplyExitSplitScreen(ILcom/android/wm/shell/splitscreen/StageTaskListener;)V

    :cond_126
    :goto_126
    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$switchSplitPosition$9(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onStageHasChildrenChanged$22(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private clearRequestIfPresented()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v1, :cond_15

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    :cond_15
    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$startWithTask$2()V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$updateRecentTasksSplitPair$16(Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$startPendingEnterAnimation$29(ILandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$switchSplitPosition$8(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getMainStageBounds()Landroid/graphics/Rect;
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method private getMainStageBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2(Landroid/graphics/Rect;)V

    goto :goto_f

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1(Landroid/graphics/Rect;)V

    :goto_f
    return-void
.end method

.method private getSideStageBounds()Landroid/graphics/Rect;
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method private getSideStageBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1(Landroid/graphics/Rect;)V

    goto :goto_f

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2(Landroid/graphics/Rect;)V

    :goto_f
    return-void
.end method

.method private getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_d

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_d

    return-object v0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

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

.method private getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I
    .registers 2
    .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public static synthetic h(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onLayoutSizeChanged$24(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$startPendingEnterAnimation$30(Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private isLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onRootTaskAppeared$17(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$applyExitSplitScreen$14(Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$startWithTask$3(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static synthetic lambda$addEnterOrExitIfNeeded$27(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    return-void
.end method

.method private synthetic lambda$applyDividerVisibility$20(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 6

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    :cond_9
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private synthetic lambda$applyExitSplitScreen$11(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->shouldBreakPairedTaskInRecents(I)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    if-nez p1, :cond_e

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_20

    :cond_e
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_20
    return-void
.end method

.method private synthetic lambda$applyExitSplitScreen$12(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsExiting(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resetSideStageBounds(Z)V

    return-void
.end method

.method private synthetic lambda$applyExitSplitScreen$13(Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;)V
    .registers 9

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_f

    move v4, v3

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    invoke-virtual {v2, v0, v4}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-ne p1, v2, :cond_19

    move v4, v3

    goto :goto_1a

    :cond_19
    move v4, v1

    :goto_1a
    invoke-virtual {v2, v0, v4}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-ne p1, v4, :cond_25

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :cond_25
    invoke-virtual {v2, p2, v4, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->adjustTaskStateBeforeExitSplitScreen(ILcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v2, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->clearLaunchRootTask(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0, v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    const/16 p1, 0x8

    if-eq p2, p1, :cond_51

    const/16 p1, 0xc

    if-ne p2, p1, :cond_4b

    goto :goto_51

    :cond_4b
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    goto :goto_56

    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_56
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/splitscreen/j1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/j1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete(Z)V

    return-void
.end method

.method private synthetic lambda$applyExitSplitScreen$14(Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p4, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsExiting(Z)V

    goto :goto_3b

    :cond_33
    new-instance p4, Lcom/android/wm/shell/splitscreen/i1;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/i1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {p1, p4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->fadeOutDecor(Ljava/lang/Runnable;)V

    :goto_3b
    return-void
.end method

.method private synthetic lambda$applyExitSplitScreen$15()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startDimAnimationForDragSplitToZoom()V

    return-void
.end method

.method private static synthetic lambda$handleRequest$26(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    return-void
.end method

.method private synthetic lambda$launchAsFullscreenWithRemoteAnimation$4(Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 15

    const-string v0, "Error starting remote animation"

    if-eqz p3, :cond_33

    array-length v1, p3

    if-nez v1, :cond_8

    goto :goto_33

    :cond_8
    const/4 p0, 0x0

    :goto_9
    array-length v1, p3

    if-ge p0, v1, :cond_1c

    aget-object v1, p3, p0

    iget v1, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v1, :cond_19

    aget-object v1, p3, p0

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p7, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_19
    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_1c
    invoke-virtual {p7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_1f
    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v1 .. v6}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void

    :cond_33
    :goto_33
    invoke-direct {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {p7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_39
    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_47

    :catch_41
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-void
.end method

.method private synthetic lambda$moveToStage$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$onChildTaskAppeared$18(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    goto :goto_15

    :cond_d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToCenter()V

    :goto_15
    return-void
.end method

.method private synthetic lambda$onLayoutSizeChanged$24(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const-string/jumbo v0, "onSplitResizeFinish"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(ZZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onLayoutSizeChanged$25(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$onRemoteAnimationFinished$7()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_d
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    return-void
.end method

.method private synthetic lambda$onRemoteAnimationFinishedOrCancelled$6(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$onRootTaskAppeared$17(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$21(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const/4 p0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    :cond_19
    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$22(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const/4 p0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    :cond_19
    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$23(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToCenter()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    goto :goto_15

    :cond_d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToCenter()V

    :goto_15
    return-void
.end method

.method private synthetic lambda$onTransitionAnimationComplete$28(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->release()V

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resetSideStageBounds()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$prepareDismissAnimation$31(Landroid/window/TransitionInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 7

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_8
    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_33

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v3

    if-nez v3, :cond_2d

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    :cond_2d
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, v1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    goto :goto_8

    :cond_33
    return-void
.end method

.method private synthetic lambda$setDividerVisibility$19(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$startPendingDismissAnimation$32(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->getExitSplitType()I

    move-result p3

    const/4 p4, 0x5

    if-eq p3, p4, :cond_30

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->getExitSplitType()I

    move-result p3

    const/4 p4, 0x7

    if-ne p3, p4, :cond_49

    :cond_30
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetExitSplitType()V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    invoke-static {p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getToTopLeashWhenDismissUncheck(Landroid/window/TransitionInfo;)Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_49

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_49
    return-void
.end method

.method private synthetic lambda$startPendingEnterAnimation$29(ILandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p3, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hookCancelPendingEnter(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$startPendingEnterAnimation$30(Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    if-eqz p1, :cond_1b

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p8

    iget p8, p8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p7, p8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_1b

    :cond_10
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p8

    iget p8, p8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p7, p8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;I)V

    :cond_1b
    :goto_1b
    if-eqz p3, :cond_36

    if-nez p4, :cond_2b

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p4

    iget p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p7, p4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_36

    :cond_2b
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p4

    iget p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p7, p4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;I)V

    :cond_36
    :goto_36
    invoke-virtual {p5}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result p2

    const/4 p4, 0x1

    if-nez p2, :cond_40

    invoke-virtual {p7, p5, p4}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_40
    iget-boolean p2, p6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    const/4 p5, 0x0

    if-eqz p2, :cond_65

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isCtsPackage(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1, p5}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToCenter(I)V

    goto :goto_65

    :cond_60
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToCenter()V

    :cond_65
    :goto_65
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p7, p1, p5}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private synthetic lambda$startWithTask$1()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetOrientation()V

    return-void
.end method

.method private synthetic lambda$startWithTask$2()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetEnterNormalType()V

    return-void
.end method

.method private synthetic lambda$startWithTask$3(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/splitscreen/s0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/s0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/splitscreen/h1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/splitscreen/h1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    return-void
.end method

.method private synthetic lambda$switchSplitPosition$10(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .registers 13

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v7, Lcom/android/wm/shell/splitscreen/c1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/c1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private static synthetic lambda$switchSplitPosition$8(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$switchSplitPosition$9(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p5, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p5, p3, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_38

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p5, Lcom/android/wm/shell/splitscreen/l;

    invoke-direct {p5, p4, p1, p3}, Lcom/android/wm/shell/splitscreen/l;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p5, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;

    invoke-direct {p5, p0, p4, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_38
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$updateRecentTasksSplitPair$16(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    if-eqz v4, :cond_24

    move v5, v2

    move v4, v3

    goto :goto_26

    :cond_24
    move v4, v2

    move v5, v3

    :goto_26
    new-instance v6, Lcom/android/wm/shell/util/SplitBounds;

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    const/4 v0, -0x1

    if-eq v2, v0, :cond_3d

    if-eq v3, v0, :cond_3d

    invoke-virtual {p1, v2, v3, v6}, Lcom/android/wm/shell/recents/RecentTasksController;->addSplitPair(IILcom/android/wm/shell/util/SplitBounds;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onAddSplitPair(II)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateRecommendAppList(II)V

    :cond_3d
    return-void
.end method

.method private synthetic lambda$wrapAsSplitRemoteAnimation$5(Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 15

    const-string v0, "Error starting remote animation"

    if-eqz p3, :cond_56

    array-length v1, p3

    if-nez v1, :cond_8

    goto :goto_56

    :cond_8
    const-class v1, Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, [Landroid/view/RemoteAnimationTarget;

    const/4 p5, 0x0

    :goto_16
    array-length v1, p3

    if-ge p5, v1, :cond_31

    aget-object v1, p3, p5

    iget v1, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v1, :cond_2e

    aget-object v1, p3, p5

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p7, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v1, p3, p5

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {p7, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_2e
    add-int/lit8 p5, p5, 0x1

    goto :goto_16

    :cond_31
    const/4 p5, 0x1

    invoke-direct {p0, p5, p7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;

    invoke-direct {v6, p0, p3, p6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    :try_start_44
    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v1 .. v6}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_55
    return-void

    :cond_56
    :goto_56
    invoke-direct {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {p7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_5c
    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_64

    goto :goto_6a

    :catch_64
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6a
    return-void
.end method

.method private launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V
    .registers 9

    new-instance v0, Lcom/android/wm/shell/splitscreen/g1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p5, v1}, Lcom/android/wm/shell/splitscreen/g1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I)V

    const/4 p5, 0x0

    invoke-direct {p0, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz p3, :cond_16

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1, p3, p4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_23

    :cond_16
    if-eqz p1, :cond_1c

    invoke-virtual {p6, p1, p2, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_23

    :cond_1c
    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p2, "Pending intent and shortcut are null is invalid case."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, p6}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private logExit(I)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    return-void
.end method

.method private logExitToStage(IZ)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    const/4 v1, -0x1

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v2

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_b
    const/4 v3, 0x0

    if-eqz p2, :cond_15

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v4

    goto :goto_16

    :cond_15
    move v4, v3

    :goto_16
    if-nez p2, :cond_1c

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v1

    :cond_1c
    move v5, v1

    if-nez p2, :cond_26

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result p2

    goto :goto_27

    :cond_26
    move p2, v3

    :goto_27
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v6

    move v1, p1

    move v3, v4

    move v4, v5

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    return-void
.end method

.method public static synthetic m(Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onTransitionAnimationComplete$28(Z)V

    return-void
.end method

.method public static synthetic n(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$switchSplitPosition$10(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$applyExitSplitScreen$15()V

    return-void
.end method

.method private onChildTaskAppeared(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;I)V
    .registers 5

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne p1, v0, :cond_64

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v0, :cond_64

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_2c

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onChildTaskAppeared, mSideStageListener is not visible and mMainStageListener is visible, return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    goto :goto_43

    :cond_37
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_40

    :cond_3f
    move v1, v0

    :goto_40
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerAtBorder(Z)V

    :goto_43
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/splitscreen/b1;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/splitscreen/b1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_64
    return-void
.end method

.method private onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_26

    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onRotateChanged(II)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->rotateTo(I)V

    if-eqz p4, :cond_1e

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p2, p4, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    :cond_1e
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, p1, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    :cond_26
    :goto_26
    return-void
.end method

.method private onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2f

    :cond_1a
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/splitscreen/k1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/k1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onRemoteAnimationFinishedOrCancelled(Landroid/window/WindowContainerTransaction;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setSplitRequestedOrientation(I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-nez v0, :cond_20

    goto :goto_31

    :cond_20
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/b1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/b1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_40

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_40
    return-void
.end method

.method private onRootTaskVanished()V
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_e

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    return-void
.end method

.method private onStageChildTaskStatusChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onStageChildTaskStatusChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V

    const/4 v0, 0x1

    if-eqz p3, :cond_10

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne p1, v1, :cond_e

    move p1, v0

    goto :goto_11

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    const/4 p1, -0x1

    :goto_11
    if-nez p1, :cond_29

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logMainStageAppChange(IIZ)V

    goto :goto_3e

    :cond_29
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logSideStageAppChange(IIZ)V

    :goto_3e
    if-eqz p3, :cond_43

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    :cond_43
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_4a
    if-ltz p3, :cond_5a

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    invoke-interface {v0, p2, p1, p4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onTaskStageChanged(IIZ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_4a

    :cond_5a
    return-void
.end method

.method private onStageHasChildrenChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .registers 14

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_a

    move v1, v3

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    const/4 v4, 0x0

    if-nez v0, :cond_5b

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    if-nez v5, :cond_5b

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v5

    if-eqz v5, :cond_5b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v0

    if-nez v0, :cond_9c

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_9c

    if-eqz v1, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/y1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/y1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_9c

    :cond_39
    if-nez v1, :cond_4c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/pip/g;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/g;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_9c

    :cond_4c
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v0, :cond_9c

    const/4 v0, 0x2

    invoke-virtual {p0, v4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    goto :goto_9c

    :cond_5b
    if-eqz v1, :cond_9c

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_9c

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez v1, :cond_77

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    goto :goto_8d

    :cond_77
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_8d

    :cond_81
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :goto_8d
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/b1;

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/splitscreen/b1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_ec

    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->hasStartedSession()Z

    move-result v0

    if-nez v0, :cond_ec

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->hasValidEnterSessionId()Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {v0, v4, v3}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->enterRequested(Lcom/android/internal/logging/InstanceId;I)V

    :cond_c5
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitRatio()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logEnter(FIIIIZ)V

    :cond_ec
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlagEnterNormalWhenDrop:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onStageHasChildrenChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Z)V

    return-void
.end method

.method private onStageVisibilityChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onStageVisibilityChanged()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->removeExitSplitScreenRunnable()V

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->postDelayExitSplitScreen()V

    :cond_22
    if-eq v0, p1, :cond_25

    return-void

    :cond_25
    const/4 p1, 0x0

    if-nez v0, :cond_4d

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExitSplitScreenOnHide:Z

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isSleeping:Z

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isSleeping:Z

    if-nez v1, :cond_4d

    :cond_3c
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    if-eqz v0, :cond_48

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p1, "It\'s showing keyguard, return."

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_48
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    return-void

    :cond_4d
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez v0, :cond_60

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    goto :goto_6e

    :cond_60
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    :goto_6e
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, v1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic p(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$startWithTask$1()V

    return-void
.end method

.method private prepareActiveSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V
    .registers 9
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    goto :goto_37

    :cond_b
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEnteringMinimized()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_32

    invoke-direct {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    goto :goto_37

    :cond_32
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    :goto_37
    if-eqz p2, :cond_41

    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p3, p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    :cond_41
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlagEnterNormalWhenDrop:Z

    if-eqz p2, :cond_4f

    sget-object p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "prepareEnterSplitScreen() FlagEnterNormalWhenDrop"

    invoke-static {p2, p3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlagEnterNormalWhenDrop:Z

    :cond_4f
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz v0, :cond_6e

    if-eqz p2, :cond_6e

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_6e

    sget-object p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p3, "do not reparent top task when start enter minimized"

    invoke-static {p2, p3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_6e
    move v1, p2

    :goto_6f
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p2, p1, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    invoke-direct {p0, p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method private prepareBringSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V
    .registers 7
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    if-eqz p2, :cond_d

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :cond_d
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p2

    if-nez p2, :cond_20

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->reparentTopTask(Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0, p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;Z)V

    :cond_20
    return-void
.end method

.method private prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    return-void
.end method

.method private prepareSplitLayout(Landroid/window/WindowContainerTransaction;Z)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerAtBorder(Z)V

    goto :goto_16

    :cond_11
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    :goto_16
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_26
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onStageHasChildrenChanged$21(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$wrapAsSplitRemoteAnimation$5(Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/wm/shell/splitscreen/StageCoordinator;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private sendOnBoundsChanged()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_2b

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_2b
    return-void
.end method

.method private sendOnStagePositionChanged()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_24

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method private sendSplitVisibilityChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    invoke-interface {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    return-void
.end method

.method private setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 12

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    const-string/jumbo v1, "show"

    const-string v2, "hide"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_14

    move-object v0, v1

    goto :goto_15

    :cond_14
    move-object v0, v2

    :goto_15
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x25b68203

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v4

    aput-object v5, v8, v3

    const-string v0, "Request to %s divider bar from %s."

    invoke-static {v6, v7, v4, v0, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v5, "Request to "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " divider bar"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_64

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    if-eqz v2, :cond_64

    const-string p0, "Defer showing divider bar due to keyguard showing."

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p0, :cond_63

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x51feb992

    const-string p2, "   Defer showing divider bar due to keyguard showing."

    invoke-static {p0, p1, v4, p2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_63
    return-void

    :cond_64
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendSplitVisibilityChanged()V

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    if-eqz p1, :cond_81

    const-string p0, "Skip animating divider bar due to it\'s remote animating."

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p0, :cond_80

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x42a56eb2

    const-string p2, "   Skip animating divider bar due to it\'s remote animating."

    invoke-static {p0, p1, v4, p2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_80
    return-void

    :cond_81
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isApplyDividerVisibilityDeferred()Z

    move-result p1

    if-eqz p1, :cond_8f

    const-string p0, "apply defer showing divider bar."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8f
    if-eqz p2, :cond_95

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_9f

    :cond_95
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/splitscreen/a1;

    invoke-direct {p2, p0, v3}, Lcom/android/wm/shell/splitscreen/a1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_9f
    return-void
.end method

.method private setEnterInstanceId(Lcom/android/internal/logging/InstanceId;)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->enterRequested(Lcom/android/internal/logging/InstanceId;I)V

    :cond_8
    return-void
.end method

.method private setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p0, p1}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private setSideStagePosition(IZLandroid/window/WindowContainerTransaction;)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnStagePositionChanged()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    if-nez p3, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    goto :goto_22

    :cond_1a
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    :cond_22
    :goto_22
    return-void
.end method

.method private setSplitsVisible(Z)V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSplitsVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    return-void
.end method

.method private shouldBreakPairedTaskInRecents(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1d

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1d

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1d

    const/4 p0, 0x0

    :cond_1d
    return p0
.end method

.method private startPendingDismissAnimation(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 11

    iget v1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    iget v2, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    iget v0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    const/4 p1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    return p1

    :cond_1f
    new-instance p3, Lcom/android/wm/shell/splitscreen/f1;

    invoke-direct {p3, p0, p2, p4}, Lcom/android/wm/shell/splitscreen/f1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->setFinishedCallback(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method private startPendingEnterAnimation(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 19

    move-object v8, p0

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v4, v2

    move v3, v1

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, -0x1

    const/4 v9, 0x1

    if-ge v3, v5, :cond_7d

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-eqz v10, :cond_7a

    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v11

    if-nez v11, :cond_2e

    goto :goto_7a

    :cond_2e
    iget-object v11, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    iget v12, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3d

    goto :goto_7a

    :cond_3d
    invoke-direct {p0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v11

    if-nez v2, :cond_5c

    if-nez v11, :cond_5c

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v12

    if-nez v12, :cond_5a

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    const/4 v13, 0x6

    if-ne v12, v13, :cond_5c

    :cond_5a
    move-object v2, v5

    goto :goto_7a

    :cond_5c
    if-nez v4, :cond_6c

    if-ne v11, v9, :cond_6c

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    invoke-static {v9}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v9

    if-eqz v9, :cond_6c

    move-object v4, v5

    goto :goto_7a

    :cond_6c
    if-eq v11, v7, :cond_7a

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_7a

    iget-object v5, v10, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v5, v0, v1}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_7a
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_7d
    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    const/16 v5, 0x3ed

    if-ne v3, v5, :cond_a3

    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v3

    if-eqz v3, :cond_90

    return v9

    :cond_90
    if-nez v2, :cond_dc

    if-nez v4, :cond_dc

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "Launched a task in split, but didn\'t receive any task in transition."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->cancel(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    return v9

    :cond_a3
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v0

    if-nez v0, :cond_160

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v0

    if-eq v0, v7, :cond_b7

    goto/16 :goto_160

    :cond_b7
    if-nez v2, :cond_dc

    if-nez v4, :cond_dc

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v3, "Launched 2 tasks in split, but didn\'t receive 2 tasks in transition. Possibly one of them failed to launch"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_c5

    goto :goto_ca

    :cond_c5
    if-eqz v4, :cond_c9

    move v1, v9

    goto :goto_ca

    :cond_c9
    move v1, v7

    :goto_ca
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    new-instance v2, Lcom/android/wm/shell/splitscreen/u0;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/splitscreen/u0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->cancel(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v9

    :cond_dc
    if-eqz v2, :cond_ee

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-nez v0, :cond_ee

    move v3, v9

    goto :goto_ef

    :cond_ee
    move v3, v1

    :goto_ef
    if-eqz v4, :cond_101

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-nez v0, :cond_101

    move v5, v9

    goto :goto_102

    :cond_101
    move v5, v1

    :goto_102
    const-string v0, " before startAnimation()."

    const-string v1, " to have been called with "

    const-string v7, "Expected onTaskAppeared on "

    if-eqz v3, :cond_12b

    sget-object v10, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12b
    if-eqz v5, :cond_14e

    sget-object v10, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14e
    new-instance v10, Lcom/android/wm/shell/splitscreen/e1;

    move-object v0, v10

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/e1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;)V

    move-object v0, p1

    invoke-virtual {p1, v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->setFinishedCallback(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    return v9

    :cond_160
    :goto_160
    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPendingEnterAnimation, need enter minimized split-screen, return true"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method private startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 14
    .param p7  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v1, p6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->preStartTasksFromRecents(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, p8}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    iget-object p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p8}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p8, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, p8}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    iget-object p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/16 v0, 0xe

    invoke-virtual {p8, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setSplitRequestedOrientation(I)V

    const/4 p8, 0x1

    iput-boolean p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v0, :cond_4e

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-eqz p3, :cond_49

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :cond_49
    invoke-direct {v0, p0, p2, v1, p7}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    :cond_4e
    invoke-virtual {p0, p7, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p7}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p7

    if-nez p7, :cond_5e

    iget-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p7, p1, v2}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_5e
    if-nez p6, :cond_65

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    :cond_65
    iget-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0, p6, p7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, p7, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    iget-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p7, p7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p7, p8}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    const/4 p7, -0x1

    if-eq p2, p7, :cond_89

    invoke-direct {p0, p9, p6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->wrapAsSplitRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p2, p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_a1

    :cond_89
    if-eqz p5, :cond_95

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5, p6}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_98

    :cond_95
    invoke-virtual {p1, p3, p4, p6}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_98
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {p0, p9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->wrapAsSplitRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;

    move-result-object p3

    invoke-virtual {p2, p3, p8, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V

    :goto_a1
    invoke-direct {p0, p10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setEnterInstanceId(Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 19
    .param p4  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private startWithLegacyTransition(Landroid/window/WindowContainerTransaction;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 21
    .param p6  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, p4}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, p4, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x1

    invoke-virtual {p1, p4, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    if-eqz p3, :cond_26

    goto :goto_2b

    :cond_26
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :goto_2b
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_44
    const/4 p2, -0x1

    const-string/jumbo p4, "startWithTaskFrom"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_4f

    move v1, v0

    :cond_4f
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v3, 0x3

    const/16 v7, 0x3ec

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p5

    move-object v6, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setEnterInstanceId(Lcom/android/internal/logging/InstanceId;)V

    if-eqz p1, :cond_7f

    if-eqz v1, :cond_7f

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/splitscreen/v0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/v0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->addExtraTransitionFinishedCallbacks(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)V

    goto :goto_8b

    :cond_7f
    if-eqz v1, :cond_8b

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetOrientation()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetEnterNormalType()V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public static synthetic t(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$setDividerVisibility$19(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic u(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$handleRequest$26(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method private updateRecentTasksSplitPair()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_17

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v1, Lcom/android/common/a;

    invoke-direct {v1, p0}, Lcom/android/common/a;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_9

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_9
    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_10
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->applyMinimalTaskChanges(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$moveToStage$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onRemoteAnimationFinished$7()V

    return-void
.end method

.method private wrapAsSplitRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictAllChildren(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictAllChildren(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    :cond_38
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V

    new-instance p0, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private wrapAsSplitRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;
    .registers 4

    new-instance v0, Lcom/android/wm/shell/splitscreen/g1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/splitscreen/g1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I)V

    return-object v0
.end method

.method public static synthetic x(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$applyExitSplitScreen$13(Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic y(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$applyExitSplitScreen$12(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic z(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$onStageHasChildrenChanged$23(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public addActivityOptionsWrapper(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    return-void
.end method

.method public addEnterOrExitIfNeeded(Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 12

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    if-eq v1, v2, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p1

    if-nez p1, :cond_6c

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    if-nez p1, :cond_6c

    :cond_2d
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    int-to-long v3, p1

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x1ff98950

    const/4 v6, 0x5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v1, "  One of the splits became empty during a mixed transition (one not handled by split), so make sure split-screen state is cleaned-up. mainStageCount=%d sideStageCount=%d"

    invoke-static {p1, v5, v6, v1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5b
    if-eqz v0, :cond_68

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/b;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/b;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_68
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    :cond_6c
    return-void
.end method

.method public applyDividerVisibilityWrapper(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
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

.method public attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public attachToDisplayAreaImmediately(Landroid/view/SurfaceControl;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_9

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_9
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    const-string v3, "mDividerVisible="

    invoke-static {p2, v2, p1, v1, v3}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    const-string v3, "isSplitActive="

    invoke-static {p2, v2, p1, v1, v3}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isSplitVisible="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MainStage"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stagePosition="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/common/split/SplitScreenConstants;->splitPositionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isActive="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p2, "MainStageListener"

    invoke-static {v1, p2, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SideStage"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/common/split/SplitScreenConstants;->splitPositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p2, "SideStageListener"

    invoke-static {v1, p2, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p2

    if-eqz p2, :cond_103

    const-string p2, "SplitLayout"

    invoke-static {v1, p2, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_103
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11e

    const-string/jumbo p2, "mPausingTasks="

    invoke-static {v0, p2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11e
    return-void
.end method

.method public end()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->end()Z

    move-result p0

    return p0
.end method

.method public exitSplitScreen(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_1f

    :cond_15
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_1f
    :goto_1f
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v0, :cond_2a

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->reorderChild(IZLandroid/window/WindowContainerTransaction;)V

    :cond_2a
    invoke-direct {p0, v0, v1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public exitSplitScreen(ZZ)V
    .registers 3

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToDismissTarget(Z)V

    goto :goto_13

    :cond_8
    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_f

    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_f
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :goto_13
    return-void
.end method

.method public exitSplitScreenOnHide(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExitSplitScreenOnHide:Z

    return-void
.end method

.method public exitStage(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    return-void
.end method

.method public finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->hasStartedSession()Z

    move-result p1

    if-nez p1, :cond_81

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitRatio()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logEnter(FIIIIZ)V

    :cond_81
    return-void
.end method

.method public forceHideDividerMenuIfNeeded()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hideDividerMenu()V

    return-void
.end method

.method public getActivateSplitPosition(Landroid/app/TaskInfo;)I
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    const/4 v1, -0x1

    if-eqz v0, :cond_4a

    if-nez p1, :cond_8

    goto :goto_4a

    :cond_8
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId:I

    if-eqz v2, :cond_15

    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId2:I

    iget v4, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne v3, v4, :cond_15

    iget p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return p0

    :cond_15
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne v2, v3, :cond_1c

    iget p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return p0

    :cond_1c
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return p0

    :cond_35
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent2:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return p0

    :cond_4a
    :goto_4a
    return v1
.end method

.method public getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v12

    move-object v11, v12

    new-instance v1, Landroid/view/RemoteAnimationTarget;

    move-object v2, v1

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    new-instance v0, Landroid/graphics/Point;

    move-object v10, v0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/app/WindowConfiguration;

    move-object v13, v0

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7f2

    invoke-direct/range {v2 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v1
.end method

.method public getDividerFadeAnimator()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    return-object p0
.end method

.method public getLogger()Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    return-object p0
.end method

.method public getMainStagePosition()I
    .registers 1
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p0

    return p0
.end method

.method public getMainSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getMainTopSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getMainTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRootTaskId()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    return p0
.end method

.method public getShellTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method public getSideStagePosition()I
    .registers 1
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    return p0
.end method

.method public getSideSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSideTopSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getSideTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSplitContainerLayer()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSplitItemPosition(Landroid/window/WindowContainerToken;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p0

    return p0

    :cond_11
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    return-object p0
.end method

.method public getSplitLayoutSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getSplitPosition(I)I
    .registers 3
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    if-ne v0, p1, :cond_d

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p0

    return p0

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    if-ne v0, p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p0

    return p0

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public getSplitRequest()Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    return-object p0
.end method

.method public getSplitTransitions()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    return-object p0
.end method

.method public getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getStageOfTask(I)I
    .registers 3
    .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 3

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskId(I)I
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    :cond_4
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v0, p1, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    goto :goto_15

    :cond_f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    :goto_15
    return p0
.end method

.method public goToFullscreenFromSplit()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_15

    :goto_e
    move v1, v2

    goto :goto_15

    :cond_10
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v0, v2, :cond_15

    goto :goto_e

    :cond_15
    :goto_15
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    xor-int/lit8 v0, v1, 0x1

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    return-void
.end method

.method public grantFocusToStage(I)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const-string v0, "activity_task"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTaskId(I)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_2f

    :catch_12
    move-exception p0

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x4db61527

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unable to update focus on the chosen stage: %s"

    invoke-static {p1, v0, v2, p0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->preHandleRequest(Landroid/window/TransitionRequestInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/IBinder;)V

    sget-object v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRequest in stageCoordinator\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\nrequest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\ntransition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/16 v6, 0x44e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_ab

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_5e

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v3

    invoke-virtual {v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result v1

    if-eq v3, v1, :cond_5e

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->setFreezeDividerWindow(Z)V

    :cond_5e
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_71

    const-string/jumbo v1, "may need restore minimized state soon."

    invoke-static {v4, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setNeedRestoreMinimizedState(Z)V

    :cond_71
    invoke-static/range {p2 .. p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isChangingFocusedTaskTransition(Landroid/window/TransitionRequestInfo;)Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInNormalSplitScreenMode()Z

    move-result v1

    if-eqz v1, :cond_87

    const-string v1, "it\'s changing focused task in normal split-screen."

    invoke-static {v4, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsChangingFocusedTaskTransition()V

    :cond_87
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object v0

    :cond_8d
    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/applock/AppLockManager;->getStartFromSafeControl()Z

    move-result v2

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v3

    if-eqz v2, :cond_aa

    if-eqz v3, :cond_aa

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v1, v8, v6, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object v0

    :cond_aa
    return-object v8

    :cond_ab
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    if-eq v6, v10, :cond_b2

    return-object v8

    :cond_b2
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v8

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    if-ne v10, v9, :cond_c1

    move v7, v9

    :cond_c1
    if-eqz v8, :cond_cf

    if-eqz v7, :cond_cf

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v10, Lcom/android/wm/shell/splitscreen/x;

    invoke-direct {v10, v3}, Lcom/android/wm/shell/splitscreen/x;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_cf
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v9

    if-eqz v9, :cond_397

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v9

    if-nez v9, :cond_397

    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_121

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v10, v5

    invoke-static {v6}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v12

    int-to-long v12, v12

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v14

    int-to-long v14, v14

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v2, v11

    const/4 v10, 0x1

    aput-object v5, v2, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v2, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v2, v10

    const-string v5, "  split is active so using splitTransition to handle request. triggerTask=%d type=%s mainChildren=%d sideChildren=%d"

    const v10, 0x9da899c

    const/16 v11, 0x51

    invoke-static {v9, v10, v11, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_121
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v5

    const/4 v9, -0x1

    if-eqz v5, :cond_31f

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v6

    if-eqz v6, :cond_171

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_171

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v3

    if-eqz v3, :cond_15d

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMinimizedStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v3

    if-ne v3, v5, :cond_15d

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitSplitType(I)I

    const-string v3, "exit minimized split-screen from recent."

    invoke-static {v4, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v9, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    return-object v2

    :cond_15d
    invoke-direct {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v3

    if-nez v3, :cond_165

    const/4 v3, 0x1

    goto :goto_166

    :cond_165
    const/4 v3, 0x0

    :goto_166
    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    goto/16 :goto_388

    :cond_171
    if-eqz v8, :cond_1e3

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e3

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v6

    if-eqz v6, :cond_194

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_194

    const-string v0, "Split screen starting, skip redundant transition animations"

    invoke-static {v4, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_194
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v6

    if-eqz v6, :cond_1b5

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isRecentsInSplitAnimating()Z

    move-result v6

    if-eqz v6, :cond_1b5

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isActivityTransitionInSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v3

    if-eqz v3, :cond_1b5

    const-string v0, "It\'s activity transition, do not exit split screen while animating the split pair in recents."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1b5
    invoke-direct {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v3

    if-nez v3, :cond_1bd

    const/4 v3, 0x0

    goto :goto_1be

    :cond_1bd
    const/4 v3, 0x1

    :goto_1be
    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->getDismissTransitionWrapperUncheck()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    move-result-object v1

    if-eqz v1, :cond_388

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->getDismissTransitionWrapperUncheck()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->setNeedCheckIsDirty(Z)V

    goto/16 :goto_388

    :cond_1e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v6

    if-nez v6, :cond_2f4

    if-eqz v8, :cond_2f4

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEnteringMinimizedOrInMinimized()Z

    move-result v6

    if-eqz v6, :cond_25a

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMinimizedStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v6

    if-eqz v6, :cond_25a

    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    if-eqz v2, :cond_201

    const/4 v0, 0x0

    return-object v0

    :cond_201
    const/4 v2, 0x0

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMinimizedStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v6

    if-eq v6, v5, :cond_253

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_21b

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.oplus.safecenter/.privacy.view.password.AppUnlockPasswordActivity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21b

    return-object v2

    :cond_21b
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMinimizedStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v5

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v3

    if-eqz v3, :cond_22f

    const-string v0, "app task in minimizedStashStage reparent to another stage, while needInterceptInMinimized does not work for timing issue."

    invoke-static {v4, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_22f
    const-string/jumbo v2, "ready to enter normal split"

    invoke-static {v4, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMinimizedToNormalRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v3

    const/16 v4, 0x44d

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterMinimizedType()V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object v0

    :cond_253
    const-string v0, "app would launch another activity, which split-screen don\'t need to handle"

    invoke-static {v4, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_25a
    const/4 v3, 0x0

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEnteringMinimized()Z

    move-result v6

    if-eqz v6, :cond_26f

    const-string v1, "it\'s entering minimized split-screen, don\'t enter split-screen."

    invoke-static {v4, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setNeedRestoreMinimizedState(Z)V

    return-object v3

    :cond_26f
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->getExitSplitType()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_2a8

    invoke-direct {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v2

    if-nez v2, :cond_282

    const/4 v2, 0x0

    goto :goto_283

    :cond_282
    const/4 v2, 0x1

    :goto_283
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v6, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->prepareExitSplitScreenUncheck(ILandroid/window/WindowContainerTransaction;)V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v6, 0x2

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exiting split-screen by return home has not completed, make this task to Top, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2a8
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isExiting()Z

    move-result v3

    if-eqz v3, :cond_2b7

    const-string v0, "It\'s exiting split-screen, enter normal split-screen later."

    invoke-static {v4, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2b7
    const-string/jumbo v3, "pair open as enter normal type:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2e3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2e3

    invoke-direct {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V

    :cond_2e3
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v5, v5, 0x1

    const/16 v6, 0x3ec

    invoke-virtual {v3, v1, v4, v6, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    goto/16 :goto_388

    :cond_2f4
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->getExitSplitType()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_388

    if-eqz v8, :cond_388

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v3

    if-eqz v3, :cond_388

    const-string v3, "exit split screen when returning home and opening the split app immediately"

    invoke-static {v4, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v3

    if-nez v3, :cond_314

    const/4 v3, 0x0

    goto :goto_315

    :cond_314
    const/4 v3, 0x1

    :goto_315
    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    goto :goto_388

    :cond_31f
    if-eqz v8, :cond_388

    if-eqz v7, :cond_388

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_33a

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v4

    if-nez v4, :cond_33a

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitSplitType(I)I

    :cond_33a
    const/4 v4, 0x2

    if-eq v1, v4, :cond_36c

    const/4 v4, 0x3

    if-ne v1, v4, :cond_341

    goto :goto_36c

    :cond_341
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_355

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_368

    goto :goto_356

    :cond_355
    const/4 v4, 0x1

    :goto_356
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_388

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_388

    :cond_368
    invoke-virtual {v0, v9, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    goto :goto_388

    :cond_36c
    :goto_36c
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_386

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitSplitType(I)I

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsExiting(Z)V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :cond_386
    const/4 v0, 0x0

    return-object v0

    :cond_388
    :goto_388
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_396

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_395

    goto :goto_396

    :cond_395
    const/4 v2, 0x0

    :cond_396
    :goto_396
    return-object v2

    :cond_397
    if-eqz v8, :cond_41a

    invoke-direct {v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v2

    if-eqz v2, :cond_41a

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v2

    if-eqz v2, :cond_3e5

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3ba

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3ba

    if-eq v2, v5, :cond_3ba

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3df

    :cond_3ba
    const-string v3, "enter minimized from "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/oplus/splitscreen/DividerConstant;->enterMinimizedTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", setEnterTransition"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v3, 0x44e

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    :cond_3df
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object v0

    :cond_3e5
    const/16 v2, 0x44e

    const/4 v3, 0x0

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isExiting()Z

    move-result v5

    if-eqz v5, :cond_3f6

    const-string v0, "It\'s exiting split-screen, enter later."

    invoke-static {v4, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3f6
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-eqz v5, :cond_402

    const-string v0, "dismiss transition are running, intercept to enter split."

    invoke-static {v4, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_402
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v8, v8, 0x1

    const/16 v9, 0x3ec

    invoke-virtual {v5, v1, v7, v9, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    goto :goto_41d

    :cond_41a
    const/16 v2, 0x44e

    const/4 v3, 0x0

    :goto_41d
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v5

    if-eqz v5, :cond_45a

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v5

    if-eqz v5, :cond_45a

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v5

    if-eqz v5, :cond_45a

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v5

    invoke-static {v5}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isEnterMinimizedBySplitBarMenu(I)Z

    move-result v6

    if-eqz v6, :cond_45a

    const/16 v3, 0x8

    if-ne v5, v3, :cond_449

    const/16 v2, 0x44f

    :cond_449
    const-string v3, "get ready to handle minimized anim from split-screen control bar menu."

    invoke-static {v4, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_45a
    return-object v3
.end method

.method public hasMinimizedTransitionFinished()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mHasMinimizedTransitionFinished:Z

    return p0
.end method

.method public hideTips()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hideTips()V

    return-void
.end method

.method public inflateSplitDecor()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    return-void
.end method

.method public isInNormalSplitScreenMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isInSplitScreenMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isKeyguardShowing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    return p0
.end method

.method public isLaunchToSplit(Landroid/app/TaskInfo;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isPendingEnter(Landroid/os/IBinder;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public isRootOrStageRoot(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isRootTaskId(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isRootTaskId(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public isSplitActive()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p0

    return p0
.end method

.method public isSplitScreenVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public moveTaskToFullscreen(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p1, :cond_1d

    :goto_e
    move v1, v2

    goto :goto_1d

    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p1

    if-eqz p1, :cond_26

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p1, v2, :cond_1d

    goto :goto_e

    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    xor-int/lit8 p1, v1, 0x1

    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    :cond_26
    return-void
.end method

.method public moveToStage(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/WindowContainerTransaction;)Z
    .registers 12
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p1, 0x3ed

    goto :goto_18

    :cond_16
    const/16 p1, 0x3ec

    :goto_18
    move v6, p1

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v7, p1, 0x1

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    goto :goto_32

    :cond_23
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p3, Lcom/android/wm/shell/splitscreen/a1;

    invoke-direct {p3, p0, v0}, Lcom/android/wm/shell/splitscreen/a1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_32
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    return p2
.end method

.method public needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onDisplayAdded(I)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v0, Lcom/android/wm/shell/bubbles/e;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/e;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 4

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p1, :cond_33

    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isDensityChanged(I)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_33

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_33
    return-void
.end method

.method public onDoubleTappedDivider()V
    .registers 2

    const-string v0, "double tap"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->switchSplitPosition(Ljava/lang/String;)V

    return-void
.end method

.method public onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_15

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    :cond_15
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_2d

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :cond_2d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->enterRequestedByDrag(ILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    const/4 v4, 0x1

    if-eq v1, v3, :cond_23

    move v3, v4

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    if-eqz v3, :cond_43

    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/16 v5, 0x8

    if-nez v3, :cond_34

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    move-object v0, v2

    :goto_30
    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    goto :goto_43

    :cond_34
    xor-int/lit8 v0, v1, 0x1

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v2, v1, p0, v0, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)Landroid/os/IBinder;

    :cond_43
    :goto_43
    return-void
.end method

.method public onFoldedStateChanged(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onFoldedStateChanged(Z)V

    return-void

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-nez p1, :cond_15

    return-void

    :cond_15
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    goto :goto_28

    :cond_1f
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    :cond_28
    :goto_28
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v1, 0x3

    if-eqz p1, :cond_3b

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v2, p1, p0, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)Landroid/os/IBinder;

    goto :goto_45

    :cond_3b
    if-nez v0, :cond_40

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_42

    :cond_40
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_42
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :goto_45
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onKeyguardVisibilityChanged(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p1, "Defer showing divider bar due to minimied."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->inGestureAnimation()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->inSwapAnimation()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_37

    :cond_19
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_37
    :goto_37
    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v0, "don\'t layout position when gesture animation or swap animation and recent split Animation"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result p0

    if-nez p0, :cond_4f

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hideImeDimLayerWhenRemoveImeSurface()V

    :cond_4f
    return-void
.end method

.method public onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    sget-boolean v1, Lcom/oplus/splitscreen/util/SplitScreenUtils;->ENABLE_SHELL_TRANSITIONS_IN_SPLIT_SIDE:Z

    if-nez v1, :cond_1c

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1c
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showTipsOnFoldedStateChange()V

    if-eqz v1, :cond_41

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const-string/jumbo v1, "onSplitResizeStart"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(ZZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v0, Lcom/android/wm/shell/splitscreen/d;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/d;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-virtual {p1, v2, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startResizeTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)Landroid/os/IBinder;

    goto :goto_65

    :cond_41
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/p2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/p2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_65
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logResize(F)V

    return-void
.end method

.method public onLayoutSizeChanging(Lcom/android/wm/shell/common/split/SplitLayout;II)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    move-object v4, v0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResizing(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResizing(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onRecentsInSplitAnimationCanceled()V
    .registers 4

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRecentsInSplitAnimationCanceled."

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsRecentsInSplitAnimating(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public onRecentsInSplitAnimationFinish(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRecentsInSplitAnimationFinish, finishWct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsRecentsInSplitAnimating(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :goto_23
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_90

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v5

    if-ne v5, v3, :cond_8d

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsContainer(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsContainer(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_8d

    :cond_58
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isUpdateSurfaceBoundsDeferred()Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueUpdateSurfaceBounds()V

    :cond_65
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_89
    invoke-direct {p0, v3, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_90
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitSplitType(I)I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0, v3}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public onRecentsInSplitAnimationStart(Landroid/window/TransitionInfo;)V
    .registers 6

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRecentsInSplitAnimationStart"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->logDebugForTransitionInfo(Ljava/lang/String;Ljava/lang/String;Landroid/window/TransitionInfo;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsRecentsInSplitAnimating(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    move v0, v1

    :goto_16
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5c

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_59

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    if-eq v3, v2, :cond_50

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    if-ne v3, v2, :cond_59

    :cond_50
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_5c
    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    return-void
.end method

.method public onRecentsPairToPairAnimationFinish(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRecentsPairToPairAnimationFinish, finishWct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsRecentsInSplitAnimating(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_51

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictChildren(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_4e

    :cond_41
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictChildren(Landroid/window/WindowContainerTransaction;I)V

    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_51
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    :cond_5f
    return-void
.end method

.method public onRequestToSplit(Lcom/android/internal/logging/InstanceId;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :cond_10
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->enterRequested(Lcom/android/internal/logging/InstanceId;I)V

    return-void
.end method

.method public onRootTaskAppeared()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-nez v0, :cond_11

    goto :goto_72

    :cond_11
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getInvisibleBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/g2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/g2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onStageRootTaskAppeared()V

    :cond_72
    :goto_72
    return-void
.end method

.method public onSingleTappedDivider()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showDividerMenu()V

    return-void
.end method

.method public onSnappedToDismiss(ZI)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p1, v1, :cond_e

    goto :goto_d

    :cond_9
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p1, :cond_e

    :goto_d
    move v0, v1

    :cond_e
    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_15

    :cond_13
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_15
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v2, :cond_1d

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    return-void

    :cond_1d
    xor-int/lit8 p2, v0, 0x1

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->resetBounds(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_33

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_33
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, p0, p2, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)Landroid/os/IBinder;

    return-void
.end method

.method public onSplitScreenEnter()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayImeController;->setRotating(ZI)V

    return-void
.end method

.method public onSplitScreenExit()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayImeController;->setRotating(ZI)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_69

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-nez v0, :cond_69

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p1, :cond_65

    new-instance p1, Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "SplitDivider"

    invoke-static {p2, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v9, 0x2

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;I)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->recreateSnapAlgorithm()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->setMainExecutor(Lcom/android/wm/shell/common/ShellExecutor;)V

    :cond_65
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskAppeared()V

    return-void

    :cond_69
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n Unknown task appeared: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_42

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v2, :cond_42

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onPreRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v1, :cond_3c

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-boolean v1, Lcom/oplus/splitscreen/util/SplitScreenUtils;->ENABLE_SHELL_TRANSITIONS_IN_SPLIT_SIDE:Z

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateFoldDividerPositionIfNeed(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_3c
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n Unknown task info changed: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskVanished()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->release()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    :cond_11
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n Unknown task vanished: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTransitionAnimationComplete()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete(Z)V

    return-void
.end method

.method public onTransitionAnimationComplete(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    if-nez v0, :cond_23

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEnteringMinimizedOrInMinimized()Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/c2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/c2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_23
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onTransitionAnimationComplete()V

    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 22
    .param p1  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v7, -0x1

    if-ne v1, v7, :cond_af

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v8

    const-string v9, ", "

    const-string v10, ""

    const-string v11, "] before startAnimation()."

    const-string v12, " to have been called with ["

    const-string v13, "Expected onTaskVanished on "

    if-eqz v8, :cond_64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    :goto_27
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v15}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v15

    if-ge v14, v15, :cond_45

    if-eqz v14, :cond_33

    move-object v15, v9

    goto :goto_34

    :cond_33
    move-object v15, v10

    :goto_34
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v15, v15, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_27

    :cond_45
    sget-object v14, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_af

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_72
    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v14

    if-ge v8, v14, :cond_90

    if-eqz v8, :cond_7e

    move-object v14, v9

    goto :goto_7f

    :cond_7e
    move-object v14, v10

    :goto_7f
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v14, v14, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_72

    :cond_90
    sget-object v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v9

    :goto_b9
    if-ltz v9, :cond_ec

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-nez v11, :cond_cc

    goto :goto_e9

    :cond_cc
    invoke-direct {v0, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v12

    if-nez v12, :cond_dc

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result v12

    if-eq v12, v7, :cond_e9

    :cond_dc
    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e9
    :goto_e9
    add-int/lit8 v9, v9, -0x1

    goto :goto_b9

    :cond_ec
    invoke-direct {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->shouldBreakPairedTaskInRecents(I)Z

    move-result v9

    if-eqz v9, :cond_fc

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v10, Lcom/android/wm/shell/splitscreen/z;

    invoke-direct {v10, v0, v3}, Lcom/android/wm/shell/splitscreen/z;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_fc
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-direct {v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v9}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3, v9}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    if-eq v1, v7, :cond_12f

    if-nez v1, :cond_11a

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_11c

    :cond_11a
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_11c
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_126

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_128

    :cond_126
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_128
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_146

    :cond_12f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v3, v8

    :goto_138
    if-ltz v3, :cond_146

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceControl;

    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v3, v3, -0x1

    goto :goto_138

    :cond_146
    :goto_146
    if-ne v1, v7, :cond_14d

    invoke-direct {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExit(I)V

    :goto_14b
    const/4 v1, 0x0

    goto :goto_155

    :cond_14d
    if-nez v1, :cond_150

    goto :goto_151

    :cond_150
    const/4 v8, 0x0

    :goto_151
    invoke-direct {v0, v2, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExitToStage(IZ)V

    goto :goto_14b

    :goto_155
    invoke-direct {v0, v1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public prepareEnterMinimizedSplit()V
    .registers 5

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public prepareEnterNormal(Z)Z
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareEnterNormal() mFlagEnterNormalWhenDrop(from "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlagEnterNormalWhenDrop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlagEnterNormalWhenDrop:Z

    const/4 p0, 0x1

    return p0
.end method

.method public prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V
    .registers 6
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSplitScreenEnter()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareBringSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    goto :goto_10

    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareActiveSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    :goto_10
    return-void
.end method

.method public prepareEvictInvisibleChildTasks(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public prepareEvictNonOpeningChildTasks(I[Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p1, v0, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    goto :goto_f

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    :goto_f
    return-void
.end method

.method public prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V
    .registers 7
    .param p1  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    invoke-virtual {v0, p2, v3}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-nez p1, :cond_1a

    move v1, v2

    :cond_1a
    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendStatusToListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public removeFromSideStage(I)Z
    .registers 5

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1, p1, v2, v0}, Lcom/android/wm/shell/splitscreen/SideStage;->removeTask(ILandroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return p1
.end method

.method public requestImpliesSplitToPip(Landroid/window/TransitionRequestInfo;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->requestHasPipEnter(Landroid/window/TransitionRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_38

    :cond_10
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_25

    return v2

    :cond_25
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_37

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p0

    if-nez p0, :cond_36

    goto :goto_37

    :cond_36
    return v1

    :cond_37
    :goto_37
    return v2

    :cond_38
    :goto_38
    return v1
.end method

.method public resetSideStageBounds()V
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public resetSideStageBounds(Z)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resetSideStageBounds()V

    return-void
.end method

.method public resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;
    .registers 7
    .param p1  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_43

    if-eqz p1, :cond_2a

    if-ne p1, v0, :cond_1e

    if-eq p2, v1, :cond_e

    invoke-virtual {p0, p2, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p2

    :goto_12
    if-nez p3, :cond_1a

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    move-object p3, p1

    :cond_1a
    invoke-virtual {p0, p3, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    goto :goto_64

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown stage="

    invoke-static {p2, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    if-eq p2, v1, :cond_34

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p2

    :goto_38
    if-nez p3, :cond_3f

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_3f
    invoke-virtual {p0, p3, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    goto :goto_64

    :cond_43
    if-eq p2, v1, :cond_5d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-eqz p1, :cond_58

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, p1, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_64

    :cond_58
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_64

    :cond_5d
    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p1, "No stage type nor split position specified to resolve start stage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-object p3
.end method

.method public sendStatusToListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    return-void
.end method

.method public setDividerShow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisibleForGesture:Z

    return-void
.end method

.method public setDividerVisibilityWrapper(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public setIsDropEntering(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    return-void
.end method

.method public setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v5, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->delaySetLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateSplitControlBarRegion(II)V

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_20

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_22

    :cond_20
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_22
    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_29

    :cond_27
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_29
    new-instance v8, Landroid/window/WindowContainerTransaction;

    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v2, p3

    move-object v3, v8

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/common/split/SplitLayout;->applyLayoutOffsetTarget(Landroid/window/WindowContainerTransaction;IILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const-string p1, "StageCoordinator#setLayoutOffsetTarget"

    invoke-virtual {p0, v8, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->applyTransactionWithLog(Landroid/window/WindowContainerTransaction;Ljava/lang/String;)V

    return-void
.end method

.method public setMixedHandler(Lcom/android/wm/shell/transition/DefaultMixedHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    return-void
.end method

.method public setShouldUpdateRecents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    return-void
.end method

.method public setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V
    .registers 4
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public setSplitRequest(III)V
    .registers 5

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;III)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    return-void
.end method

.method public setSplitRequest(ILandroid/content/Intent;I)V
    .registers 5

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    return-void
.end method

.method public setSplitRequest(Landroid/content/Intent;I)V
    .registers 4

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    return-void
.end method

.method public setSplitRequest(Landroid/content/Intent;Landroid/content/Intent;I)V
    .registers 5

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    return-void
.end method

.method public showTips()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showTips()V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAnimation in stageCoordinator, transition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    invoke-static {v1, v2, v8, v12}, Lcom/oplus/splitscreen/util/LogUtil;->logDebugForTransitionInfo(Ljava/lang/String;Ljava/lang/String;Landroid/window/TransitionInfo;Z)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingTransition(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3a9

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v1

    const/4 v13, 0x0

    if-nez v1, :cond_36

    return v13

    :cond_36
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1, v13}, Lcom/android/wm/shell/common/split/SplitLayout;->setFreezeDividerWindow(Z)V

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;

    invoke-direct {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;-><init>()V

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTaskId(I)I

    move-result v2

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;

    invoke-direct {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;-><init>()V

    move v6, v12

    move v4, v13

    move v5, v4

    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_1c6

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v15

    if-eqz v15, :cond_68

    move v15, v12

    goto :goto_69

    :cond_68
    move v15, v13

    :goto_69
    or-int/2addr v5, v15

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v15

    const/4 v13, 0x6

    if-ne v15, v13, :cond_83

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v13

    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_83

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v13, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v13, v8, v9, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->handleRotationTransition(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_83
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    if-nez v13, :cond_8b

    goto/16 :goto_108

    :cond_8b
    iget-object v15, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v15, v12}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e9

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v12

    if-eqz v12, :cond_c4

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v12

    if-nez v12, :cond_b1

    iget-boolean v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    if-nez v12, :cond_b1

    const/4 v12, 0x1

    invoke-direct {v0, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :cond_b1
    new-instance v12, Landroid/window/WindowContainerTransaction;

    invoke-direct {v12}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v13, v12}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_108

    :cond_c4
    const/4 v15, 0x0

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v12

    if-eqz v12, :cond_108

    iget-boolean v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    if-nez v12, :cond_d6

    invoke-direct {v0, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :cond_d6
    new-instance v12, Landroid/window/WindowContainerTransaction;

    invoke-direct {v12}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v13, v12}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_108

    :cond_e9
    invoke-direct {v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v12

    if-nez v12, :cond_10e

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v12

    if-nez v12, :cond_108

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v12

    if-nez v12, :cond_108

    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_108

    iput-boolean v13, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    :cond_108
    :goto_108
    move/from16 v16, v2

    move/from16 v17, v5

    goto/16 :goto_1bc

    :cond_10e
    iget-object v15, v12, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v15, v2, :cond_11f

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lez v6, :cond_11e

    const/4 v6, 0x1

    goto :goto_11f

    :cond_11e
    const/4 v6, 0x0

    :cond_11f
    :goto_11f
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v15

    invoke-static {v15}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v15

    move/from16 v16, v2

    const-string v2, " before startAnimation()."

    move/from16 v17, v5

    const-string v5, " to have been called with "

    if-eqz v15, :cond_172

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v14

    if-nez v14, :cond_13d

    iget v14, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v15, 0x1

    invoke-virtual {v3, v12, v15, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    :cond_13d
    iget v14, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v12, v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v14

    if-nez v14, :cond_16f

    sget-object v14, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "Expected onTaskAppeared on "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {v1, v12, v5, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    goto :goto_1ba

    :cond_16f
    move/from16 v18, v6

    goto :goto_1ba

    :cond_172
    move/from16 v18, v6

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v6

    if-eqz v6, :cond_1ba

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-nez v6, :cond_18b

    iget v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v14, 0x0

    invoke-virtual {v3, v12, v14, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    goto :goto_18c

    :cond_18b
    const/4 v14, 0x0

    :goto_18c
    iget v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v12, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v6

    if-eqz v6, :cond_1ba

    iget v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v12, v14, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    sget-object v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected onTaskVanished on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ba
    :goto_1ba
    move/from16 v6, v18

    :goto_1bc
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    move/from16 v5, v17

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_4c

    :cond_1c6
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v4, v2, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    if-eqz v4, :cond_1d1

    iget v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {v2, v6, v4}, Lcom/android/wm/shell/common/DisplayImeController;->setTransitionMidPosition(ZI)V

    :cond_1d1
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    if-nez v2, :cond_1e7

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    if-eqz v2, :cond_1e7

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransitionObserver:Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    :cond_1e7
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->getShouldDismissedStage()Landroid/util/ArraySet;

    move-result-object v2

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_207

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_207

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_204

    goto :goto_207

    :cond_204
    move v1, v6

    goto/16 :goto_32e

    :cond_207
    :goto_207
    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/applock/AppLockManager;->getStartFromSafeControl()Z

    move-result v4

    if-nez v4, :cond_32d

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v4

    const/16 v6, 0xa

    const/4 v13, -0x1

    if-eq v4, v6, :cond_307

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterNormalType()I

    move-result v4

    const/16 v6, 0x9

    if-eq v4, v6, :cond_307

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_233

    goto/16 :goto_307

    :cond_233
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v4

    if-nez v4, :cond_246

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_244

    goto :goto_246

    :cond_244
    const/4 v4, 0x0

    goto :goto_27a

    :cond_246
    :goto_246
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v4

    if-nez v4, :cond_25e

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEnteringMinimized()Z

    move-result v4

    if-nez v4, :cond_25e

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v4

    if-eqz v4, :cond_244

    :cond_25e
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_244

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "do not exit split screen because it\'s about to enter or is in minimized split-screen"

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_278

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->restoreMinimizedState(Landroid/view/SurfaceControl$Transaction;)V

    :cond_278
    const/4 v4, 0x0

    return v4

    :goto_27a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_2c8

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->recheckDismissStage(Lcom/android/wm/shell/splitscreen/StageTaskListener;)Z

    move-result v3

    if-nez v3, :cond_2ac

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_29e

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "open and close in one stage when minimized, do not start dismiss transition and go default."

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_29e
    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "open and close in one stage, do not start dismiss transition and go default."

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, v8, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hookStartTransactionForOpeningActivityRecord(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    return v4

    :cond_2ac
    if-nez v5, :cond_2c8

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_2bf

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "non-task transition when minimized, don\'t handle it and go default."

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2bf
    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "non-task transition, don\'t handle it and go default."

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2c8
    sget-object v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v5, "Somehow removed the last task in a stage outside of a proper transition."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e7

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-direct {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v2

    if-eqz v2, :cond_2ef

    :cond_2e7
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2f1

    :cond_2ef
    const/4 v2, 0x1

    goto :goto_2f2

    :cond_2f1
    const/4 v2, 0x0

    :goto_2f2
    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    if-nez v1, :cond_2fd

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_2fd

    move v13, v2

    :cond_2fd
    invoke-virtual {v0, v13, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)Landroid/os/IBinder;

    goto :goto_32d

    :cond_307
    :goto_307
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_317

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->restoreMinimizedState(Landroid/view/SurfaceControl$Transaction;)V

    :cond_317
    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {v11, v12, v12}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "it\'s entering normal split-screen by ZOOM_DRAG or DRAG directly or is relaunching."

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    const/4 v1, 0x1

    return v1

    :cond_32d
    :goto_32d
    const/4 v1, 0x1

    :goto_32e
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->handleChangingFocusedTaskTransitionIfNeed(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v2

    if-eqz v2, :cond_337

    return v1

    :cond_337
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_353

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterNormalSplitWithoutEnterTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-eqz v1, :cond_353

    const/4 v1, 0x1

    return v1

    :cond_353
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInNormalSplitScreenMode()Z

    move-result v1

    if-eqz v1, :cond_385

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->handleTransitionInNormalSplitScreenModeIfNeed(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-eqz v1, :cond_36d

    const/4 v1, 0x1

    return v1

    :cond_36d
    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->shouldShowDividerVisibility()Z

    move-result v1

    if-eqz v1, :cond_385

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    invoke-direct {v0, v1, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->reset()V

    :cond_385
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isStartFromSafeControlTransition(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_39f

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {v11, v12, v12}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "It\'s starting from safeApp, finish now."

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_39f
    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "use normal animations."

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_3a9
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    if-eqz v1, :cond_3dc

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_3dc

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hookAnimatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-eqz v1, :cond_3dc

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3da

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_3da
    const/4 v0, 0x1

    return v0

    :cond_3dc
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 13
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntentLegacy(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_13
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, p4, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p4

    if-nez p4, :cond_25

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_25
    invoke-virtual {v3, p1, p2, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    if-eqz p2, :cond_38

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->shouldSplitEnterMixed(Landroid/app/PendingIntent;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v3}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_38
    const-string p1, "EncryptApp"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result p2

    const/4 v0, 0x5

    const/4 v2, 0x1

    if-eq p2, v0, :cond_91

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result p2

    if-eq p2, v2, :cond_91

    if-eqz p1, :cond_57

    goto :goto_91

    :cond_57
    const-string p1, "TYPE_DRAG"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_6f

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p2, "it\'s in mirage, don\'t enter split-screen"

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    goto :goto_b8

    :cond_6f
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p1

    if-eqz p1, :cond_7a

    const/16 p1, 0x3ed

    goto :goto_7c

    :cond_7a
    const/16 p1, 0x3ec

    :goto_7c
    move v6, p1

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/2addr p1, v2

    invoke-virtual {p0, v3, v1, p3, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 p1, 0x3

    const/4 v4, 0x0

    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v7, p2, 0x1

    move v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    goto :goto_b8

    :cond_91
    :goto_91
    if-eqz p1, :cond_a3

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 p1, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x3ec

    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v7, p2, 0x1

    move v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    goto :goto_b8

    :cond_a3
    if-ne p3, v2, :cond_a8

    const/16 p1, 0x44f

    goto :goto_aa

    :cond_a8
    const/16 p1, 0x44e

    :goto_aa
    move v6, p1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 p1, 0x1

    const/4 v4, 0x0

    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v7, p2, 0x1

    move v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    :goto_b8
    return-void
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 18
    .param p6  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v4, -0x1

    move v5, p4

    if-ne v5, v4, :cond_24

    if-eqz p3, :cond_10

    move-object v4, p3

    goto :goto_15

    :cond_10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_15
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v3, p1, p2, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object/from16 v6, p8

    invoke-virtual {v0, v3, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void

    :cond_24
    move v4, p6

    move-object/from16 v6, p8

    invoke-virtual {p0, p6, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    if-eqz p3, :cond_2e

    move-object v4, p3

    goto :goto_33

    :cond_2e
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_33
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, v4, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v3, p1, p2, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    move-object v0, p0

    move-object v1, v3

    move v2, p4

    move-object v3, p5

    move v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 18
    .param p6  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move v2, p4

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez p3, :cond_10

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v4, v1

    goto :goto_11

    :cond_10
    move-object v4, p3

    :goto_11
    const/4 v1, -0x1

    if-ne v2, v1, :cond_1e

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_1e
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, v4, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    move-object v1, p1

    move-object v3, p2

    invoke-virtual {v6, p1, p2, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move v4, p6

    invoke-direct {v3, p0, p4, v1, p6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/content/Intent;I)V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    move-object v0, p0

    move-object v1, v6

    move v2, p4

    move-object v3, p5

    move v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startIntentLegacy(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 10
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {p0, v4, p3, p4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz v0, :cond_24

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->isEnterRequestedByDrag()Z

    move-result p4

    if-eqz p4, :cond_24

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, p4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    :cond_24
    invoke-virtual {v3, p1, p2, p3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public startIntents(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 16
    .param p9  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez p5, :cond_28

    if-eqz p4, :cond_a

    goto :goto_f

    :cond_a
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_f
    const/4 p5, 0x0

    invoke-direct {p0, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz p3, :cond_1f

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_22

    :cond_1f
    invoke-virtual {v0, p1, p2, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_22
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0, v0, p11}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void

    :cond_28
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_36
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1, p10}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    iget-object p10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, p10, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    iget-object p10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p10, p10, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x1

    invoke-virtual {v0, p10, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(ZLandroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, p9, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    if-eqz p4, :cond_51

    goto :goto_56

    :cond_51
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_56
    iget-object p9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, p4, p9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz p3, :cond_67

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_6a

    :cond_67
    invoke-virtual {v0, p1, p2, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_6a
    if-eqz p8, :cond_6d

    goto :goto_72

    :cond_6d
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    :goto_72
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-direct {p0, p8, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz p7, :cond_83

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p7, p8}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_86

    :cond_83
    invoke-virtual {v0, p5, p6, p8}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_86
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 p2, 0x3

    const/16 p6, 0x3ec

    const/4 p7, 0x0

    move-object p3, v0

    move-object p4, p11

    move-object p5, p0

    invoke-virtual/range {p1 .. p7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    invoke-direct {p0, p12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setEnterInstanceId(Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 23
    .param p9  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p3

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez p4, :cond_f

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_10

    :cond_f
    move-object v3, p4

    :goto_10
    if-nez p5, :cond_22

    move-object p4, p0

    move-object p5, p1

    move-object/from16 p6, p2

    move-object/from16 p7, p3

    move-object/from16 p8, v3

    move-object/from16 p9, p11

    move-object/from16 p10, v2

    invoke-direct/range {p4 .. p10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_22
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz v1, :cond_35

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p3, v3}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    move/from16 v6, p9

    goto :goto_4b

    :cond_35
    move-object v1, p1

    move-object v4, p2

    invoke-virtual {v2, p1, p2, v3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move/from16 v6, p9

    invoke-direct {v3, p0, v1, v4, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;Landroid/content/Intent;I)V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    :goto_4b
    move-object v0, p0

    move-object v1, v2

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 21

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v1, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_35

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget v6, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->handlePendingEnterTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-eqz v1, :cond_2b

    return v12

    :cond_2b
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    invoke-direct {p0, v1, v9, v10, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingEnterAnimation(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v1

    goto/16 :goto_b9

    :cond_35
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v1, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v13, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->handlePendingDismissTransition(Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-eqz v1, :cond_55

    return v12

    :cond_55
    invoke-direct {p0, v13, v9, v10, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingDismissAnimation(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget v2, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b9

    iget v1, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    if-nez v1, :cond_67

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_69

    :cond_67
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_69
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v7

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v13, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object v0, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->playDragDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/window/WindowContainerToken;)V

    return v12

    :cond_87
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v1, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_b8

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v13

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-result-object v14

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->playResizeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Lcom/android/wm/shell/common/split/SplitDecorManager;Lcom/android/wm/shell/common/split/SplitDecorManager;)V

    return v12

    :cond_b8
    move v1, v12

    :cond_b9
    :goto_b9
    if-nez v1, :cond_bd

    const/4 v0, 0x0

    return v0

    :cond_bd
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v13, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->playAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V

    return v12
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 14
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;

    invoke-direct {v3, p0, v0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p3, p4, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    new-instance p4, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p4

    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    invoke-static {p3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/app/ActivityOptions;->setApplyNoUserActionFlagForShortcut(Z)V

    invoke-static {p4}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    :try_start_29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    const-class p4, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/LauncherApps;

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string p2, "Failed to launch shortcut"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    return-void
.end method

.method public startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 16
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v0, -0x1

    if-ne p3, v0, :cond_23

    if-eqz p2, :cond_b

    goto :goto_10

    :cond_b
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_10
    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p1, p2}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0, v1, p7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void

    :cond_23
    invoke-virtual {p0, p5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    if-eqz p2, :cond_29

    goto :goto_2e

    :cond_29
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_2e
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, p2, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5, p1, p2}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 17
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez p2, :cond_f

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v4, v1

    goto :goto_10

    :cond_f
    move-object v4, p2

    :goto_10
    const/4 v1, -0x1

    move v2, p3

    if-ne v2, v1, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_1d
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, v4, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    invoke-virtual {v6, v1, p1, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    move-object v0, p0

    move-object v1, v6

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 23
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move v8, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1, v2, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->preStartTasksFromRecents(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/os/Bundle;)V

    new-instance v12, Landroid/window/WindowContainerTransaction;

    invoke-direct {v12}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, -0x1

    if-ne v9, v1, :cond_56

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_27
    invoke-virtual {p0, v1, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    :cond_2a
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_3d
    if-eqz p2, :cond_42

    move-object/from16 v1, p2

    goto :goto_47

    :cond_42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_47
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v12, p1, v1}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object/from16 v13, p7

    invoke-virtual {v0, v12, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void

    :cond_56
    move-object/from16 v13, p7

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v1

    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v1

    move v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->hookStartTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IF)Z

    move-result v1

    if-eqz v1, :cond_78

    return-void

    :cond_78
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lockOrientation()V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setEnterNormalType(I)V

    invoke-virtual {p0, v11, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    if-eqz p2, :cond_8c

    move-object/from16 v1, p2

    goto :goto_91

    :cond_8c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_91
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move/from16 v4, p6

    invoke-virtual {v2, p1, v9, v11, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->creatExtraBundleForRecnets(IIIF)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->addExtraBundle(Landroid/os/Bundle;)V

    const-string v3, "androidx.activity.extra"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, v1, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v12, p1, v1}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    if-eqz v10, :cond_ac

    goto :goto_b2

    :cond_ac
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v10, v1

    :goto_b2
    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    const-string/jumbo v2, "startWithTaskFrom"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, v12

    move/from16 v2, p3

    move-object v3, v10

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 21
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move v9, p1

    move v10, p3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v11

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hideZoomWindowWhenSplitPairStart(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startTasksWithLegacyTransition wait for hide zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    if-eqz v11, :cond_3d

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->hookStartTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IF)Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez p2, :cond_4a

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_4b

    :cond_4a
    move-object v2, p2

    :goto_4b
    const/4 v3, -0x1

    if-ne v10, v3, :cond_7f

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5f

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v3

    if-eqz v3, :cond_64

    :cond_5f
    const/16 v3, 0xa

    invoke-virtual {p0, v4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :cond_64
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v1, p1, v2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_7f
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v1, p1, v2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    move/from16 v4, p5

    invoke-direct {v2, p0, p1, p3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;III)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    move-object v0, p0

    move v2, p3

    move-object/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public switchSplitPosition(Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_14

    :cond_12
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_14
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    const v4, 0x7ffffffe

    invoke-static {v0, v2, v3, v4}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    move-result-object v2

    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_28

    :cond_26
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_28
    iget-object v5, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-static {v0, v5, v6, v4}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    new-instance v6, Lcom/android/launcher3/j0;

    invoke-direct {v6, p0, v2, v4, v0}, Lcom/android/launcher3/j0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v5, v0, v1, v3, v6}, Lcom/android/wm/shell/common/split/SplitLayout;->splitSwitching(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Ljava/util/function/Consumer;)V

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v0, :cond_56

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x3ec4ba35

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Switch split position: %s"

    invoke-static {v0, v1, v3, p1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_56
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v7

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v8

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logSwap(IIIIZ)V

    return-void
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateActivityOptions(Landroid/os/Bundle;I)V
    .registers 4
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_9

    :cond_7
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_9
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    return-void
.end method

.method public updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isUpdateSurfaceBoundsDeferred()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_17

    :cond_15
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_17
    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_1e

    :cond_1c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_1e
    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    :goto_23
    move-object v2, p1

    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/common/split/SplitLayout;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Z)V

    return-void
.end method

.method public updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public updateTaskBounds()V
    .registers 3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_16
    return-void
.end method

.method public updateWindowBoundsWrapper(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    return-void
.end method
