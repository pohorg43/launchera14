.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;
.super Landroid/view/IRecentsAnimationController$Default;
.source ""


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentsControllerWrap"
.end annotation


# static fields
.field private static final STATE_NEW_TASK:I = 0x1

.field private static final STATE_NORMAL:I


# instance fields
.field private mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

.field private mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

.field private mInfo:Landroid/window/TransitionInfo;

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

.field private mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

.field private mOpeningSeparateHome:Z

.field private mOpeningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;",
            ">;"
        }
    .end annotation
.end field

.field private mPausingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;",
            ">;"
        }
    .end annotation
.end field

.field private mPipTask:Landroid/window/WindowContainerToken;

.field private mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field private mRecentsTask:Landroid/window/WindowContainerToken;

.field private mRecentsTaskId:I

.field private mState:I

.field private mTransition:Landroid/os/IBinder;

.field private mWillFinishToHome:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Default;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    iput v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->lambda$merge$1()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->commitTasksAppearedIfNeeded()V

    return-void
.end method

.method public static synthetic b(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->lambda$merge$0()V

    return-void
.end method

.method private commitTasksAppearedIfNeeded()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    :cond_c
    return-void
.end method

.method private synthetic lambda$merge$0()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    return-void
.end method

.method private synthetic lambda$merge$1()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .registers 3

    return-void
.end method

.method public cleanupScreenshot()V
    .registers 1

    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "RemoteTransitionCompat"

    const-string v0, "Failed to detach the navigation bar from app"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public finish(ZZ)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    const-string v1, "RemoteTransitionCompat"

    if-nez v0, :cond_11

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string p1, "Duplicate call to finish"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_11
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-boolean v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v3, :cond_2d

    if-eqz p1, :cond_2a

    invoke-virtual {v2, v3, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_2d

    :cond_2a
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_2d
    :goto_2d
    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_6e

    iget-boolean v6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_6e

    iget v7, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    if-nez v7, :cond_6e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_42
    if-ltz p1, :cond_61

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, p2, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, -0x1

    goto :goto_42

    :cond_61
    iget-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    if-nez p1, :cond_12f

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz p1, :cond_12f

    invoke-virtual {v2, p1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    goto/16 :goto_12f

    :cond_6e
    if-eqz p1, :cond_c2

    iget-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz p1, :cond_c2

    move p1, v3

    :goto_79
    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_9d

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v6, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_95

    iget-object v6, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v6, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_95
    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, 0x1

    goto :goto_79

    :cond_9d
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_a4
    if-ltz p1, :cond_b6

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, -0x1

    goto :goto_a4

    :cond_b6
    iget-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    if-nez p1, :cond_12f

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz p1, :cond_12f

    invoke-virtual {v2, p1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    goto :goto_12f

    :cond_c2
    move p1, v3

    :goto_c3
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_db

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, 0x1

    goto :goto_c3

    :cond_db
    move p1, v3

    :goto_dc
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_103

    if-nez p2, :cond_f3

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v4}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_f3
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, 0x1

    goto :goto_dc

    :cond_103
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    if-eqz p1, :cond_12f

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v4, :cond_12f

    if-eqz p2, :cond_12f

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    :cond_12f
    :goto_12f
    :try_start_12f
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_138

    move-object v2, v5

    :cond_138
    invoke-interface {p1, v2, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_13b} :catch_13c

    goto :goto_145

    :catch_13c
    move-exception p1

    const-string p2, "Failed to call animation finish callback"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_145
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-boolean v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    iput v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    return-void
.end method

.method public merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-ne v2, v4, :cond_1d

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationCanceled(Ljava/util/HashMap;)V

    iget-boolean v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    return v3

    :cond_1d
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    iput-boolean v3, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    new-instance v4, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v4}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v7, v10, :cond_b9

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    invoke-virtual {v4, v10}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v13

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v14

    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v14

    if-eqz v14, :cond_75

    iget-object v14, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_61

    move-object v2, v10

    goto :goto_b5

    :cond_61
    if-eqz v13, :cond_b5

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6a

    iput-boolean v11, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    :cond_6a
    if-nez v6, :cond_71

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_71
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    :cond_75
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v12

    if-eqz v12, :cond_9a

    iget-object v12, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8d

    move v9, v11

    goto :goto_b5

    :cond_8d
    if-eqz v13, :cond_b5

    if-nez v5, :cond_96

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_96
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    :cond_9a
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    const/4 v13, 0x6

    if-ne v12, v13, :cond_b5

    const/16 v8, 0x20

    invoke-virtual {v10, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_b4

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v2, Lcom/android/systemui/shared/system/d;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/system/d;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    return v3

    :cond_b4
    move v8, v11

    :cond_b5
    :goto_b5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2c

    :cond_b9
    const-string v4, "RemoteTransitionCompat"

    if-eqz v8, :cond_d5

    if-eqz v9, :cond_d5

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v2, Lcom/android/systemui/shared/system/c;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/system/c;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_d4

    const-string v1, "Recents callback doesn\'t support support switching to screenshot, there might be a flicker."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v11, v3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    :cond_d4
    return v3

    :cond_d5
    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz v2, :cond_ff

    iget v8, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    if-nez v8, :cond_e2

    const-string v8, "Returning to recents while recents is already idle."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    if-eqz v5, :cond_ea

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_ef

    :cond_ea
    const-string v8, "Returning to recents without closing any opening tasks."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput v3, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    :cond_ff
    if-eqz v5, :cond_138

    move v2, v3

    move v8, v2

    :goto_103
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_139

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v10

    if-gez v10, :cond_127

    const-string v10, "Back to existing recents animation from an unrecognized task: "

    invoke-static {v10}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v10, v9, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_135

    :cond_127
    iget-object v8, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v11

    :goto_135
    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    :cond_138
    move v8, v3

    :cond_139
    if-eqz v6, :cond_1cd

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1cd

    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/RemoteAnimationTarget;

    move v8, v3

    :goto_154
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1c5

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v10

    if-ltz v10, :cond_196

    iget-object v12, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v12, v12, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {v9, v2, v12}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object v12

    aput-object v12, v5, v8

    iget-object v12, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v1, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v12, p1

    goto :goto_1c2

    :cond_196
    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    move-object/from16 v12, p1

    invoke-static {v9, v2, v12, v1, v10}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v10

    aput-object v10, v5, v8

    aget-object v10, v5, v8

    iget-object v10, v10, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v13, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v13}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v1, v10, v13}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v10, v5, v8

    iget-object v10, v10, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    aget-object v14, v5, v8

    iget-object v14, v14, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v13, v9, v14}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_154

    :cond_1c5
    move-object/from16 v12, p1

    iput v11, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    iput-object v5, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    move v8, v11

    goto :goto_1cf

    :cond_1cd
    move-object/from16 v12, p1

    :goto_1cf
    if-nez v8, :cond_1d7

    const-string v0, "Don\'t know how to merge this transition."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1d7
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    return v11
.end method

