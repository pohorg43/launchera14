.class public Lcom/oplus/zoom/zoomstate/ZoomIdleState;
.super Lcom/oplus/zoom/zoomstate/ZoomBaseState;
.source ""


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;-><init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mStateId:I

    return-void
.end method

.method private initPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 6

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    goto :goto_26

    :cond_6
    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result p1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v0

    new-instance v1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :goto_26
    return-void
.end method


# virtual methods
.method public getZoomWindowAnimInfo()Lcom/oplus/zoom/animation/ZoomAnimationInfo;
    .registers 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v0, Lcom/oplus/zoom/animation/ZoomAnimationUtils;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    if-eq v1, v2, :cond_3c

    const/16 v2, 0xca

    if-eq v1, v2, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v5

    const-wide/16 v6, 0x190

    move-wide v7, v6

    move v6, v4

    move v10, v5

    move-object v5, v3

    move v3, v10

    goto :goto_55

    :cond_3c
    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v1

    mul-float/2addr v1, v4

    const-wide/16 v6, 0x12c

    new-instance v5, Lcom/oplus/zoom/animation/ZoomAnimationUtils$CubicEaseOutInterpolator;

    invoke-direct {v5}, Lcom/oplus/zoom/animation/ZoomAnimationUtils$CubicEaseOutInterpolator;-><init>()V

    move-wide v7, v6

    move v6, v3

    move-object v10, v5

    move-object v5, v0

    move-object v0, v10

    :goto_55
    new-instance v9, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    invoke-direct {v9}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;-><init>()V

    iget p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    invoke-virtual {v9, p0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setType(I)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartAlpha(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishAlpha(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setDuration(J)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->build()Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    move-result-object p0

    return-object p0
.end method

.method public isIdleState()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onDisplayChanged(I)V
    .registers 2

    return-void
.end method

.method public onEnter(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;IZ)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mLastState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    iput p3, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    invoke-direct {p0, p2}, Lcom/oplus/zoom/zoomstate/ZoomIdleState;->initPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->prepareForZoomExit()V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/zoom/ui/IZoomUiManager;->hideAllTipsView()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onEnter(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isMiniState()Z

    move-result p2

    if-eqz p2, :cond_33

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p0

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->onExitMiniZoomWindow(I)V

    goto :goto_4c

    :cond_33
    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isZoomState()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p0

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->onExitZoomWindow(I)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public onRotateDisplay(ZLandroid/window/WindowContainerTransaction;)V
    .registers 3

    return-void
.end method
