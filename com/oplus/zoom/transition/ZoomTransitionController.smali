.class public Lcom/oplus/zoom/transition/ZoomTransitionController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;,
        Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;,
        Lcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomAnimation"


# instance fields
.field private mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mRunningTransition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransition:Lcom/android/wm/shell/transition/Transitions;

.field private final mTransitionListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomController:Lcom/oplus/zoom/ZoomController;

.field private mZoomRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ZoomController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/zoom/ZoomRootTaskController;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mTransitionListener:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mRunningTransition:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    iput-object p3, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mTransition:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    iput-object p4, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mZoomRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/transition/ZoomTransitionController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/transition/ZoomTransitionController;->lambda$onRemoteTransitionStart$1(II)V

    return-void
.end method

.method public static synthetic b(I[ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/oplus/zoom/transition/ZoomTransitionController;->lambda$startAnimation$0(I[ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method

.method private collectTargetInSameParent([Landroid/view/RemoteAnimationTarget;I)[Landroid/view/RemoteAnimationTarget;
    .registers 8

    array-length p0, p1

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_1c

    aget-object v3, p1, v1

    if-eqz v3, :cond_19

    iget-object v4, v3, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_19

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    if-ne v4, p2, :cond_19

    add-int/lit8 v4, v2, 0x1

    aput-object v3, p0, v2

    move v2, v4

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-object p0
.end method

.method private isZoomTransitionChange(Landroid/window/TransitionInfo$Change;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_14

    goto :goto_1d

    :cond_14
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p0

    if-nez p0, :cond_1b

    return v0

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isZoomTransitionChange change = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomAnimation"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isZoomTransitionRequest(Landroid/window/TransitionInfo;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x3900

    if-nez p0, :cond_12

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    :goto_12
    const-string p0, "info.getFlags ="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " info.getType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomAnimation"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onRemoteTransitionStart$1(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/transition/ZoomTransitionController;->onRemoteAnimationFinish(II)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$0(I[ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/oplus/zoom/ZoomRootTaskManager;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoomTransitionController startAnimation taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomAnimation"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, p2, p3, p4}, Lcom/oplus/zoom/ZoomRootTaskManager;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    const/4 p2, 0x0

    aput-boolean p0, p1, p2

    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 4

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2f

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_2f

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_29

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p0

    const/16 v0, 0x65

    if-eq p0, v0, :cond_29

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_52

    :cond_29
    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_2f
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_52

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_52

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result p2

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result p0

    if-eq p2, p0, :cond_52

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_52
    return-object p1
.end method

.method public onRemoteAnimationFinish(II)V
    .registers 5

    const-string v0, "ZoomAnimation"

    const-string v1, "onRemoteTransitionEnd"

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;

    if-eqz v0, :cond_28

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->removeHandler(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->allDone()Z

    move-result p2

    if-eqz p2, :cond_28

    iget-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ZoomController;->onTransitionEnd(I)V

    :cond_28
    return-void
.end method

.method public onRemoteTransitionCancel(ILandroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 5

    const-string p2, "ZoomAnimation"

    const-string v0, "onRemoteTransitionCancel"

    invoke-static {p2, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;

    if-eqz p2, :cond_37

    invoke-virtual {p2}, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->getHandlers()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mTransitionListener:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;

    if-eqz v1, :cond_19

    invoke-interface {v1, p1, v0}, Lcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;->onTransitionCancel(II)V

    goto :goto_19

    :cond_37
    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onRemoteTransitionStart(I[Landroid/view/RemoteAnimationTarget;)V
    .registers 14

    const-string v0, "ZoomAnimation"

    const-string v1, "onRemoteTransitionStart"

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;

    invoke-direct {v1, p0, p1}, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionController;I)V

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_6e

    aget-object v5, p2, v4

    if-eqz v5, :cond_6b

    iget-object v6, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v6, :cond_6b

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->hasHandler(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_6b

    :cond_26
    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-direct {p0, p2, v5}, Lcom/oplus/zoom/transition/ZoomTransitionController;->collectTargetInSameParent([Landroid/view/RemoteAnimationTarget;I)[Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    move v7, v3

    :goto_2f
    iget-object v8, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mTransitionListener:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_6b

    iget-object v8, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mTransitionListener:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "target parentTaskId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_68

    new-instance v9, Lcom/oplus/zoom/transition/a;

    invoke-direct {v9, p0, p1, v5}, Lcom/oplus/zoom/transition/a;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionController;II)V

    invoke-interface {v8, p1, v5, v6, v9}, Lcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;->onTransitionStart(II[Landroid/view/RemoteAnimationTarget;Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;)Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->addHandler(Ljava/lang/Integer;)V

    goto :goto_6b

    :cond_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_6e
    invoke-virtual {v1}, Lcom/oplus/zoom/transition/ZoomTransitionController$RemoteTransition;->allDone()Z

    move-result p2

    if-nez p2, :cond_7a

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7f

    :cond_7a
    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mZoomController:Lcom/oplus/zoom/ZoomController;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ZoomController;->onTransitionEnd(I)V

    :goto_7f
    return-void
.end method

.method public registerTransitionListener(ILcom/oplus/zoom/transition/ZoomTransitionController$IZoomTransitionListener;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTransitionListener taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomAnimation"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mTransitionListener:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 16

    invoke-direct {p0, p2}, Lcom/oplus/zoom/transition/ZoomTransitionController;->isZoomTransitionRequest(Landroid/window/TransitionInfo;)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_8

    return p4

    :cond_8
    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_d
    if-ltz v0, :cond_30

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2d

    move v0, p1

    goto :goto_31

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_30
    move v0, p4

    :goto_31
    if-nez v0, :cond_34

    return p4

    :cond_34
    new-array v0, p1, [Z

    invoke-static {p2, p1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result p1

    :goto_3a
    const-string v1, "ZoomAnimation"

    if-ltz p1, :cond_a0

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5a

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v4

    if-eq v3, v4, :cond_5a

    return p4

    :cond_5a
    invoke-direct {p0, v2}, Lcom/oplus/zoom/transition/ZoomTransitionController;->isZoomTransitionChange(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    if-nez v3, :cond_61

    goto :goto_9d

    :cond_61
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_68

    goto :goto_9d

    :cond_68
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v4

    if-eqz v4, :cond_72

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    move v7, v3

    goto :goto_73

    :cond_72
    move v7, p4

    :goto_73
    if-nez v7, :cond_76

    goto :goto_9d

    :cond_76
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoomTransitionController startAnimation taskLeash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mZoomRootTaskController:Lcom/oplus/zoom/ZoomRootTaskController;

    new-instance v9, Lcom/oplus/zoom/transition/b;

    move-object v1, v9

    move v2, v7

    move-object v3, v0

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oplus/zoom/transition/b;-><init>(I[ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {v8, v7, v9}, Lcom/oplus/zoom/ZoomRootTaskController;->forSpecifiedRootTaskManager(ILjava/util/function/Consumer;)V

    :goto_9d
    add-int/lit8 p1, p1, -0x1

    goto :goto_3a

    :cond_a0
    aget-boolean p0, v0, p4

    if-nez p0, :cond_bb

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " has no anim for this TransitionInfo"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_bb
    return p0
.end method

.method public startZoomTransition(ILandroid/window/WindowContainerTransaction;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mTransition:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    return-void
.end method

.method public unRegisterTransitionListener(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterTransitionListener taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomAnimation"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionController;->mTransitionListener:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
