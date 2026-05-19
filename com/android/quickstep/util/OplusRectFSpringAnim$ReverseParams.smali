.class public final Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/OplusRectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReverseParams"
.end annotation


# instance fields
.field private endRectF:Landroid/graphics/RectF;

.field private endY:F

.field private reverseEnd:F

.field private reverseStart:F

.field private startRectF:Landroid/graphics/RectF;

.field private startY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final getEndRectF()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getEndY()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endY:F

    return p0
.end method

.method public final getNextFrameRectF(IFLandroid/graphics/RectF;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Landroid/graphics/RectF;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "outRectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewUpdate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->reverseStart:F

    iget v3, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->reverseEnd:F

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    move v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p2

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endY:F

    iget v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startY:F

    invoke-static {p2, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {p2, v3, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    const/4 v3, 0x2

    if-eqz p1, :cond_73

    const/4 v4, 0x1

    if-eq p1, v4, :cond_66

    if-eq p1, v3, :cond_5b

    goto :goto_7c

    :cond_5b
    int-to-float p1, v3

    div-float/2addr v2, p1

    sub-float p1, v0, v2

    sub-float p0, v1, p0

    add-float/2addr v0, v2

    invoke-virtual {p3, p1, p0, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_7c

    :cond_66
    int-to-float p1, v3

    div-float/2addr v2, p1

    sub-float v3, v0, v2

    div-float/2addr p0, p1

    sub-float p1, v1, p0

    add-float/2addr v0, v2

    add-float/2addr v1, p0

    invoke-virtual {p3, v3, p1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_7c

    :cond_73
    int-to-float p1, v3

    div-float/2addr v2, p1

    sub-float p1, v0, v2

    add-float/2addr v0, v2

    add-float/2addr p0, v1

    invoke-virtual {p3, p1, v1, v0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_7c
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final getReverseEnd()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->reverseEnd:F

    return p0
.end method

.method public final getReverseStart()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->reverseStart:F

    return p0
.end method

.method public final getStartRectF()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getStartY()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startY:F

    return p0
.end method

.method public final setEndRectF(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setEndY(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->endY:F

    return-void
.end method

.method public final setReverseEnd(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->reverseEnd:F

    return-void
.end method

.method public final setReverseStart(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->reverseStart:F

    return-void
.end method

.method public final setStartRectF(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setStartY(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->startY:F

    return-void
.end method
