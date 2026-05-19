.class public Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;
.super Landroid/view/IRecentsAnimationController$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/recents/RecentsTransitionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentsController"
.end annotation


# static fields
.field private static final STATE_NEW_TASK:I = 0x1

.field private static final STATE_NORMAL:I


# instance fields
.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mEndRect:Landroid/graphics/Rect;

.field private mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mInfo:Landroid/window/TransitionInfo;

.field private final mInstanceId:I

.field private mIsEnterZoom:Z

.field private mKeyguardLocked:Z

.field private mLeashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/view/IRecentsAnimationRunner;

.field public mMergedInfo:Landroid/window/TransitionInfo;

.field public mMergedToken:Landroid/os/IBinder;

.field private mOpeningSeparateHome:Z

.field private mOpeningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;",
            ">;"
        }
    .end annotation
.end field

.field private mPausingSeparateHome:Z

.field private mPausingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPauseSnapshotsForCancel:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "[I[",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private mPipTask:Landroid/window/WindowContainerToken;

.field private mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public mPlayingToken:Landroid/os/IBinder;

.field private mRecentsTask:Landroid/window/WindowContainerToken;

.field private mRecentsTaskId:I

.field private mState:I

.field private mTargetLeash:Landroid/view/SurfaceControl;

.field private mTransition:Landroid/os/IBinder;

.field private mWillFinishToHome:Z

.field private mZoomBundle:Landroid/os/Bundle;

.field private mZoomRootLeash:Landroid/view/SurfaceControl;

