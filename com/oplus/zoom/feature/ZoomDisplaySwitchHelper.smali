.class public Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenHeight:I

.field private mCurrentScreenWidth:I

.field private mLastScreenHeight:I

.field private mLastScreenWidth:I

.field private mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iput-object p2, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getZoomPositionWhenDisplayChanged(Lcom/oplus/zoom/common/ZoomPositionInfo;Landroid/graphics/Rect;)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 8

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object p2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mLastScreenWidth:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_46

    iget v2, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mLastScreenHeight:I

    div-int/2addr v2, v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v1, v3

    sub-int/2addr p2, v1

    if-lt v2, p2, :cond_34

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniZoomRectForDisplayChange(Landroid/graphics/Rect;ILcom/oplus/zoom/common/ZoomPositionInfo;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_74

    :cond_34
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1, v3, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniZoomRectForDisplayChange(Landroid/graphics/Rect;ILcom/oplus/zoom/common/ZoomPositionInfo;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_74

    :cond_46
    iget v2, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mLastScreenHeight:I

    div-int/2addr v2, v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v1, v3

    sub-int/2addr p2, v1

    if-lt v2, p2, :cond_62

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniZoomRectForDisplayChange(Landroid/graphics/Rect;ILcom/oplus/zoom/common/ZoomPositionInfo;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_74

    :cond_62
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getCurrentBound()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2, p1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniZoomRectForDisplayChange(Landroid/graphics/Rect;ILcom/oplus/zoom/common/ZoomPositionInfo;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_74
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isLandScape()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result p0

    new-instance p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p1, v0, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object p1
.end method

.method public onDisplayChanged(ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getLastScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mLastScreenHeight:I

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getLastScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mLastScreenWidth:I

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mCurrentScreenWidth:I

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/zoom/feature/ZoomDisplaySwitchHelper;->mCurrentScreenHeight:I

    return-void
.end method
