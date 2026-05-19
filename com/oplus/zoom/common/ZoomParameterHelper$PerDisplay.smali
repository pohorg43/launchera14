.class public Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomParameterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerDisplay"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

.field public final synthetic this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/common/ZoomParameterHelper;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mDisplayId:I

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->initZoomDefaultInfo()V

    return-void
.end method

.method private computeScreenType()I
    .registers 6

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getScreenWidth()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getScreenHeight()I

    move-result v0

    :goto_f
    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getScreenHeight()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getScreenWidth()I

    move-result v1

    :goto_1e
    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getDensity()F

    move-result p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x44160000  # 600.0f

    invoke-static {p0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v1

    const/high16 v3, 0x43f00000  # 480.0f

    invoke-static {p0, v3}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    const/high16 v3, 0x44520000  # 840.0f

    invoke-static {p0, v3}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v3

    const/high16 v4, 0x44610000  # 900.0f

    invoke-static {p0, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p0

    if-ge v2, v1, :cond_45

    const/4 p0, 0x1

    goto :goto_4e

    :cond_45
    if-lt v2, v1, :cond_4d

    if-ge v2, v3, :cond_4d

    if-ge v0, p0, :cond_4d

    const/4 p0, 0x2

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x3

    :goto_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeScreenType screenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomParameterHelper"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private getDensity()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$300(Lcom/oplus/zoom/common/ZoomParameterHelper;)Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result p0

    return p0
.end method

.method private getRotation()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$300(Lcom/oplus/zoom/common/ZoomParameterHelper;)Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getRotation()I

    move-result p0

    return p0
.end method

.method private getScreenHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$300(Lcom/oplus/zoom/common/ZoomParameterHelper;)Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result p0

    return p0
.end method

.method private getScreenWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$300(Lcom/oplus/zoom/common/ZoomParameterHelper;)Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result p0

    return p0
.end method

.method private getZoomParameterStore(I)Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    new-instance p1, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$200(Lcom/oplus/zoom/common/ZoomParameterHelper;)Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mDisplayId:I

    invoke-direct {p1, v0, p0}, Lcom/oplus/zoom/common/zoomparameter/SmallScreenZoomParameter;-><init>(Landroid/content/Context;I)V

    goto :goto_2f

    :cond_11
    const/4 v0, 0x2

    if-ne p1, v0, :cond_22

    new-instance p1, Lcom/oplus/zoom/common/zoomparameter/MiddleScreenZoomParameter;

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$200(Lcom/oplus/zoom/common/ZoomParameterHelper;)Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mDisplayId:I

    invoke-direct {p1, v0, p0}, Lcom/oplus/zoom/common/zoomparameter/MiddleScreenZoomParameter;-><init>(Landroid/content/Context;I)V

    goto :goto_2f

    :cond_22
    new-instance p1, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomParameterHelper;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->access$200(Lcom/oplus/zoom/common/ZoomParameterHelper;)Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mDisplayId:I

    invoke-direct {p1, v0, p0}, Lcom/oplus/zoom/common/zoomparameter/LargeScreenZoomParameter;-><init>(Landroid/content/Context;I)V

    :goto_2f
    return-object p1
.end method

.method private isPortScreen()Z
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getRotation()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getRotation()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method


# virtual methods
.method public getDefaultMiniPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getDefaultMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getDefaultMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMiniZoomRectForDisplayChange(Landroid/graphics/Rect;ILcom/oplus/zoom/common/ZoomPositionInfo;)Landroid/graphics/Rect;
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getDefaultMiniZoomRectForDisplayChange(Landroid/graphics/Rect;ILcom/oplus/zoom/common/ZoomPositionInfo;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSuperMiniPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getDefaultSuperMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSuperMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getDefaultSuperMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultZoomBound(Z)Landroid/graphics/Rect;
    .registers 3

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getDefaultZoomBound(ZZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultZoomBound(ZZ)Landroid/graphics/Rect;
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getDefaultZoomBound(ZZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultZoomPositionInfo(Z)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getDefaultZoomPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultZoomPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-interface {p0, p1, p2}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getDefaultZoomPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultZoomPositionInfoInHandle(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p1, p0, p2}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getDefaultZoomPositionInfoInHandle(ZZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultZoomScale(Z)F
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getDefaultZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getLeftRightLimitInMini()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getLeftRightLimitInMini(Z)I

    move-result p0

    return p0
.end method

.method public getLeftRightLimitInSuperMini()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getLeftRightLimitInSuperMini(Z)I

    move-result p0

    return p0
.end method

.method public getMaxMiniZoomScale(Z)F
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getMaxMiniZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getMaxZoomScale(Z)F
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getMaxZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getMinMiniZoomScale(Z)F
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getMinMiniZoomScale(ZZ)F

    move-result p0

    return p0
.end method

.method public getSuperMiniZoomScale(Z)F
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-interface {p0, p1}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getSuperMiniZoomScale(Z)F

    move-result p0

    return p0
.end method

.method public getTopBottomLimitInMini()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getTopBottomLimitInMini(Z)I

    move-result p0

    return p0
.end method

.method public getTopBottomLimitInSuperMini()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getTopBottomLimitInSuperMini(Z)I

    move-result p0

    return p0
.end method

.method public getTopLimitInZoom()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getTopLimitInZoom(Z)I

    move-result p0

    return p0
.end method

.method public getZoomCornerRadius()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->isPortScreen()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->getZoomCornerRadius(Z)I

    move-result p0

    return p0
.end method

.method public initZoomDefaultInfo()V
    .registers 3

    const-string v0, "ZoomParameterHelper"

    const-string v1, "initZoomDefaultInfo"

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->computeScreenType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->getZoomParameterStore(I)Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomParameterHelper$PerDisplay;->mParameterStore:Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;

    invoke-interface {v0}, Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;->initZoomDefaultInfo()V

    return-void
.end method
