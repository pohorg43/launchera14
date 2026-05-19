.class public Lcom/oplus/zoom/ZoomController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/ZoomController$ZoomImpl;,
        Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomController"


# instance fields
.field private mActivityManager:Landroid/app/OplusActivityManager;

.field public mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mImpl:Lcom/oplus/zoom/ZoomController$ZoomImpl;

.field public mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mMainHandler:Landroid/os/Handler;

.field private final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

.field private mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mSplitController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportShellZoom:Z

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field private mTransitionController:Lcom/oplus/zoom/transition/ZoomTransitionController;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

.field private mZoomTaskListener:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SystemWindows;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/ZoomController;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/oplus/zoom/ZoomController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iput-object p2, p0, Lcom/oplus/zoom/ZoomController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/oplus/zoom/ZoomController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iput-object p4, p0, Lcom/oplus/zoom/ZoomController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p5, p0, Lcom/oplus/zoom/ZoomController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iput-object p8, p0, Lcom/oplus/zoom/ZoomController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p9, p0, Lcom/oplus/zoom/ZoomController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p10, p0, Lcom/oplus/zoom/ZoomController;->mMainHandler:Landroid/os/Handler;

    iput-object p11, p0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p12, p0, Lcom/oplus/zoom/ZoomController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p13, p0, Lcom/oplus/zoom/ZoomController;->mSplitController:Ljava/util/Optional;

    iput-object p14, p0, Lcom/oplus/zoom/ZoomController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    new-instance p1, Landroid/app/OplusActivityManager;

    invoke-direct {p1}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/ZoomController;->mActivityManager:Landroid/app/OplusActivityManager;

    new-instance p1, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;-><init>(Lcom/oplus/zoom/ZoomController;Lcom/oplus/zoom/ZoomController$1;)V

    iput-object p1, p0, Lcom/oplus/zoom/ZoomController;->mZoomTaskListener:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iput-object p6, p0, Lcom/oplus/zoom/ZoomController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance p1, Lcom/oplus/zoom/ZoomController$ZoomImpl;

    invoke-direct {p1, p0, p0}, Lcom/oplus/zoom/ZoomController$ZoomImpl;-><init>(Lcom/oplus/zoom/ZoomController;Lcom/oplus/zoom/ZoomController;)V

    iput-object p1, p0, Lcom/oplus/zoom/ZoomController;->mImpl:Lcom/oplus/zoom/ZoomController$ZoomImpl;

    const-string p0, "ZoomController"

    const-string p1, "ZoomController is init"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ZoomController;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomController;->lambda$initialize$0(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ui/IZoomUiManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/transition/ZoomTransitionController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mTransitionController:Lcom/oplus/zoom/transition/ZoomTransitionController;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/ZoomController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/ZoomController;->mSupportShellZoom:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/oplus/zoom/ZoomController;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-object p0
.end method

.method private synthetic lambda$initialize$0(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    new-instance v0, Lcom/oplus/zoom/ZoomController$2;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/ZoomController$2;-><init>(Lcom/oplus/zoom/ZoomController;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->addSplitStatusListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)Z

    return-void
.end method


# virtual methods
.method public asZoom()Lcom/oplus/zoom/IZoom;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mImpl:Lcom/oplus/zoom/ZoomController$ZoomImpl;

    return-object p0
.end method

.method public attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method public attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public getAllAppearedTasks()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getLeash(I)Landroid/view/SurfaceControl;
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->peekTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .registers 16

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_supportZoomTaskController()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "ZoomController"

    const-string v0, "unsupport zoom task controller"

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/ZoomController;->mSupportShellZoom:Z

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/ZoomController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, p0, Lcom/oplus/zoom/ZoomController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/zoom/common/ZoomDisplayController;->init(Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomInsetsController;->getInstance()Lcom/oplus/zoom/common/ZoomInsetsController;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/ZoomController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, p0, Lcom/oplus/zoom/ZoomController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/zoom/common/ZoomInsetsController;->init(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->getInstance()Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/ZoomController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/zoom/ZoomController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->init(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getInstance()Lcom/oplus/zoom/common/ZoomSettingsObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/ZoomController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/ZoomController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oplus/zoom/common/ZoomDCSManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/zoom/OplusZoomFeature;->getInstance()Lcom/oplus/zoom/OplusZoomFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/zoom/OplusZoomFeature;->injectZoomController(Lcom/oplus/zoom/ZoomController;)V

    new-instance v1, Lcom/oplus/zoom/ui/ZoomUiManager;

    iget-object v3, p0, Lcom/oplus/zoom/ZoomController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oplus/zoom/ZoomController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v5, p0, Lcom/oplus/zoom/ZoomController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oplus/zoom/ZoomController;->asZoom()Lcom/oplus/zoom/IZoom;

    move-result-object v6

    iget-object v7, p0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/oplus/zoom/ui/ZoomUiManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/os/Handler;Lcom/oplus/zoom/IZoom;Lcom/android/wm/shell/common/ShellExecutor;)V

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/ZoomUiManager;->asZoomUi()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object v13

    iput-object v13, p0, Lcom/oplus/zoom/ZoomController;->mUiManager:Lcom/oplus/zoom/ui/IZoomUiManager;

    new-instance v1, Lcom/oplus/zoom/ZoomRootTaskController;

    iget-object v9, p0, Lcom/oplus/zoom/ZoomController;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/oplus/zoom/ZoomController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v11, p0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v12, p0, Lcom/oplus/zoom/ZoomController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v8, v1

    move-object v14, p0

    invoke-direct/range {v8 .. v14}, Lcom/oplus/zoom/ZoomRootTaskController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/zoom/ui/IZoomUiManager;Lcom/oplus/zoom/ZoomController;)V

    iput-object v1, p0, Lcom/oplus/zoom/ZoomController;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/ZoomController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/zoom/common/ZoomParameterHelper;->init(Landroid/content/Context;Lcom/oplus/zoom/common/ZoomDisplayController;)V

    new-instance v1, Lcom/oplus/zoom/transition/ZoomTransitionController;

    iget-object v2, p0, Lcom/oplus/zoom/ZoomController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v3, p0, Lcom/oplus/zoom/ZoomController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v4, p0, Lcom/oplus/zoom/ZoomController;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/oplus/zoom/transition/ZoomTransitionController;-><init>(Lcom/oplus/zoom/ZoomController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/zoom/ZoomRootTaskController;)V

    iput-object v1, p0, Lcom/oplus/zoom/ZoomController;->mTransitionController:Lcom/oplus/zoom/transition/ZoomTransitionController;

    iget-object v1, p0, Lcom/oplus/zoom/ZoomController;->mZoomTaskListener:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    invoke-static {v1}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_registerZoomTaskListener(Lcom/oplus/zoomwindow/IOplusZoomTaskListener;)Z

    iget-object v1, p0, Lcom/oplus/zoom/ZoomController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    new-instance v2, Lcom/oplus/zoom/ZoomController$1;

    invoke-direct {v2, p0}, Lcom/oplus/zoom/ZoomController$1;-><init>(Lcom/oplus/zoom/ZoomController;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    iget-object v1, p0, Lcom/oplus/zoom/ZoomController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v2, p0, Lcom/oplus/zoom/ZoomController;->mRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/16 v4, -0x64

    aput v4, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController;->mSplitController:Ljava/util/Optional;

    new-instance v1, Lcom/android/launcher3/g;

    invoke-direct {v1, p0}, Lcom/android/launcher3/g;-><init>(Lcom/oplus/zoom/ZoomController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_onZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method public notifyZoomStateChange(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_onZoomStateChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method public onTransitionEnd(I)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_onTransitionEnd(I)V

    return-void
.end method

.method public onTransitionStart()V
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_onTransitionStart()V

    return-void
.end method

.method public registerTransitionListener(ILcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mTransitionController:Lcom/oplus/zoom/transition/ZoomTransitionController;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/transition/ZoomTransitionController;->registerTransitionListener(ILcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;)V

    return-void
.end method

.method public requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V

    return-void
.end method

.method public setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V

    return-void
.end method

.method public unRegisterTransitionListener(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController;->mTransitionController:Lcom/oplus/zoom/transition/ZoomTransitionController;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/transition/ZoomTransitionController;->unRegisterTransitionListener(I)V

    return-void
.end method
