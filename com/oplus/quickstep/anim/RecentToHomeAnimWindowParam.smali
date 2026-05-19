.class public final Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private animRectF:Landroid/graphics/RectF;

.field private cropRectF:Landroid/graphics/RectF;

.field private volatile currentValue:F

.field private volatile endValue:F

.field private volatile miniVisibilityChange:F

.field private volatile velocity:F

.field private windowCorner:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->animRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->cropRectF:Landroid/graphics/RectF;

    const v0, 0x3727c5ac  # 1.0E-5f

    iput v0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->miniVisibilityChange:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->currentValue:F

    iput v0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->endValue:F

    return-void
.end method


# virtual methods
.method public final getAnimRectF()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->animRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getCropRectF()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->cropRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getCurrentValue()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->currentValue:F

    return p0
.end method

.method public final getEndValue()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->endValue:F

    return p0
.end method

.method public final getMiniVisibilityChange()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->miniVisibilityChange:F

    return p0
.end method

.method public final getVelocity()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->velocity:F

    return p0
.end method

.method public final getWindowCorner()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->windowCorner:F

    return p0
.end method

.method public final isValid()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->animRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setAnimRectF(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->animRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setCropRectF(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->cropRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setCurrentValue(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->currentValue:F

    return-void
.end method

.method public final setEndValue(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->endValue:F

    return-void
.end method

.method public final setMiniVisibilityChange(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->miniVisibilityChange:F

    return-void
.end method

.method public final setVelocity(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->velocity:F

    return-void
.end method

.method public final setWindowCorner(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->windowCorner:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "windowCorner = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->windowCorner:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", animRectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->animRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cropRectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->cropRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
