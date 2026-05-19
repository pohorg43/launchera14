.class public Lcom/oplus/zoom/transition/ZoomTransitionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;,
        Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomAnimation"


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mAnimator:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

.field private mForceHideZoomWindow:Z

.field private volatile mHasTransitionRunning:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mRunningTransition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;",
            ">;"
        }
    .end annotation
.end field

.field private mSeqId:I

.field private mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    iput-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iput-object p3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance p2, Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    invoke-direct {p2, p1, p0, p4}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;-><init>(Landroid/content/Context;Lcom/oplus/zoom/transition/ZoomTransitionManager;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mAnimator:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/oplus/zoom/zoomstate/ZoomStateManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/oplus/zoom/animation/ZoomWindowAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mAnimator:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/transition/ZoomTransitionManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->onTransitionEnd(IZ)V

    return-void
.end method

.method private onTransitionEnd(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    monitor-enter v0

    if-nez p2, :cond_15

    :try_start_5
    iget-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    invoke-direct {p0}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->startNextTransition()V

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private startNextTransition()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->start()V

    const-string p0, "ZoomAnimation"

    const-string v1, "startNextTransition"

    invoke-static {p0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_21
    iput-boolean v2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    const-string p0, "ZoomAnimation"

    const-string v1, "next transition is null set mHasTransitionRunning to false"

    invoke-static {p0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method


# virtual methods
.method public cancelTransition()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    iget-object v3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->cancel()V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1d
    iget-object v2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iput-boolean v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    const-string v1, "ZoomAnimation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTransition mHasTransitionRunning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public isForceHideZoomWindow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mForceHideZoomWindow:Z

    return p0
.end method

.method public isTransitionRunning()Z
    .registers 3

    const-string v0, "isTransitionRunning mHasTransitionRunning = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomAnimation"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    return p0
.end method

.method public setForceHideZoomWindow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mForceHideZoomWindow:Z

    return-void
.end method

.method public startRemoteTransition(I[Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;)Z
    .registers 14

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomWindowAnimInfo()Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    move-result-object v4

    if-nez v4, :cond_11

    const-string p0, "ZoomAnimation"

    const-string p1, "startRemoteTransition no need to start a animation"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_11
    const/16 p1, 0x68

    invoke-virtual {v4}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result v0

    const/4 v6, 0x1

    if-ne p1, v0, :cond_31

    const-string p0, "ZoomAnimation"

    const-string p1, "skip transition:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_31
    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_34
    new-instance v7, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;

    iget v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    move-object v0, v7

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionManager;ILandroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;)V

    new-instance p3, Lcom/oplus/zoom/transition/ZoomTransitionManager$2;

    invoke-direct {p3, p0, p5}, Lcom/oplus/zoom/transition/ZoomTransitionManager$2;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionManager;Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;)V

    invoke-virtual {v7, p3}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->setFinishCallback(Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;)V

    invoke-virtual {v7, p2}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->setAnimTarget([Landroid/view/RemoteAnimationTarget;)V

    iget-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_68

    invoke-virtual {v7}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->start()V

    iget-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    iget p3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p2, p3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "ZoomAnimation"

    const-string p3, "startRemoteTransition"

    invoke-static {p2, p3}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    :cond_68
    iget-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    iget p3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p2, p3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p2, "ZoomAnimation"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RemoteTransition running, put transition in mRunningTransition : mSeqId= "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_87
    iput-boolean v6, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    monitor-exit p1

    return v6

    :catchall_8b
    move-exception p0

    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_34 .. :try_end_8d} :catchall_8b

    throw p0
.end method

.method public startTransition(Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 13

    if-nez p1, :cond_a

    const-string p0, "ZoomAnimation"

    const-string p1, "can not start surface animation"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0x6a

    if-ge v0, v1, :cond_22

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result v0

    if-eq v0, v2, :cond_22

    const-string p0, "ZoomAnimation"

    const-string p1, "type < TRANSIT_SCALE_AND_POSITION, go to start window Transition"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_61

    const-string v0, "android"

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getCallPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "com.android.systemui"

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getCallPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string p0, "ZoomAnimation"

    const-string p2, "no zoom animation,pkg:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getCallPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_61
    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/zoom/animation/ZoomAnimationUtils;->isClosingTransition(I)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string p0, "ZoomAnimation"

    const-string p1, "no zoom animation,exiting"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7b
    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_7e
    new-instance v7, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;

    iget v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    const/4 v8, 0x1

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    move-object v1, v7

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionManager;ILandroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;)V

    new-instance p2, Lcom/oplus/zoom/transition/ZoomTransitionManager$1;

    invoke-direct {p2, p0, p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager$1;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionManager;Lcom/oplus/zoom/animation/ZoomAnimationInfo;)V

    invoke-virtual {v7, p2}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->setFinishCallback(Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;)V

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_b4

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->zoomOrms()V

    invoke-virtual {v7}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->start()V

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    iget p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p1, "ZoomAnimation"

    const-string p2, "startTransition"

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_b4
    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    iget p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p1, "ZoomAnimation"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "transition running, put transition in mRunningTransition : mSeqId= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d3
    iput-boolean v8, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    monitor-exit v0

    return-void

    :catchall_d7
    move-exception p0

    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_7e .. :try_end_d9} :catchall_d7

    throw p0
.end method

.method public startTransition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 14

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomWindowAnimInfo()Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    move-result-object v5

    if-eqz v5, :cond_7e

    if-nez p3, :cond_b

    goto :goto_7e

    :cond_b
    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_e
    new-instance v7, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;

    iget v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    const/4 v8, 0x1

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionManager;ILandroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;)V

    invoke-virtual {v7, p2}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->setTaskLeash(Landroid/view/SurfaceControl;)V

    invoke-virtual {v7, p4}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->setTransitionFinishCallback(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {v7, p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->setStartTransition(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_58

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->zoomOrms()V

    invoke-virtual {v7}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->start()V

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    iget p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p1, "ZoomAnimation"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startTransition for rootLeash = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_58
    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mRunningTransition:Landroid/util/SparseArray;

    iget p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string p1, "ZoomAnimation"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "transition running, TransitionFinishCallback, put transition in mRunningTransition : mSeqId= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mSeqId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_77
    iput-boolean v8, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager;->mHasTransitionRunning:Z

    monitor-exit v0

    return v8

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_e .. :try_end_7d} :catchall_7b

    throw p0

    :cond_7e
    :goto_7e
    const-string p0, "ZoomAnimation"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can not startTransition animInfo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
