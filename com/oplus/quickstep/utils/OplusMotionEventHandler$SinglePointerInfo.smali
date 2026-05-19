.class final Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/OplusMotionEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SinglePointerInfo"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusMotionEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusMotionEventHandler.kt\ncom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
    }
.end annotation


# instance fields
.field private final accuracy:F

.field private angle:D

.field private final approximateLineEndXY:Landroid/graphics/PointF;

.field private final approximateLineStartEndXYs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field private final approximateLineStartXY:Landroid/graphics/PointF;

.field private area:Landroid/graphics/RectF;

.field private final endXYAfterRotate:[F

.field private final matrix:Landroid/graphics/Matrix;

.field private final newXYAfterRotate:[F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->accuracy:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartEndXYs:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, -0x40800000  # -1.0f

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->area:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->matrix:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    new-array v0, p1, [F

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->newXYAfterRotate:[F

    new-array p1, p1, [F

    fill-array-data p1, :array_42

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->endXYAfterRotate:[F

    return-void

    :array_3a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final updateAreaAndAngle()V
    .registers 11

    sget-object v0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->Companion:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v4, v1

    iget-object v1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v8, v1

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;->calculateTiltAngle(DDDD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_24

    const/16 v2, 0x168

    int-to-double v2, v2

    add-double/2addr v0, v2

    :cond_24
    iput-wide v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->angle:D

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->area:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->accuracy:F

    sub-float v3, v2, p0

    const/4 v4, 0x0

    add-float/2addr v2, p0

    iget p0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public final getApproximateLineStartEndXYs()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartEndXYs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final updateActionDown(FF)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final updateActionMove(FF)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v6, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v0, v0

    mul-float/2addr v6, v6

    add-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    iget v6, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->accuracy:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_33

    return-void

    :cond_33
    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartEndXYs:Ljava/util/ArrayList;

    new-array p2, v3, [F

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    aput v3, p2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, p2, v5

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    aput v3, p2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->updateAreaAndAngle()V

    goto/16 :goto_f4

    :cond_58
    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->matrix:Landroid/graphics/Matrix;

    iget-wide v6, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->angle:D

    double-to-float v6, v6

    iget-object v7, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v6, v8, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->newXYAfterRotate:[F

    aput p1, v0, v4

    aput p2, v0, v5

    iget-object v6, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->area:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->newXYAfterRotate:[F

    aget v7, v6, v4

    aget v6, v6, v5

    invoke-virtual {v0, v7, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->endXYAfterRotate:[F

    iget-object v6, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    aput v7, v0, v4

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aput v6, v0, v5

    iget-object v6, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v6, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->newXYAfterRotate:[F

    aget v6, v6, v5

    aget v0, v0, v5

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_a1

    move v0, v5

    goto :goto_a2

    :cond_a1
    move v0, v4

    :goto_a2
    if-eqz v0, :cond_a6

    move v0, v5

    goto :goto_a7

    :cond_a6
    move v0, v4

    :goto_a7
    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartEndXYs:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v5

    const/4 v0, 0x0

    if-eqz p2, :cond_b9

    goto :goto_ba

    :cond_b9
    move-object p1, v0

    :goto_ba
    if-eqz p1, :cond_dc

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v5

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    if-eqz p1, :cond_dc

    array-length p2, p1

    if-ne p2, v3, :cond_cd

    move v4, v5

    :cond_cd
    if-eqz v4, :cond_d0

    move-object v0, p1

    :cond_d0
    if-eqz v0, :cond_dc

    iget-object p1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    aput p2, v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    aput p1, v0, v1

    :cond_dc
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->updateAreaAndAngle()V

    goto :goto_f4

    :cond_e0
    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineStartXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->approximateLineEndXY:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->area:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->angle:D

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->updateActionMove(FF)V

    :goto_f4
    return-void
.end method
