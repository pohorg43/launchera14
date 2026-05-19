.class public Lcom/oplus/zoom/zoomstate/ZoomMiniState;
.super Lcom/oplus/zoom/zoomstate/ZoomBaseState;
.source ""


# static fields
.field private static final SHOW_TIPS_DELAY:I = 0x258


# instance fields
.field private mIsNeedShowGestureTips:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mPositionInfoRestoreForScale:Lcom/oplus/zoom/common/ZoomPositionInfo;

.field public tipsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;-><init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    new-instance p1, Lcom/oplus/zoom/zoomstate/ZoomMiniState$1;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/zoomstate/ZoomMiniState$1;-><init>(Lcom/oplus/zoom/zoomstate/ZoomMiniState;)V

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->tipsRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;-><init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mPointerHandler:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    const/4 p1, 0x2

    iput p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mStateId:I

    iput-object p3, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/zoomstate/ZoomMiniState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mIsNeedShowGestureTips:Z

    return p0
.end method

.method private initPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->getAdjustedPosition(Lcom/oplus/zoom/common/ZoomPositionInfo;)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    goto :goto_1b

    :cond_a
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :goto_1b
    return-void
.end method

.method private storePositionInfoForScaleIfNeed(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isScaleState()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isMiniState()Z

    move-result p1

    if-eqz p1, :cond_17

    const/16 p1, 0xc8

    if-ne p3, p1, :cond_17

    iput-object p2, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mPositionInfoRestoreForScale:Lcom/oplus/zoom/common/ZoomPositionInfo;

    :cond_17
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
    .registers 14

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f6

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_f6

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

    invoke-virtual {v6}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getLeftRightLimitInMini()I

    move-result v6

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopBottomLimitInMini()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-ge v8, v6, :cond_74

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v7, :cond_5e

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v5

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_d2

    :cond_5e
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    if-le v0, v3, :cond_6e

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_d2

    :cond_6e
    iput v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    goto :goto_d2

    :cond_74
    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    if-le v9, v2, :cond_9e

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_88

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_d2

    :cond_88
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    if-le v0, v3, :cond_98

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_d2

    :cond_98
    iput v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_d2

    :cond_9e
    sub-int/2addr v8, v6

    sub-int v9, v2, v9

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v7

    sub-int/2addr v3, v7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ne v0, v8, :cond_bd

    iput v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    goto :goto_d2

    :cond_bd
    if-ne v0, v10, :cond_c5

    iput v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_d2

    :cond_c5
    if-ne v0, v9, :cond_cd

    iput v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_d2

    :cond_cd
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->top:I

    :goto_d2
    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdjustedPosition newPos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p0, v1, p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p0

    :cond_f6
    :goto_f6
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
    .registers 9

    iget v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eq v0, v1, :cond_74

    const/16 v1, 0x67

    if-eq v0, v1, :cond_54

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_36

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_17

    return-object v2

    :cond_17
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

    move-result v4

    move v5, v4

    move v4, v3

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_82

    :cond_36
    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mPositionInfoRestoreForScale:Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    return-object v2

    :cond_47
    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v4

    iget-object v2, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mPositionInfoRestoreForScale:Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result v2

    move v5, v4

    move v4, v3

    goto :goto_82

    :cond_54
    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object v0

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-interface {v0, v2, v1}, Lcom/oplus/zoom/ui/IZoomUiManager;->getFloatHandleRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v5

    mul-float/2addr v1, v5

    move v5, v4

    move v4, v3

    move v7, v1

    move-object v1, v0

    move-object v0, v2

    move v2, v7

    goto :goto_82

    :cond_74
    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v4

    move v5, v4

    move v4, v2

    :goto_82
    new-instance v6, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    invoke-direct {v6}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;-><init>()V

    iget p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    invoke-virtual {v6, p0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setType(I)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartAlpha(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishAlpha(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

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

    const/4 p0, 0x1

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
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->getAdjustedPosition(Lcom/oplus/zoom/common/ZoomPositionInfo;)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-super {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onDisplayChanged(I)V

    return-void
.end method

.method public onEnter(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;IZ)V
    .registers 10

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mLastState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    iput p3, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mTransit:I

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->storePositionInfoForScaleIfNeed(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;I)V

    invoke-direct {p0, p2}, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->initPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->storePositionInfoForZoomIfNeed(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    iput-boolean p4, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mIsNeedShowGestureTips:Z

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->tipsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x258

    invoke-interface {v0, v2, v3, v4}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onEnter(Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    const-string p1, "last state : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getStateId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->stateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomDCSManager"

    invoke-static {p2, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isZoomState()Z

    move-result p1

    if-eqz p1, :cond_65

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isScaleState()Z

    move-result p1

    if-eqz p1, :cond_65

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p2

    iget p2, p2, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/common/ZoomDCSManager;->onExitZoomWindow(I)V

    :cond_65
    invoke-virtual {p0, v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLastState(Z)Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isMiniState()Z

    move-result p1

    if-nez p1, :cond_7e

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object p0

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->onStartMiniZoomWindow(I)V

    :cond_7e
    return-void
.end method

.method public onExit(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mPointerHandler:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    invoke-virtual {v0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->clearState()V

    invoke-super {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onExit(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    return-void
.end method

.method public onInputEvent(Landroid/view/MotionEvent;I)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mPointerHandler:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->onInputEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged()V
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

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

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->getAdjustedPosition(Lcom/oplus/zoom/common/ZoomPositionInfo;)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/zoom/ui/IZoomUiManager;->hideAllTipsView()V

    return-void
.end method

.method public onRotateDisplay(ZLandroid/window/WindowContainerTransaction;)V
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoRestoreForZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/zoom/ui/IZoomUiManager;->hideAllTipsView()V

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->tipsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->hasCallback(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->tipsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_31
    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->onRotateDisplay(ZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public removeTipsRunnable()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->tipsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_15

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->hasCallback(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->tipsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method
