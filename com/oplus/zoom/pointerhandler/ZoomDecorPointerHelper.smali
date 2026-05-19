.class public Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ZoomDecor"


# instance fields
.field private mCurrentMode:I

.field private mCurrentState:I

.field private mInputHandler:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;

.field private mIsFlipDevice:Z

.field private mIsFoldDevice:Z

.field private mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTouching:Z

.field private mZoomDecorManager:Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

.field private mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mCurrentMode:I

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mCurrentState:I

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->lambda$onSingleTapUp$1()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->lambda$onDoubleTap$2()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->lambda$onSingleTapUp$0()V

    return-void
.end method

.method private canDragZoom()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isExiting()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const-string p0, "ZoomDecor"

    const-string v0, "onScaleEvent can not drag when zoom is animating or exiting"

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private canScaleZoom()Z
    .registers 4

    invoke-static {}, Lcom/oplus/zoom/common/ZoomInsetsController;->getInstance()Lcom/oplus/zoom/common/ZoomInsetsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomInsetsController;->isImeVisible()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ZoomDecor"

    if-eqz v0, :cond_13

    const-string p0, "onScaleEvent can not scale when ime show"

    invoke-static {v2, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_13
    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isExiting()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_26
    :goto_26
    const-string p0, "onScaleEvent can not scale when zoom is animating or exiting"

    invoke-static {v2, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private synthetic lambda$onDoubleTap$2()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->exitZoom()V

    return-void
.end method

.method private synthetic lambda$onSingleTapUp$0()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->fullZoom()V

    return-void
.end method

.method private synthetic lambda$onSingleTapUp$1()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->exitZoom()V

    return-void
.end method


# virtual methods
.method public init(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomDecorManager:Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->isFoldDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mIsFoldDevice:Z

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->isFlipDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mIsFlipDevice:Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mInputHandler:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap actionFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomDecor"

    invoke-static {v2, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4a

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mCurrentState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_47

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mCurrentMode:I

    if-ne v2, v3, :cond_47

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/common/c;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;)V

    invoke-interface {v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p0

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    const-string v3, "double_click"

    invoke-virtual {v2, p0, v3}, Lcom/oplus/zoom/common/ZoomDCSManager;->onZoomCloseWithType(ILjava/lang/String;)V

    :cond_47
    invoke-interface {v0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;->onDoubleTap(Landroid/view/MotionEvent;I)V

    :cond_4a
    return v1
.end method

.method public onDragEvent(Landroid/view/MotionEvent;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    goto :goto_40

    :cond_10
    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mTouching:Z

    if-eqz v0, :cond_40

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->onInputEvent(Landroid/view/MotionEvent;I)Z

    goto :goto_40

    :cond_1a
    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mTouching:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->onInputEvent(Landroid/view/MotionEvent;I)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mTouching:Z

    goto :goto_40

    :cond_27
    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->canDragZoom()Z

    move-result v0

    if-eqz v0, :cond_40

    iput-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mTouching:Z

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->requestGainFocus()V

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->onInputEvent(Landroid/view/MotionEvent;I)Z

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomDecorManager:Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->notifyDecorationChange(I)V

    :cond_40
    :goto_40
    return-void
.end method

.method public onScaleEvent(Landroid/view/MotionEvent;I)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    if-eq v0, v2, :cond_21

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/4 v2, 0x3

    if-eq v0, v2, :cond_21

    const/4 v1, 0x5

    if-eq v0, v1, :cond_17

    const/4 v1, 0x6

    if-eq v0, v1, :cond_17

    goto :goto_4a

    :cond_17
    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mTouching:Z

    if-eqz v0, :cond_4a

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->onInputEvent(Landroid/view/MotionEvent;I)Z

    goto :goto_4a

    :cond_21
    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mTouching:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->onInputEvent(Landroid/view/MotionEvent;I)Z

    iput-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mTouching:Z

    goto :goto_4a

    :cond_2d
    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->canScaleZoom()Z

    move-result v0

    if-eqz v0, :cond_4a

    iput-boolean v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mTouching:Z

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->requestGainFocus()V

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->switchState(ILcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->onInputEvent(Landroid/view/MotionEvent;I)Z

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mInputHandler:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v0, 0x1

    if-ne p3, v0, :cond_c

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_c
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;I)Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mInputHandler:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapConfirmed actionFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomDecor"

    invoke-static {v2, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_40

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mCurrentState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3d

    iget v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mCurrentMode:I

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomDecorManager:Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->getSimpleModeManager()Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v3}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v3

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->showSimpleModeControlView(Lcom/oplus/zoom/common/ZoomPositionInfo;Landroid/content/Context;)V

    :cond_3d
    invoke-interface {v0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;->onSingleTap(Landroid/view/MotionEvent;I)V

    :cond_40
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;I)Z
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSingleTapUp actionFlag = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomDecor"

    invoke-static {v0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2c

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1d

    goto :goto_4b

    :cond_1d
    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/quickstep/util/n;

    invoke-direct {p2, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4b

    :cond_2c
    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/oplus/quickstep/dock/e;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p0

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    const-string p2, "button"

    invoke-virtual {p1, p0, p2}, Lcom/oplus/zoom/common/ZoomDCSManager;->onZoomCloseWithType(ILjava/lang/String;)V

    :goto_4b
    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_17

    packed-switch p2, :pswitch_data_1c

    goto :goto_1a

    :pswitch_7  #0x5, 0x7
    iget-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mIsFoldDevice:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mIsFlipDevice:Z

    if-nez v1, :cond_1a

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->onScaleEvent(Landroid/view/MotionEvent;I)V

    goto :goto_1a

    :pswitch_13  #0x4, 0x6, 0x8
    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->onScaleEvent(Landroid/view/MotionEvent;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->onDragEvent(Landroid/view/MotionEvent;I)V

    :cond_1a
    :goto_1a
    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_13  #00000004
        :pswitch_7  #00000005
        :pswitch_13  #00000006
        :pswitch_7  #00000007
        :pswitch_13  #00000008
    .end packed-switch
.end method

.method public registerInputListener(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;)Z
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mInputHandler:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;

    const/4 p0, 0x1

    return p0
.end method

.method public switchMode(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mCurrentMode:I

    return-void
.end method

.method public switchState(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mCurrentState:I

    return-void
.end method

.method public unRegisterInputListener(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;)Z
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->mInputHandler:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;

    const/4 p0, 0x1

    return p0
.end method
