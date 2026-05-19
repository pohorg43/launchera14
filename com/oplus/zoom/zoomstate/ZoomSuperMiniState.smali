.class public Lcom/oplus/zoom/zoomstate/ZoomSuperMiniState;
.super Lcom/oplus/zoom/zoomstate/ZoomBaseState;
.source ""


# instance fields
.field private final mGlobalDragAnimController:Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;-><init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    new-instance p2, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    iput-object p2, p0, Lcom/oplus/zoom/zoomstate/ZoomSuperMiniState;->mGlobalDragAnimController:Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;

    const/4 p1, 0x5

    iput p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mStateId:I

    return-void
.end method

.method private initPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomSuperMiniState;->getAdjustedPosition(Lcom/oplus/zoom/common/ZoomPositionInfo;)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    goto :goto_1b

    :cond_a
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultSuperMiniPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :goto_1b
    return-void
.end method

.method private storePositionInfoForZoomIfNeed(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isZoomState()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    goto :goto_26

    :cond_e
    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isScaleState()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isZoomState()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public getAdjustedPosition(Lcom/oplus/zoom/common/ZoomPositionInfo;)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 13

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_ee

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_ee

    :cond_15
    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result p1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getLeftRightLimitInSuperMini()I

    move-result v6

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopBottomLimitInSuperMini()I

    move-result v7

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAdjustedPosition position oriPos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, v6, :cond_8a

    iget p0, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v7, :cond_74

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v5

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e8

    :cond_74
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    if-le p0, v3, :cond_84

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_e8

    :cond_84
    iput v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    goto :goto_e8

    :cond_8a
    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    if-le v8, v2, :cond_b4

    iget p0, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v7, :cond_9e

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_e8

    :cond_9e
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    if-le p0, v3, :cond_ae

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_e8

    :cond_ae
    iput v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_e8

    :cond_b4
    sub-int/2addr p0, v6

    sub-int v8, v2, v8

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    sub-int/2addr v3, v7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    invoke-static {p0, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ne v0, p0, :cond_d3

    iput v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    goto :goto_e8

    :cond_d3
    if-ne v0, v9, :cond_db

    iput v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_e8

    :cond_db
    if-ne v0, v8, :cond_e3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_e8

    :cond_e3
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->top:I

    :goto_e8
    new-instance p0, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p0, v1, p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p0

    :cond_ee
    :goto_ee
    iget-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->TAG:Ljava/lang/String;

    const-string v0, "getAdjustedPosition position is null, use default"

    invoke-static {p1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultZoomPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getZoomWindowAnimInfo()Lcom/oplus/zoom/animation/ZoomAnimationInfo;
    .registers 8

    iget v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v3

    iget-object v4, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ZoomSuperMiniState getZoomWindowAnimInfo endRect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", endScale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    invoke-direct {v4}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;-><init>()V

    iget p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    invoke-virtual {v4, p0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setType(I)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartAlpha(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishAlpha(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setDuration(J)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    new-instance v0, Lcom/oplus/zoom/animation/ZoomAnimationUtils$CubicEaseOutInterpolator;

    invoke-direct {v0}, Lcom/oplus/zoom/animation/ZoomAnimationUtils$CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->build()Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    move-result-object p0

    return-object p0
.end method

.method public isMiniState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onDisplayChanged(I)V
    .registers 5

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_22

    :cond_d
    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomDisplaySwitchHelper()Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->getZoomPositionWhenDisplayChanged(Lcom/oplus/zoom/common/ZoomPositionInfo;Landroid/graphics/Rect;)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    goto :goto_30

    :cond_22
    :goto_22
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    :goto_30
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomSuperMiniState;->getAdjustedPosition(Lcom/oplus/zoom/common/ZoomPositionInfo;)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-super {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onDisplayChanged(I)V

    return-void
.end method

.method public onEnter(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;IZ)V
    .registers 7

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mLastState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    iput p3, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    invoke-direct {p0, p2}, Lcom/oplus/zoom/zoomstate/ZoomSuperMiniState;->initPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomSuperMiniState;->storePositionInfoForZoomIfNeed(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onEnter(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isZoomState()Z

    move-result p2

    if-eqz p2, :cond_39

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isScaleState()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p3}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p3

    iget p3, p3, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {p2, p3}, Lcom/oplus/zoom/common/ZoomDCSManager;->onExitZoomWindow(I)V

    :cond_39
    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isMiniState()Z

    move-result p1

    if-nez p1, :cond_52

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p0

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->onStartMiniZoomWindow(I)V

    :cond_52
    return-void
.end method

.method public onExit(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-super {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onExit(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    return-void
.end method

.method public onGlobalDragChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomSuperMiniState;->mGlobalDragAnimController:Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->startZoomAnimWhenGlobalDrag(I)V

    return-void
.end method

.method public onOrientationChanged()V
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultSuperMiniPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/common/ZoomPositionInfo;->setScaleRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomSuperMiniState;->getAdjustedPosition(Lcom/oplus/zoom/common/ZoomPositionInfo;)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public onRotateDisplay(ZLandroid/window/WindowContainerTransaction;)V
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultSuperMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onRotateDisplay(ZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method
