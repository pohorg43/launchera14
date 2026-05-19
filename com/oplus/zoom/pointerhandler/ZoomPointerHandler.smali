.class public Lcom/oplus/zoom/pointerhandler/ZoomPointerHandler;
.super Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;
.source ""


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;-><init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getPhysicalDragManager()Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    return-void
.end method

.method private initStateIfNeed()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    return-void
.end method


# virtual methods
.method public clearState()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->unRegisterInputListener(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;)Z

    return-void
.end method

.method public onInputEvent(Landroid/view/MotionEvent;I)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    const-string v3, "ZoomPointerHandler"

    const/4 v4, 0x1

    if-eqz p2, :cond_55

    if-eq p2, v4, :cond_2d

    const/4 v5, 0x2

    if-eq p2, v5, :cond_1e

    const/4 v5, 0x3

    if-eq p2, v5, :cond_2d

    goto/16 :goto_a1

    :cond_1e
    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->pretreatMentEvent(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->onDrag(Landroid/view/MotionEvent;)V

    goto :goto_a1

    :cond_2d
    const-string p2, "onInputEvent up or cancel"

    invoke-static {v3, p2}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->pretreatMentEvent(Landroid/view/MotionEvent;)V

    iput-boolean v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->floatZoomIfNeed(II)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->endDrag(Landroid/view/MotionEvent;Landroid/graphics/Rect;Z)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomStateChanged(I)V

    goto :goto_a1

    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInputEvent down:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    invoke-virtual {p2, p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->registerInputListener(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;)Z

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomPointerHandler;->initStateIfNeed()V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v3}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2, p0, v3, v2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->initPhysicsWorld(Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;Landroid/graphics/Rect;Z)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->beginDrag(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoBeforeInput(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->initDragInfo(II)V

    :goto_a1
    return v4
.end method

.method public onMoving(FF)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isAnimating()Z

    move-result v0

    const-string v1, "ZoomPointerHandler"

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isStateOn()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_64

    :cond_17
    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->needStopPhysicsAnimation()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p1, "zoom is transfer to split, stopPhysicsAnimation"

    invoke-static {v1, p1}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->stopPhysicsAnimation()V

    return-void

    :cond_32
    float-to-int p1, p1

    float-to-int p2, p2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p2

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->calculateAndUpdateSurface(II)V

    iget-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->performHapticFeedbackIfNeed(IIZZ)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->floatZoomIfNeed(II)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/zoom/ui/IZoomUiManager;->hideAllTipsView()V

    return-void

    :cond_64
    :goto_64
    const-string p1, "zoom is animating, stopPhysicsAnimation"

    invoke-static {v1, p1}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->stopPhysicsAnimation()V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    return-void
.end method

.method public onSteady(FF)V
    .registers 4

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->calibrationPosition(IIZ)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomStateChanged(I)V

    return-void
.end method
