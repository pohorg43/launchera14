.class public Lcom/oplus/zoom/zoomstate/ZoomScaleState;
.super Lcom/oplus/zoom/zoomstate/ZoomBaseState;
.source ""


# instance fields
.field private mPointerHandler:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;-><init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    new-instance p1, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;-><init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomScaleState;->mPointerHandler:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    const/4 p1, 0x4

    iput p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mStateId:I

    return-void
.end method

.method private initPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public isScaleState()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onEnter(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;IZ)V
    .registers 7

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mLastState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    iput p3, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    invoke-direct {p0, p2}, Lcom/oplus/zoom/zoomstate/ZoomScaleState;->initPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onEnter(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    return-void
.end method

.method public onExit(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mPositionInfoBeforeInput:Lcom/oplus/zoom/common/ZoomPositionInfo;

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomScaleState;->mPointerHandler:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    invoke-virtual {v0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->clearState()V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    invoke-super {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onExit(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object v0

    iget v0, v0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->onZoomScaleChange(IFF)V

    return-void
.end method

.method public onInputEvent(Landroid/view/MotionEvent;I)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomScaleState;->mPointerHandler:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->onInputEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method