.method public removeTask(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public screenshotTask(I)Landroid/window/TaskSnapshot;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    const-string p1, "RemoteTransitionCompat"

    const-string v0, "Failed to screenshot task"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    .registers 4

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInputConsumerEnabled: enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteTransitionCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusActivityManager_setInputConsumerEnabled(ZLandroid/view/IRecentsAnimationController;)Z

    if-nez p1, :cond_1d

    return-void

    :cond_1d
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception p0

    const-string p1, "Failed to set focused task"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    return-void
.end method

.method public start(Lcom/android/systemui/shared/system/RecentsAnimationListener;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 14

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    if-nez v0, :cond_13f

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-object p5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    const/4 p2, 0x0

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    move p1, p2

    :goto_35
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    iput p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v0}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    move v1, p2

    :goto_49
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10d

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-static {p3, v1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-static {v2, v3, p3, p4, v4}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {p4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_109

    :cond_7d
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-eqz v4, :cond_109

    invoke-static {p3, v1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-static {v2, v4, p3, p4, v5}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_c5

    iget-object v5, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v7, v6

    sub-int/2addr v7, v1

    invoke-virtual {p4, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v6, v2, v4}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v2, :cond_109

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    if-eqz v2, :cond_109

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    goto :goto_109

    :cond_c5
    if-eqz v3, :cond_e3

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v5, v6, :cond_e3

    iget-object v2, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v6

    sub-int/2addr v4, v1

    invoke-virtual {p4, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    goto :goto_109

    :cond_e3
    if-eqz v3, :cond_f3

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f3

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    goto :goto_109

    :cond_f3
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v5, v2, v4}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    :goto_109
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_49

    :cond_10d
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v3, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-direct {v3, p0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, [Landroid/view/RemoteAnimationTarget;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_13f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to run a new recents animation while recents is already active."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
