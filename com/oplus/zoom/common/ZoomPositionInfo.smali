.class public Lcom/oplus/zoom/common/ZoomPositionInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mScale:F

.field private mScaleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZoomStateManager-"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZoomStateManager-"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p2, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    return-void
.end method

.method public constructor <init>(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZoomStateManager-"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p1, p1, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    iput p1, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    return-void
.end method


# virtual methods
.method public copy()Lcom/oplus/zoom/common/ZoomPositionInfo;
    .registers 3

    new-instance v0, Lcom/oplus/zoom/common/ZoomPositionInfo;

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    invoke-direct {v0, v1, p0}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    return-object v0
.end method

.method public getScale()F
    .registers 3

    iget v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_25

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->TAG:Ljava/lang/String;

    const-string v1, "Zoom scale is less than 0, mScale = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getMinMiniZoomScale(Z)F

    move-result p0

    return p0

    :cond_25
    return v0
.end method

.method public getScaleRect()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public setScale(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    return-void
.end method

.method public setScaleRect(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setZoomPositionInfo(Landroid/graphics/Rect;F)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p2, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    return-void
.end method

.method public setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result p1

    iput p1, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ZoomPositionInfo{mScaleRect="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScaleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/zoom/common/ZoomPositionInfo;->mScale:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
