.class public Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final GLOBAL_DRAG_BOTTOM_OFFSET:I = 0x50

.field public static final GLOBAL_DRAG_SIDE_OFFSET:I = 0x18

.field private static final TAG:Ljava/lang/String; = "ZoomAnimation"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

.field private mTmpRectBeforeGlobalDrag:Landroid/graphics/Rect;

.field private mTmpScaleBeforeGlobalDrag:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    iput-object p1, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public startZoomAnimWhenGlobalDrag(I)V
    .registers 9

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultZoomPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultZoomPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3c

    goto :goto_5a

    :cond_3c
    const-string p1, "ZoomAnimation"

    const-string v0, "Share has successfully sent, switch into mini"

    invoke-static {p1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    new-instance v0, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v1

    invoke-direct {v0, v4, v1}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->onSwitchToMini()V

    :goto_5a
    const/4 p1, 0x0

    goto/16 :goto_106

    :cond_5d
    iget-object p1, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mTmpRectBeforeGlobalDrag:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mTmpRectBeforeGlobalDrag:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    const/high16 v4, 0x41c00000  # 24.0f

    if-gez v0, :cond_85

    invoke-static {v3, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v3, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_cd

    :cond_85
    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-le v5, v2, :cond_9e

    invoke-static {v3, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v0

    neg-int v0, v5

    invoke-static {v3, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_cd

    :cond_9e
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v1, :cond_cd

    sub-int v5, v2, v5

    if-ge v0, v5, :cond_b9

    invoke-static {v3, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v3, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_cd

    :cond_b9
    invoke-static {v3, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v0

    neg-int v0, v5

    invoke-static {v3, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_cd
    :goto_cd
    new-instance v0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    invoke-direct {v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setType(I)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mTmpRectBeforeGlobalDrag:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setStartRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setFinishRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    const-wide/16 v0, 0x14a

    invoke-virtual {p1, v0, v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setDuration(J)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    sget-object v0, Lcom/oplus/zoom/animation/ZoomAnimationUtils;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->build()Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    move-result-object p1

    :goto_106
    if-eqz p1, :cond_123

    iget-object v0, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    new-instance v1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getFinishRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getFinishScale()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object p0, p0, Lcom/oplus/zoom/feature/ZoomGlobalDragAnimController;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->startTransition(Lcom/oplus/zoom/animation/ZoomAnimationInfo;)V

    :cond_123
    return-void
.end method
