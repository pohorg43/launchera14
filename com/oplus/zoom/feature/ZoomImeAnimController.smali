.class public Lcom/oplus/zoom/feature/ZoomImeAnimController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OFFSET_ZOOM_WITH_IME:I = 0xa

.field private static final SYSTEM_LARGEST_BRACKET_ANGLE:I = 0x96

.field private static final SYSTEM_SMALLEST_BRACKET_ANGLE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ZoomAnimation"

.field private static final ZOOM_BOTTOM_OF_SCREENHEIGHT_RATIO:F = 0.55f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRectBeforeImeVisible:Landroid/graphics/Rect;

.field private final mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

.field private mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomBaseState;Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mRectBeforeImeVisible:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    iput-object p3, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mRectBeforeImeVisible:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public isDisplayInBracketMode()Z
    .registers 4

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getRotation()I

    move-result p0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getInstance()Lcom/oplus/zoom/common/ZoomSettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getFoldAngleValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_16

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1f

    :cond_16
    const/16 p0, 0x1e

    if-lt v0, p0, :cond_1f

    const/16 p0, 0x96

    if-gt v0, p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public onImeChanged(ZIZ)V
    .registers 13
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x21
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16c

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_16c

    iget-object v2, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getStateId()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_16c

    iget-object v2, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getStateId()I

    move-result v2

    if-nez v2, :cond_2a

    goto/16 :goto_16c

    :cond_2a
    iget-object v2, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomDecorManager()Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomDecorManager()Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    invoke-virtual {v2, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorView;->updateTouchRegion(Z)V

    :cond_45
    const-string v2, "onImeChanged visible = "

    const-string v3, ", imeHeight = "

    const-string v4, ", position = "

    invoke-static {v2, p1, v3, p2, v4}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v3}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZoomAnimation"

    invoke-static {v3, v2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v4

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result v5

    const/4 v6, 0x0

    if-eqz p1, :cond_104

    if-nez p3, :cond_104

    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mRectBeforeImeVisible:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mRectBeforeImeVisible:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_88
    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/zoom/feature/ZoomImeAnimController;->isDisplayInBracketMode()Z

    move-result p3

    const/high16 v7, 0x41200000  # 10.0f

    if-eqz p3, :cond_a9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p1

    div-int/lit8 v8, v4, 0x2

    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, p3

    invoke-static {v5, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p3

    add-int/2addr p3, v8

    sub-int/2addr p3, v4

    goto :goto_b6

    :cond_a9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p1

    add-int/2addr p3, p2

    invoke-static {v5, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v8

    add-int/2addr v8, p3

    sub-int p3, v8, v4

    :goto_b6
    if-lez p3, :cond_d8

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/zoom/common/ZoomDisplayController;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_cc

    int-to-float p2, v4

    const v4, 0x3f0ccccd  # 0.55f

    mul-float/2addr p2, v4

    float-to-int p2, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_cc
    int-to-float p2, p3

    div-float/2addr p2, v1

    float-to-int p2, p2

    iget p3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, p3, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/feature/ZoomImeAnimController;->updateCropForZoom(I)V

    goto :goto_f6

    :cond_d8
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int p1, v4, p1

    invoke-static {v5, v7}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p3

    add-int/2addr p3, p2

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/oplus/zoom/feature/ZoomImeAnimController;->isDisplayInBracketMode()Z

    move-result p2

    if-eqz p2, :cond_f0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr v4, p2

    sub-int/2addr p1, v4

    :cond_f0
    invoke-virtual {v2, v6, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, v6}, Lcom/oplus/zoom/feature/ZoomImeAnimController;->updateCropForZoom(I)V

    :goto_f6
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mRectBeforeImeVisible:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-le p1, p2, :cond_11f

    const-string p0, "no need to do ime offset anim when new position lower than original"

    invoke-static {v3, p0}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_104
    invoke-virtual {p0, v6}, Lcom/oplus/zoom/feature/ZoomImeAnimController;->updateCropForZoom(I)V

    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mRectBeforeImeVisible:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_115

    const-string p0, "no need to do ime offset anim with ime hide"

    invoke-static {v3, p0}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_115
    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mRectBeforeImeVisible:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mRectBeforeImeVisible:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_11f
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16c

    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    new-instance p2, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p2, v2, v1}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->removeControlButtonIfInSimpleModeIfNeed()V

    new-instance p1, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    invoke-direct {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;-><init>()V

    const/16 p2, 0xc8

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setType(I)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    const-wide/16 p2, 0x14a

    invoke-virtual {p1, p2, p3}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setDuration(J)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    sget-object p2, Lcom/oplus/zoom/animation/ZoomAnimationUtils;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->build()Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->startTransition(Lcom/oplus/zoom/animation/ZoomAnimationInfo;)V

    :cond_16c
    :goto_16c
    return-void
.end method

.method public updateCropForZoom(I)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5f

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-virtual {v1, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getZoomCornerRadius()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setCropY(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCropFromZoom cropY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomAnimation"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/feature/ZoomImeAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->resizeZoomDecorViewHeight(I)V

    :cond_5f
    return-void
.end method