.field private mZoomWindowCrop:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/view/IRecentsAnimationRunner;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskId:I

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    iput v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsEnterZoom:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    new-instance v1, Lcom/android/wm/shell/recents/m;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/recents/m;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V

    iput-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    :try_start_40
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4a

    goto :goto_54

    :catch_4a
    move-exception p2

    const-string v0, "RecentsTransitionHandler"

    const-string v1, "RecentsController: failed to link to death"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    :goto_54
    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->lambda$setWillFinishToHome$5(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;[I[Landroid/window/TaskSnapshot;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancel([I[Landroid/window/TaskSnapshot;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->finishInner(ZZ)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->lambda$setInputConsumerEnabled$2(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->lambda$finish$4(ZZ)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->lambda$merge$1()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;Landroid/window/PictureInPictureSurfaceTransaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->lambda$setFinishTaskTransaction$3(Landroid/window/PictureInPictureSurfaceTransaction;)V

    return-void
.end method

.method private finishInner(ZZ)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const-string v3, "RecentsTransitionHandler"

    if-nez v2, :cond_10

    const-string v0, "Duplicate call to finish"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v5, 0x3

    const/4 v6, 0x5

    const-string v7, "[%d] RecentsController.finishInner: toHome=%b userLeave=%b willFinishToHome=%b state=%d"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_4e

    iget v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v11, v2

    iget-boolean v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    iget v13, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    int-to-long v13, v13

    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v4, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v4, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v11, 0x4

    aput-object v2, v4, v11

    const v2, 0x22c310aa

    const/16 v11, 0x1fd

    invoke-static {v15, v2, v11, v7, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4e
    new-array v2, v6, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v8

    iget-boolean v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v5

    iget v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v13, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    if-eqz v6, :cond_99

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v6, :cond_99

    if-eqz v1, :cond_96

    invoke-virtual {v5, v6, v9}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_99

    :cond_96
    invoke-virtual {v5, v6}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_99
    :goto_99
    if-nez v1, :cond_ff

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    if-eqz v6, :cond_a3

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    if-eqz v6, :cond_ff

    :cond_a3
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_ff

    iget v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    if-nez v6, :cond_ff

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    if-eqz v6, :cond_be

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_cc

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x539ead8b

    const-string v8, "  returning to 3p home"

    invoke-static {v6, v7, v10, v8, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_cc

    :cond_be
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_cc

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x5bc084f4

    const-string v8, "  returning to app"

    invoke-static {v6, v7, v10, v8, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_cc
    :goto_cc
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v9

    :goto_d3
    if-ltz v6, :cond_f2

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v7, v9}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v6, v6, -0x1

    goto :goto_d3

    :cond_f2
    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    if-nez v6, :cond_1ee

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v6, :cond_1ee

    invoke-virtual {v5, v6}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    goto/16 :goto_1ee

    :cond_ff
    if-eqz v1, :cond_161

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    if-eqz v6, :cond_161

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_161

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_117

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x2c4429c7

    const-string v11, "  3p launching home"

    invoke-static {v6, v7, v10, v11, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_117
    move v6, v10

    :goto_118
    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_13b

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v11, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v11, v8, :cond_133

    iget-object v11, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v11, v9}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_133
    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v6, v6, 0x1

    goto :goto_118

    :cond_13b
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v9

    :goto_142
    if-ltz v6, :cond_154

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v7}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v6, v6, -0x1

    goto :goto_142

    :cond_154
    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    if-nez v6, :cond_1ee

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v6, :cond_1ee

    invoke-virtual {v5, v6}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    goto/16 :goto_1ee

    :cond_161
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_16f

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x7890d7d2

    const-string v8, "  normal finish"

    invoke-static {v6, v7, v10, v8, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16f
    move v6, v10

    :goto_170
    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_188

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v6, v6, 0x1

    goto :goto_170

    :cond_188
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_1ee

    move v6, v10

    :goto_18d
    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1c2

    if-nez p2, :cond_1b2

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    invoke-virtual {v7}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->isLeaf()Z

    move-result v7

    if-eqz v7, :cond_1b2

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v7}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_1b2
    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v7}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v6, v6, 0x1

    goto :goto_18d

    :cond_1c2
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    if-eqz v6, :cond_1ee

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v7, :cond_1ee

    if-eqz p2, :cond_1ee

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v7, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    iget-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v7, v8}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v7

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-static {v6, v7, v13}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iput-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    :cond_1ee
    :goto_1ee
    invoke-static {v5, v1}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->setRecentToHome(Landroid/window/WindowContainerTransaction;Z)V

    if-eqz v1, :cond_208

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    if-eqz v6, :cond_208

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v6

    iget v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    iget-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getTrack()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/oplus/transition/OplusInterruptTransitionManager;->reorderHomeWhenFinish(ILandroid/window/WindowContainerToken;ILandroid/window/WindowContainerTransaction;)V

    :cond_208
    invoke-static {v5, v1}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->setRecentToHome(Landroid/window/WindowContainerTransaction;Z)V

    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsEnterZoom:Z

    if-eqz v1, :cond_231

    const-string v1, "FinishZoom enterZoomFromRecent"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTargetLeash:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomRootLeash:Landroid/view/SurfaceControl;

    invoke-static {v1, v3}, Lcom/oplus/zoom/common/ZoomUtil;->updateCurrentLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomRootLeash:Landroid/view/SurfaceControl;

    iget-object v12, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTargetLeash:Landroid/view/SurfaceControl;

    iget-object v14, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mEndRect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomWindowCrop:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Lcom/oplus/zoom/common/ZoomUtil;->handleRecentToZoomAnim(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    iput-boolean v10, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsEnterZoom:Z

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    :cond_231
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookRecentFinish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$500(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions;->hasTmpRemote()Z

    move-result v0

    if-eqz v0, :cond_24b

    invoke-interface {v2, v5, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    goto :goto_255

    :cond_24b
    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_252

    move-object v5, v4

    :cond_252
    invoke-interface {v2, v5, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :goto_255
    invoke-static {v4, v4}, Lcom/oplus/zoom/common/ZoomUtil;->updateCurrentLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->lambda$detachNavigationBarFromApp$6()V

    return-void
.end method

.method private getSnapshotsForPausingTasks()Landroid/util/Pair;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[I[",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_68

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/window/TaskSnapshot;

    const/4 v4, 0x0

    move v5, v4

    :goto_1e
    :try_start_1e
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_66

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_55

    iget v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v9, v7

    iget-object v7, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v11, v7

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v13, -0x22eddcce

    const/4 v14, 0x5

    const-string v15, "[%d] RecentsController.sendCancel: Snapshotting task=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-static {v7, v13, v14, v15, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_55
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v6, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v2, v6, v8}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    aput-object v2, v3, v5
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_63} :catch_68

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_66
    move-object v2, v1

    goto :goto_6a

    :catch_68
    :cond_68
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6a
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$detachNavigationBarFromApp$6()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    const-string v0, "RecentsTransitionHandler"

    const-string v1, "Failed to detach the navigation bar from app"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method private synthetic lambda$finish$4(ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->finishInner(ZZ)V

    return-void
.end method

.method private synthetic lambda$merge$1()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->finishInner(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0xf5c3b22

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v2, "[%d] RecentsController.DeathRecipient: binder died"

    invoke-static {v0, v4, v5, v2, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->finish(ZZ)V

    return-void
.end method

.method private synthetic lambda$setFinishTaskTransaction$3(Landroid/window/PictureInPictureSurfaceTransaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    return-void
.end method

.method private synthetic lambda$setInputConsumerEnabled$2(Z)V
    .registers 9

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusActivityManager_setInputConsumerEnabled(ZLandroid/view/IRecentsAnimationController;)Z

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    if-nez p1, :cond_c

    goto :goto_4a

    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result p1

    if-lez p1, :cond_1f

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    move-result p1

    goto :goto_20

    :cond_1f
    move p1, v2

    :goto_20
    :try_start_20
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_39

    iget p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v3, p0

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x50f5055

    const-string v5, "[%d] RecentsController.setInputConsumerEnabled: set focus to recents"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {p0, v0, v1, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->focusTopTask(I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception p0

    const-string p1, "RecentsTransitionHandler"

    const-string v0, "Failed to set focused task"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    return-void

    :cond_4a
    :goto_4a
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_6e

    if-eqz v0, :cond_52

    move p0, v1

    goto :goto_53

    :cond_52
    move p0, v2

    :goto_53
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x20856e62

    const/16 v4, 0xf

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v1

    const-string p0, "RecentsController.setInputConsumerEnabled: skip, cb?=%b enabled?=%b"

    invoke-static {v0, v3, v4, p0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6e
    return-void
.end method

.method private synthetic lambda$setWillFinishToHome$5(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    return-void
.end method

.method private mergeActivityOnly(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_44

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_41

    :cond_30
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_41
    :goto_41
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_44
    return-void
.end method

.method private sendCancel([I[Landroid/window/TaskSnapshot;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    :try_start_3
    const-string/jumbo v1, "with snapshots"

    goto :goto_9

    :cond_7
    const-string v1, ""

    :goto_9
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    iget v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v4, v2

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x65159597

    const-string v7, "[%d] RecentsController.cancel: calling onAnimationCanceled %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v0

    aput-object v1, v8, v3

    invoke-static {v2, v6, v3, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2b} :catch_2c

    return v3

    :catch_2c
    move-exception p0

    const-string p1, "RecentsTransitionHandler"

    const-string p2, "Error canceling recents animation"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private sendCancelWithSnapshots()Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-direct {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->getSnapshotsForPausingTasks()Landroid/util/Pair;

    move-result-object v0

    :goto_9
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Landroid/window/TaskSnapshot;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancel([I[Landroid/window/TaskSnapshot;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .registers 3

    return-void
.end method

.method public cachePlayingAndMergedInfo(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/TransitionInfo;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPlayingToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mMergedToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mMergedInfo:Landroid/window/TransitionInfo;

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(ZZLjava/lang/String;)V

    return-void
.end method

.method public cancel(ZZLjava/lang/String;)V
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v2, v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x101efdfa

    const/16 v5, 0xd

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object p3, v6, v2

    const-string p3, "[%d] RecentsController.cancel: toHome=%b reason=%s"

    invoke-static {v0, v4, v5, p3, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    iget-object p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    if-eqz p3, :cond_39

    if-eqz p2, :cond_35

    invoke-direct {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancelWithSnapshots()Z

    goto :goto_39

    :cond_35
    const/4 p2, 0x0

    invoke-direct {p0, p2, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancel([I[Landroid/window/TaskSnapshot;)Z

    :cond_39
    :goto_39
    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz p2, :cond_41

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->finishInner(ZZ)V

    goto :goto_44

    :cond_41
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    :goto_44
    return-void
.end method

.method public cleanUp()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x441f2d49

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v2, "[%d] RecentsController.cleanup"

    invoke-static {v0, v4, v5, v2, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    :cond_2f
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_4f

    :goto_37
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4d
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    :cond_4f
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$300(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanupScreenshot()V
    .registers 1

    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .registers 8

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_1b

    iget p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, p1

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x59760f08

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "[%d] RecentsController.detachNavigationBarFromApp"

    invoke-static {p1, v2, v3, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$400(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/quickstep/util/n;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enterZoomFromRecent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 7

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz p5, :cond_3f

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomRootLeash:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTargetLeash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomWindowCrop:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mEndRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    const-string p2, "ZoomScale"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    const-string p2, "hideWindow"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    const-string/jumbo p2, "zoomRadius"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsEnterZoom:Z

    :cond_3f
    const-string p1, "RecentsTransitionHandler"

    const-string p2, "enterZoomFromRecent and finish recent animation"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    const-string/jumbo p2, "toHome"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    const-string/jumbo p3, "sendUserLeaveHint"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->finish(ZZ)V

    return-void
.end method

.method public finish(ZZ)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$400(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/i1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/i1;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishZoom(ZZIILandroid/graphics/Rect;ILandroid/os/Bundle;)V
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "moveHomeToTop"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mZoomBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "sendUserLeaveHint"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsEnterZoom:Z

    move v0, p3

    move v1, p4

    move-object v2, p5

    move v3, p6

    move-object v4, p7

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_recentAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z

    return-void
.end method

.method public handleMidTransitionRequest(Landroid/window/TransitionRequestInfo;)V
    .registers 8

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3c

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v0

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result p1

    if-eq v0, p1, :cond_3c

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_36

    iget p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, p1

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x3a52f374

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "[%d] RecentsController.prepareForMerge: Snapshot due to requested display change"

    invoke-static {p1, v2, v3, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    invoke-direct {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->getSnapshotsForPausingTasks()Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    :cond_3c
    return-void
.end method

.method public merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 31
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string/jumbo v11, "setBinderThreadUxFlag"

    const-string v1, "RecentsTransitionHandlerrecent handler merge"

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_30

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_2f

    iget v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x4f827049  # 4.3767936E9f

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "[%d] RecentsController.merge: skip, no finish callback"

    invoke-static {v4, v5, v3, v0, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    return-void

    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v4, 0xc

    if-ne v1, v4, :cond_58

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_51

    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v4, v1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x3cfc5f16

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    const-string v2, "[%d] RecentsController.merge: transit_sleep"

    invoke-static {v1, v6, v3, v2, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    const-string/jumbo v1, "transit_sleep"

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    return-void

    :cond_58
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_71

    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v4, v1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x440d6f8b

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    const-string v4, "[%d] RecentsController.merge"

    invoke-static {v1, v6, v3, v4, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_71
    iput-boolean v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    new-instance v1, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v1}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v12, v2

    move v13, v12

    move v14, v13

    move-object v15, v5

    move-object v7, v6

    move-object v5, v4

    move-object v4, v3

    move v3, v14

    :goto_84
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1d4

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    move-object/from16 v16, v11

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-eqz v11, :cond_c3

    iget-object v10, v11, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v10

    if-eqz v10, :cond_c3

    const-string/jumbo v1, "task #"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is always_on_top"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    return-void

    :cond_c3
    if-eqz v11, :cond_cd

    invoke-static {v6, v8}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v10

    if-eqz v10, :cond_cd

    const/4 v10, 0x1

    goto :goto_ce

    :cond_cd
    const/4 v10, 0x0

    :goto_ce
    if-nez v13, :cond_d5

    if-eqz v10, :cond_d3

    goto :goto_d5

    :cond_d3
    const/4 v13, 0x0

    goto :goto_d6

    :cond_d5
    :goto_d5
    const/4 v13, 0x1

    :goto_d6
    move/from16 v17, v13

    invoke-virtual {v1, v6}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v13

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v18

    if-eqz v18, :cond_11b

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_f9

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    move-object v4, v6

    goto/16 :goto_1c6

    :cond_f9
    if-nez v10, :cond_fd

    if-eqz v13, :cond_1c6

    :cond_fd
    if-eqz v13, :cond_107

    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_107

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    :cond_107
    if-nez v7, :cond_113

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Landroid/util/IntArray;

    invoke-direct {v15}, Landroid/util/IntArray;-><init>()V

    :cond_113
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v13}, Landroid/util/IntArray;->add(I)V

    goto/16 :goto_1c6

    :cond_11b
    move-object/from16 v18, v1

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_149

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_139

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_139

    const/4 v1, 0x1

    move v12, v1

    goto/16 :goto_1c6

    :cond_139
    if-nez v10, :cond_13d

    if-eqz v13, :cond_1c6

    :cond_13d
    if-nez v5, :cond_144

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_144
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c6

    :cond_149
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v8, 0x6

    if-ne v1, v8, :cond_1c6

    const/16 v1, 0x20

    invoke-virtual {v6, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_161

    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    const-string v2, "display change"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(ZZLjava/lang/String;)V

    return-void

    :cond_161
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-nez v1, :cond_16c

    if-eqz v13, :cond_16c

    const/4 v1, 0x1

    move v3, v1

    goto :goto_1c6

    :cond_16c
    if-eqz v13, :cond_195

    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_195

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_195

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_195

    if-nez v7, :cond_18d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Landroid/util/IntArray;

    invoke-direct {v15}, Landroid/util/IntArray;-><init>()V

    :cond_18d
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_1c6

    :cond_195
    if-eqz v13, :cond_1c6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    const/high16 v8, 0x100000

    and-int/2addr v1, v8

    if-eqz v1, :cond_1c6

    if-nez v7, :cond_1ac

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Landroid/util/IntArray;

    invoke-direct {v15}, Landroid/util/IntArray;-><init>()V

    :cond_1ac
    const-string v1, "RecentsTransitionHandler add to opening tasks, taskId = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/util/IntArray;->add(I)V

    move v14, v1

    :cond_1c6
    :goto_1c6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, v16

    move/from16 v13, v17

    move-object/from16 v1, v18

    goto/16 :goto_84

    :cond_1d4
    move-object/from16 v16, v11

    if-eqz v3, :cond_1ee

    if-eqz v12, :cond_1ee

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancelWithSnapshots()Z

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$400(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v2, v0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_1ee
    const/high16 v1, 0x3f800000  # 1.0f

    const-string v8, "RecentsTransitionHandler"

    if-eqz v4, :cond_21b

    iget v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    if-nez v2, :cond_1fd

    const-string v2, "Returning to recents while recents is already idle."

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fd
    if-eqz v5, :cond_205

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_20a

    :cond_205
    const-string v2, "Returning to recents without closing any opening tasks."

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20a
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v9, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    :cond_21b
    const-string v10, "leaf "

    const-string v11, ""

    if-eqz v5, :cond_2cf

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_223
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2cc

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v4

    if-ltz v4, :cond_263

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_25e

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x1

    move-object/from16 v17, v5

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-string v2, "  closing pausing taskId=%d"

    const v3, -0x31a8eea

    invoke-static {v4, v3, v6, v2, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_260

    :cond_25e
    move-object/from16 v17, v5

    :goto_260
    move-object/from16 v18, v10

    goto :goto_2c3

    :cond_263
    move-object/from16 v17, v5

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v4

    if-gez v4, :cond_286

    const-string v4, "Closing a task that wasn\'t opening, this may be split or something unexpected: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v10

    goto :goto_2c4

    :cond_286
    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_2bc

    invoke-virtual {v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_29a

    move-object v3, v10

    goto :goto_29b

    :cond_29a
    move-object v3, v11

    :goto_29b
    iget-object v4, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v4, v4

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    move-object/from16 v18, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v10, v19

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v10, v4

    const-string v3, "  pausing opening %staskId=%d"

    const v4, -0x1a6faf7f

    const/4 v5, 0x4

    invoke-static {v6, v4, v5, v3, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2be

    :cond_2bc
    move-object/from16 v18, v10

    :goto_2be
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2c3
    const/4 v2, 0x1

    :goto_2c4
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v17

    move-object/from16 v10, v18

    goto/16 :goto_223

    :cond_2cc
    move-object/from16 v18, v10

    goto :goto_2d2

    :cond_2cf
    move-object/from16 v18, v10

    const/4 v2, 0x0

    :goto_2d2
    if-eqz v7, :cond_482

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_482

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v10, v1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2e8
    invoke-virtual {v15}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2f6

    invoke-virtual {v15, v1}, Landroid/util/IntArray;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e8

    :cond_2f6
    if-lez v2, :cond_2fb

    new-array v1, v2, [Landroid/view/RemoteAnimationTarget;

    goto :goto_2fc

    :cond_2fb
    const/4 v1, 0x0

    :goto_2fc
    move-object/from16 v17, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v6, v1

    move/from16 v19, v2

    :goto_303
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_47b

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v15, v6}, Landroid/util/IntArray;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_319

    const/4 v1, 0x1

    goto :goto_31a

    :cond_319
    const/4 v1, 0x0

    :goto_31a
    move/from16 v20, v1

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v4

    if-ltz v4, :cond_3d7

    if-eqz v20, :cond_384

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$500(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/Transitions;->hasTmpRemote()Z

    move-result v1

    if-eqz v1, :cond_365

    if-eqz v14, :cond_365

    add-int/lit8 v21, v19, 0x1

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    move-object/from16 v22, v2

    move-object v2, v5

    move-object/from16 v23, v3

    move v3, v10

    move-object/from16 v24, v11

    move v11, v4

    move-object/from16 v4, p1

    move/from16 v25, v14

    move-object v14, v5

    move-object/from16 v5, p2

    move/from16 v26, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v7

    move-object/from16 v7, v22

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/transition/OplusInterruptTransitionManager;->initTargetWithTaskLeash(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Landroid/window/TransitionInfo;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    aput-object v1, v17, v19

    const-string/jumbo v1, "recents merge, taskIsChangeMode, reparent task to new transition-leash"

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    move/from16 v19, v21

    goto :goto_38e

    :cond_365
    move/from16 v26, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move/from16 v25, v14

    move v11, v4

    move-object v14, v5

    add-int/lit8 v1, v19, 0x1

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v2, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {v14, v10, v2}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    aput-object v2, v17, v19

    move/from16 v19, v1

    goto :goto_38e

    :cond_384
    move/from16 v26, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move/from16 v25, v14

    move v11, v4

    move-object v14, v5

    :goto_38e
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_3be

    if-eqz v20, :cond_39f

    move-object/from16 v2, v18

    goto :goto_3a1

    :cond_39f
    move-object/from16 v2, v24

    :goto_3a1
    iget-object v3, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v3, v3

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x35bde581

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v7, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    const-string v2, "  opening pausing %staskId=%d"

    const/4 v3, 0x4

    invoke-static {v5, v6, v3, v2, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3be
    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v9, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v3, p1

    goto/16 :goto_471

    :cond_3d7
    move/from16 v26, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move/from16 v25, v14

    move-object v14, v5

    if-eqz v20, :cond_437

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-static {v14, v10, v3, v9, v1}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    add-int/lit8 v2, v19, 0x1

    aput-object v1, v17, v19

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-static {v14, v4}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v4

    iget-object v5, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v6, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v4, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_428

    iget v4, v1, Landroid/view/RemoteAnimationTarget;->taskId:I

    int-to-long v4, v4

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v7, v5

    const-string v4, "  opening new leaf taskId=%d"

    const v5, 0x2bd5f054

    invoke-static {v6, v5, v11, v4, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_428
    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v5, v14, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v2

    goto :goto_471

    :cond_437
    move-object/from16 v3, p1

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_458

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x34527606

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    const-string v1, "  opening new taskId=%d"

    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_458
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v9, v1, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    const/4 v4, 0x0

    invoke-direct {v2, v14, v4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_471
    add-int/lit8 v6, v26, 0x1

    move-object/from16 v7, v23

    move-object/from16 v11, v24

    move/from16 v14, v25

    goto/16 :goto_303

    :cond_47b
    move-object/from16 v3, p1

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    const/4 v2, 0x1

    goto :goto_486

    :cond_482
    move-object/from16 v3, p1

    const/16 v17, 0x0

    :goto_486
    move-object/from16 v1, v17

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4ab

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_4ab

    iget v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v4, v4

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x79847f13

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v11, v5

    const-string v4, "[%d] RecentsController.merge: empty pausing tasks"

    invoke-static {v6, v7, v10, v4, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4ab
    if-nez v13, :cond_4b6

    const-string v2, "Got an activity only transition during recents, so apply directly"

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mergeActivityOnly(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_4d7

    :cond_4b6
    if-nez v2, :cond_4d7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to merge this transition, foundRecentsClosing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_4d6

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    const-string v2, "didn\'t merge"

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(ZZLjava/lang/String;)V

    :cond_4d6
    return-void

    :cond_4d7
    :goto_4d7
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;

    move-object/from16 v4, p3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    if-eqz v1, :cond_555

    :try_start_4e3
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_4fe

    iget v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v5, v3

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x2fed81a

    const-string v9, "[%d] RecentsController.merge: calling onTasksAppeared"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v11, v6

    invoke-static {v3, v7, v10, v9, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4fe
    sget-boolean v3, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-nez v3, :cond_508

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0, v1}, Landroid/view/IRecentsAnimationRunner;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    goto :goto_555

    :cond_508
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v10, 0x1

    aput-object v7, v6, v10

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v10

    move-object/from16 v9, v16

    invoke-static {v3, v9, v6, v5}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0, v1, v2}, Landroid/view/IRecentsAnimationRunner;->onTasksAppearedCallback([Landroid/view/RemoteAnimationTarget;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v7, v3, v5

    const/4 v6, 0x1

    aput-object v7, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v0, v9, v3, v2}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54e
    .catch Landroid/os/RemoteException; {:try_start_4e3 .. :try_end_54e} :catch_54f

    goto :goto_555

    :catch_54f
    move-exception v0

    const-string v2, "Error sending appeared tasks to recents animation"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_555
    :goto_555
    sget-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-nez v0, :cond_55e

    const/4 v0, 0x0

    invoke-interface {v4, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    goto :goto_564

    :cond_55e
    const/4 v0, 0x0

    if-nez v1, :cond_564

    invoke-interface {v4, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :cond_564
    :goto_564
    return-void
.end method

.method public removeTask(I)Z
    .registers 9

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPlayingToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mMergedToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mMergedInfo:Landroid/window/TransitionInfo;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$500(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getWindowOrganizer()Landroid/window/WindowOrganizer;

    move-result-object v6

    const/4 v2, 0x1

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/transition/OplusInterruptTransitionManager;->notifyTransitionRemoveTask(Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/window/TransitionInfo;ILandroid/window/WindowOrganizer;)V

    const/4 p0, 0x0

    return p0
.end method

.method public screenshotTask(I)Landroid/window/TaskSnapshot;
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    iget p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v2, p0

    int-to-long v4, p1

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x77be5942

    const/4 v6, 0x5

    const-string v7, "[%d] RecentsController.screenshotTask: taskId=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {p0, v0, v6, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    const-string p1, "RecentsTransitionHandler"

    const-string v0, "Failed to screenshot task"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .registers 2

    return-void
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .registers 3

    return-void
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 11

    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p3, :cond_24

    iget p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, p3

    int-to-long v2, p1

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0x2205ffb

    const/4 v4, 0x5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "[%d] RecentsController.setFinishTaskTransaction: taskId=%d"

    invoke-static {p1, p3, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$400(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p3, Lcom/android/wm/shell/animation/c;

    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;Landroid/window/PictureInPictureSurfaceTransaction;)V

    invoke-interface {p1, p3}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$400(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/recents/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/recents/n;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransition(Landroid/os/IBinder;)V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x6de6cc30

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const-string v1, "[%d] RecentsController.setTransition: id=%s"

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    return-void
.end method

.method public setWillFinishToHome(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$400(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/recents/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/recents/n;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 28

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_23

    iget v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v5, v3

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, -0x21159f5

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v4

    const-string v5, "[%d] RecentsController.start"

    invoke-static {v3, v9, v8, v5, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    iget-object v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    if-eqz v3, :cond_360

    iget-object v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    if-nez v3, :cond_2d

    goto/16 :goto_360

    :cond_2d
    move v3, v4

    move v5, v3

    :goto_2f
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-ge v3, v6, :cond_7c

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v11

    if-eqz v11, :cond_4c

    goto :goto_79

    :cond_4c
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    invoke-static {v11}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v11

    if-eqz v11, :cond_58

    move v5, v8

    goto :goto_79

    :cond_58
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_6b

    iget v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v11, v9, :cond_6b

    iget-object v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v9, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v6, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskId:I

    goto :goto_79

    :cond_6b
    if-eqz v6, :cond_79

    iget v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v9, v10, :cond_79

    iget-object v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v9, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v6, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskId:I

    :cond_79
    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_7c
    iget-object v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    const-string v11, "RecentsTransitionHandler"

    if-nez v3, :cond_8d

    if-nez v5, :cond_8d

    const-string v0, "Tried to start recents while it is already running."

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    return v4

    :cond_8d
    iput-object v0, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    move-object/from16 v3, p4

    iput-object v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v2, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_b4

    move v3, v8

    goto :goto_b5

    :cond_b4
    move v3, v4

    :goto_b5
    iput-boolean v3, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v6}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    mul-int/2addr v13, v10

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    mul-int/2addr v14, v9

    move v15, v4

    :goto_e1
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    if-ge v15, v9, :cond_2f4

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-static {v9}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v17

    if-eqz v17, :cond_11b

    sub-int v4, v12, v15

    iget-object v8, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-static {v9, v4, v0, v1, v8}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual {v1, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v21, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move/from16 v22, v12

    goto/16 :goto_2e3

    :cond_11b
    invoke-virtual {v6, v9}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v8

    if-eqz v8, :cond_22c

    sub-int v8, v12, v15

    iget-object v10, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-static {v9, v8, v0, v1, v10}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    invoke-static {v10}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v10

    if-eqz v10, :cond_1bb

    iget-object v10, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    move-object/from16 v18, v6

    new-instance v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    move-object/from16 v19, v11

    iget-object v11, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v6, v9, v11}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_171

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_167

    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v8, v6

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v10, v9

    const-string v8, "  adding pausing leaf home taskId=%d"

    const v9, -0x7eb92b9b

    invoke-static {v6, v9, v11, v8, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_168

    :cond_167
    const/4 v11, 0x1

    :goto_168
    iput-boolean v11, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v22, v12

    goto :goto_1aa

    :cond_171
    sub-int v6, v14, v15

    sget-boolean v9, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v9, :cond_19f

    iget v9, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v9, v9

    move-object v11, v3

    int-to-long v2, v6

    move-object/from16 v20, v11

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    move-object/from16 v21, v5

    move/from16 v22, v12

    const/4 v5, 0x2

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v12, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v12, v3

    const-string v2, "  adding pausing leaf taskId=%d at layer=%d"

    const v3, -0x671ec744

    const/4 v5, 0x5

    invoke-static {v11, v3, v5, v2, v12}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a5

    :cond_19f
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v22, v12

    :goto_1a5
    iget-object v2, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_1aa
    iget-object v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v2, :cond_1b8

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b8

    iget-object v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v2, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    :cond_1b8
    const/4 v3, 0x3

    goto/16 :goto_281

    :cond_1bb
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move/from16 v22, v12

    if-eqz v4, :cond_1ee

    iget v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1ef

    sub-int v2, v13, v15

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_1e7

    int-to-long v4, v2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, -0x15fc184a

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v11, v5

    const-string v4, "  setting recents activity layer=%d"

    invoke-static {v6, v9, v10, v4, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e7
    iget-object v4, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_281

    :cond_1ee
    const/4 v3, 0x3

    :cond_1ef
    if-eqz v4, :cond_1f8

    iget v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1f8

    goto/16 :goto_281

    :cond_1f8
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_281

    if-eqz v4, :cond_281

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_21f

    iget v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v4, v2

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x3e9333b9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v11, v5

    const-string v4, "  adding opening leaf taskId=%d"

    invoke-static {v2, v6, v10, v4, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21f
    iget-object v2, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v5, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v9, v5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_281

    :cond_22c
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move/from16 v22, v12

    const/4 v3, 0x3

    if-eqz v4, :cond_2cc

    invoke-static {v9, v0}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_2cc

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_285

    sub-int v2, v14, v15

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_26f

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v10, v4

    int-to-long v3, v2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0xca9bf92

    const/4 v12, 0x2

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v5, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const-string v3, "  adding pausing taskId=%d at layer=%d"

    const/4 v4, 0x5

    invoke-static {v6, v8, v4, v3, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26f
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    const/4 v4, 0x0

    invoke-direct {v3, v9, v4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_281
    :goto_281
    move-object/from16 v3, v20

    const/4 v10, 0x2

    goto :goto_2e3

    :cond_285
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_2ca

    sub-int v12, v22, v15

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_2b6

    iget v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v2

    int-to-long v4, v12

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0x5cc7517

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v11, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v11, v3

    const-string v2, "  adding opening taskId=%d at layer=%d"

    const/4 v3, 0x5

    invoke-static {v6, v8, v3, v2, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b7

    :cond_2b6
    const/4 v10, 0x2

    :goto_2b7
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    const/4 v4, 0x0

    invoke-direct {v3, v9, v4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e1

    :cond_2ca
    const/4 v10, 0x2

    goto :goto_2e1

    :cond_2cc
    const/4 v10, 0x2

    invoke-static {v9}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    sub-int v12, v22, v15

    iget-object v2, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-static {v9, v12, v0, v1, v2}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e3

    :cond_2e1
    :goto_2e1
    move-object/from16 v3, v20

    :goto_2e3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p3

    move-object/from16 v6, v18

    move-object/from16 v11, v19

    move-object/from16 v5, v21

    move/from16 v12, v22

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x3

    goto/16 :goto_e1

    :cond_2f4
    move-object/from16 v21, v5

    move-object/from16 v19, v11

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v2

    iget-object v4, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    move-object/from16 v5, p3

    invoke-virtual {v2, v0, v4, v1, v5}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookRecentStart(Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_306
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_321

    iget v0, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x48973714

    const-string v5, "[%d] RecentsController.start: calling onAnimationStart"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    invoke-static {v2, v4, v6, v5, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_321
    iget-object v1, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/RemoteAnimationTarget;

    move-object/from16 v2, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v2, p0

    invoke-interface/range {v1 .. v6}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_34f
    .catch Landroid/os/RemoteException; {:try_start_306 .. :try_end_34f} :catch_350

    goto :goto_35e

    :catch_350
    move-exception v0

    const-string v1, "Error starting recents animation"

    move-object/from16 v2, v19

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "onAnimationStart() failed"

    invoke-virtual {v7, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    :goto_35e
    const/4 v1, 0x1

    return v1

    :cond_360
    :goto_360
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    const/4 v0, 0x0

    return v0
.end method

.method public updateFinishT(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " updateFinishT : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsTransitionHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
