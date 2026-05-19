.class Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageIndicatorModel"
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:[F

.field public final e:[F

.field public final f:[F

.field public final g:[F

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/Path;

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Landroid/graphics/Path;

.field public final m:Landroid/graphics/Matrix;

.field public final n:Landroid/graphics/Matrix;

.field public final o:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;",
            ">;"
        }
    .end annotation
.end field

.field public p:Landroid/view/View;

.field public q:I

.field public r:I

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public y:Z

.field public final synthetic z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/view/View;)V
    .registers 15

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->c:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->h:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->i:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->j:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->m:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->n:Landroid/graphics/Matrix;

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel$1;

    const-string v2, "currentPosition"

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel$1;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->o:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    iput v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->u:F

    iput v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->v:F

    iput-boolean v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->y:Z

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->p:Landroid/view/View;

    const/4 p2, 0x4

    new-array v4, p2, [F

    iput-object v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    new-array v5, p2, [F

    iput-object v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    const/high16 v6, 0x40400000  # 3.0f

    aput v6, v5, v2

    const/4 v6, 0x1

    const/high16 v7, 0x40a00000  # 5.0f

    aput v7, v5, v6

    const/high16 v7, 0x40e00000  # 7.0f

    aput v7, v5, v0

    const/4 v7, 0x3

    const/high16 v8, 0x41100000  # 9.0f

    aput v8, v5, v7

    aput v3, v4, v2

    aget v8, v4, v2

    aget v9, v5, v6

    aget v10, v5, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000  # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v4, v6

    aget v8, v4, v6

    aget v9, v5, v0

    aget v11, v5, v6

    sub-float/2addr v9, v11

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v4, v0

    aget v8, v4, v0

    aget v9, v5, v7

    aget v5, v5, v0

    sub-float/2addr v9, v5

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v4, v7

    iget v4, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    div-float/2addr v4, v10

    aput v4, p2, v2

    iget v2, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->g:F

    div-float/2addr v2, v10

    aput v2, p2, v6

    iget v2, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->h:F

    div-float/2addr v2, v10

    aput v2, p2, v0

    aput v3, p2, v7

    iput v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    iget p1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->i:F

    mul-float/2addr p1, v10

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->t:F

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const p2, 0x44bb8000  # 1500.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p2, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    const p1, 0x3ba3d70a  # 0.005f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method


# virtual methods
.method public a(FF)I
    .registers 9

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->n:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    iget-object v3, v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->g:Landroid/graphics/RectF;

    aget v4, v0, v1

    aget v5, v0, p1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_33
    const/4 p0, -0x1

    return p0
.end method

.method public final b()F
    .registers 4

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    const v0, 0x3d4ccccd  # 0.05f

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_b

    div-float/2addr p0, v0

    return p0

    :cond_b
    const v1, 0x3f733333  # 0.95f

    cmpl-float v1, p0, v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-ltz v1, :cond_16

    sub-float/2addr v2, p0

    div-float/2addr v2, v0

    :cond_16
    return v2
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    add-float/2addr v0, p0

    return v0
.end method

.method public final d(IF)V
    .registers 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    int-to-float v3, v1

    add-float/2addr v3, v2

    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    const-string v6, "COUIPageIndicator2"

    if-gtz v4, :cond_6eb

    if-gez v1, :cond_17

    goto/16 :goto_6eb

    :cond_17
    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    int-to-float v4, v4

    iget v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    add-float/2addr v4, v7

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    iput v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    const/4 v2, 0x0

    aget v7, v1, v2

    iget-object v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    aget v9, v8, v2

    add-float/2addr v7, v9

    iget v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    add-float/2addr v7, v9

    cmpl-float v7, v3, v7

    if-lez v7, :cond_35

    iput-boolean v5, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->y:Z

    goto :goto_3e

    :cond_35
    aget v7, v1, v2

    add-float/2addr v7, v9

    cmpg-float v7, v3, v7

    if-gez v7, :cond_3e

    iput-boolean v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->y:Z

    :cond_3e
    :goto_3e
    aget v7, v1, v2

    aget v10, v8, v2

    add-float/2addr v7, v10

    add-float/2addr v7, v9

    cmpl-float v7, v3, v7

    if-gtz v7, :cond_96

    float-to-double v10, v3

    aget v1, v1, v2

    aget v7, v8, v2

    add-float/2addr v1, v7

    float-to-double v7, v1

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    add-double/2addr v12, v7

    cmpl-double v1, v10, v12

    if-lez v1, :cond_6a

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v1, v1, v2

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    aget v7, v7, v2

    add-float/2addr v1, v7

    iget v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    add-float/2addr v1, v7

    cmpg-float v1, v3, v1

    if-gez v1, :cond_6a

    goto :goto_96

    :cond_6a
    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v7, v1, v2

    iget v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    add-float/2addr v7, v8

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_89

    aget v7, v1, v2

    add-float/2addr v7, v8

    cmpl-float v7, v3, v7

    if-lez v7, :cond_a7

    aget v1, v1, v2

    float-to-double v12, v1

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v7, v12

    cmpg-double v1, v10, v7

    if-gez v1, :cond_a7

    :cond_89
    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v1, v1, v2

    sub-float v1, v3, v1

    iget v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    sub-float/2addr v1, v7

    add-float/2addr v1, v7

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    goto :goto_a7

    :cond_96
    :goto_96
    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v1, v1, v2

    sub-float v1, v3, v1

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    aget v7, v7, v2

    sub-float/2addr v1, v7

    iget v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    sub-float/2addr v1, v7

    add-float/2addr v1, v7

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    :cond_a7
    :goto_a7
    cmpl-float v1, v4, v3

    if-lez v1, :cond_e4

    float-to-double v7, v4

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v1, v1, v2

    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    aget v9, v9, v2

    add-float/2addr v1, v9

    float-to-double v9, v1

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    add-double/2addr v11, v9

    cmpl-double v1, v7, v11

    if-ltz v1, :cond_e4

    float-to-double v7, v3

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v1, v1, v2

    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    aget v9, v9, v2

    add-float/2addr v1, v9

    float-to-double v9, v1

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    add-double/2addr v11, v9

    cmpg-double v1, v7, v11

    if-gtz v1, :cond_e4

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    goto :goto_116

    :cond_e4
    cmpg-float v1, v4, v3

    if-gez v1, :cond_116

    float-to-double v7, v4

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v1, v1, v2

    float-to-double v9, v1

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    add-double/2addr v11, v9

    cmpg-double v1, v7, v11

    if-gtz v1, :cond_116

    float-to-double v3, v3

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v1, v1, v2

    float-to-double v7, v1

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    add-double/2addr v9, v7

    cmpl-double v1, v3, v9

    if-ltz v1, :cond_116

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    :cond_116
    :goto_116
    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    const/4 v3, 0x6

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    const/high16 v7, 0x3f800000  # 1.0f

    sub-float/2addr v4, v7

    const/4 v8, 0x0

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->v:F

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    if-ge v1, v3, :cond_131

    iput v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->v:F

    :cond_131
    iget-object v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    iget v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->v:F

    iget v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->t:F

    mul-float v10, v8, v9

    aput v10, v4, v2

    const/high16 v10, 0x40000000  # 2.0f

    if-ge v1, v3, :cond_14d

    aget v3, v4, v2

    iget-object v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v8, v8, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    add-float/2addr v9, v8

    int-to-float v1, v1

    mul-float/2addr v9, v1

    add-float/2addr v9, v3

    aput v9, v4, v5

    goto/16 :goto_1ea

    :cond_14d
    cmpl-float v3, v8, v7

    const/high16 v11, 0x40800000  # 4.0f

    const/high16 v12, 0x40c00000  # 6.0f

    if-ltz v3, :cond_172

    add-int/lit8 v3, v1, -0x6

    int-to-float v3, v3

    cmpg-float v3, v8, v3

    if-gtz v3, :cond_172

    aget v1, v4, v2

    mul-float v3, v9, v12

    add-float/2addr v3, v1

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    aget v8, v1, v2

    invoke-static {v8, v10, v11, v3}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v3

    aget v1, v1, v5

    invoke-static {v1, v10, v10, v3}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v1

    aput v1, v4, v5

    goto :goto_1d2

    :cond_172
    cmpg-float v3, v8, v7

    const/4 v13, 0x2

    if-gez v3, :cond_19f

    mul-float v1, v9, v12

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    aget v14, v3, v2

    invoke-static {v14, v11, v10, v1}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v14

    aget v15, v3, v5

    mul-float/2addr v15, v10

    add-float/2addr v15, v14

    aget v13, v3, v13

    mul-float/2addr v13, v10

    add-float/2addr v13, v15

    aget v14, v3, v2

    invoke-static {v14, v11, v10, v1}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v1

    aget v3, v3, v5

    invoke-static {v3, v10, v10, v1}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v1

    aget v3, v4, v2

    add-float/2addr v3, v13

    invoke-static {v1, v13, v8, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v1

    aput v1, v4, v5

    goto :goto_1d2

    :cond_19f
    add-int/lit8 v3, v1, -0x6

    int-to-float v3, v3

    cmpl-float v3, v8, v3

    if-lez v3, :cond_1d2

    mul-float v3, v9, v12

    iget-object v14, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    aget v15, v14, v2

    invoke-static {v15, v11, v10, v3}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v15

    aget v16, v14, v5

    mul-float v16, v16, v10

    add-float v16, v16, v15

    aget v13, v14, v13

    mul-float/2addr v13, v10

    add-float v13, v13, v16

    aget v15, v14, v2

    invoke-static {v15, v11, v10, v3}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v3

    aget v14, v14, v5

    invoke-static {v14, v10, v10, v3}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v3

    aget v14, v4, v2

    add-float/2addr v14, v3

    sub-float/2addr v13, v3

    int-to-float v1, v1

    sub-float/2addr v8, v1

    add-float/2addr v8, v12

    mul-float/2addr v8, v13

    add-float/2addr v8, v14

    aput v8, v4, v5

    :cond_1d2
    :goto_1d2
    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v1, v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    add-float/2addr v1, v9

    mul-float/2addr v1, v12

    mul-float/2addr v9, v12

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    aget v4, v3, v2

    invoke-static {v4, v11, v10, v9}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v4

    aget v3, v3, v5

    mul-float/2addr v3, v10

    mul-float/2addr v3, v10

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v10

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->u:F

    :goto_1ea
    sget-boolean v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    const-string v3, "setCurrentPosition: mVisibleRectOffset = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->v:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_200

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_200
    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->t:F

    div-float/2addr v1, v10

    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_209
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_375

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    iget-object v5, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    int-to-float v8, v5

    iget v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    sub-float/2addr v8, v9

    move v9, v2

    :goto_220
    iget-object v11, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    array-length v12, v11

    if-ge v2, v12, :cond_34d

    aget v12, v11, v2

    cmpl-float v12, v8, v12

    if-ltz v12, :cond_346

    aget v12, v11, v2

    iget-object v13, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    aget v14, v13, v2

    add-float/2addr v12, v14

    cmpg-float v12, v8, v12

    if-gtz v12, :cond_346

    if-nez v2, :cond_23e

    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    aget v9, v9, v2

    goto/16 :goto_314

    :cond_23e
    aget v12, v11, v9

    cmpg-float v12, v8, v12

    if-gez v12, :cond_29a

    iget-boolean v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->y:Z

    if-eqz v9, :cond_272

    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    aget v12, v9, v2

    add-int/lit8 v13, v2, -0x1

    aget v14, v9, v13

    aget v15, v9, v13

    aget v9, v9, v2

    sub-float/2addr v15, v9

    mul-float/2addr v15, v10

    sget-object v9, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->q:Landroid/view/animation/PathInterpolator;

    aget v10, v11, v2

    sub-float v10, v8, v10

    invoke-virtual {v9, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    iget-object v10, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v11, v10, v13

    aget v10, v10, v2

    sub-float/2addr v11, v10

    div-float/2addr v9, v11

    sub-float v9, v7, v9

    mul-float/2addr v9, v15

    sub-float/2addr v14, v9

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto/16 :goto_314

    :cond_272
    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    add-int/lit8 v12, v2, -0x1

    aget v13, v9, v12

    aget v14, v9, v2

    aget v15, v9, v12

    aget v9, v9, v2

    sub-float/2addr v15, v9

    mul-float/2addr v15, v10

    sget-object v9, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->q:Landroid/view/animation/PathInterpolator;

    aget v10, v11, v2

    sub-float v10, v8, v10

    invoke-virtual {v9, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v9, v15

    iget-object v10, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v11, v10, v12

    aget v10, v10, v2

    sub-float/2addr v11, v10

    div-float/2addr v9, v11

    add-float/2addr v9, v14

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto/16 :goto_314

    :cond_29a
    aget v12, v11, v9

    aget v9, v13, v9

    add-float/2addr v12, v9

    cmpl-float v9, v8, v12

    if-lez v9, :cond_313

    iget-boolean v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->y:Z

    if-eqz v9, :cond_2dc

    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    add-int/lit8 v12, v2, -0x1

    aget v14, v9, v12

    aget v15, v9, v2

    aget v16, v9, v12

    aget v9, v9, v2

    sub-float v16, v16, v9

    mul-float v16, v16, v10

    sget-object v9, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->q:Landroid/view/animation/PathInterpolator;

    aget v10, v11, v2

    aget v11, v13, v2

    add-float/2addr v10, v11

    sub-float/2addr v10, v8

    invoke-virtual {v9, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float v9, v9, v16

    iget-object v10, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v11, v10, v2

    iget-object v13, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    aget v16, v13, v2

    add-float v11, v11, v16

    aget v10, v10, v12

    sub-float/2addr v11, v10

    aget v10, v13, v12

    sub-float/2addr v11, v10

    div-float/2addr v9, v11

    add-float/2addr v9, v15

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto :goto_314

    :cond_2dc
    iget-object v9, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->g:[F

    aget v12, v9, v2

    add-int/lit8 v14, v2, -0x1

    aget v15, v9, v14

    aget v16, v9, v14

    aget v9, v9, v2

    sub-float v16, v16, v9

    mul-float v16, v16, v10

    sget-object v9, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->q:Landroid/view/animation/PathInterpolator;

    aget v10, v11, v2

    aget v11, v13, v2

    add-float/2addr v10, v11

    sub-float/2addr v10, v8

    invoke-virtual {v9, v10}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v9

    iget-object v10, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->e:[F

    aget v11, v10, v2

    iget-object v13, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    aget v17, v13, v2

    add-float v11, v11, v17

    aget v10, v10, v14

    sub-float/2addr v11, v10

    aget v10, v13, v14

    sub-float/2addr v11, v10

    div-float/2addr v9, v11

    sub-float v9, v7, v9

    mul-float v9, v9, v16

    sub-float/2addr v15, v9

    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_314

    :cond_313
    const/4 v9, 0x0

    :goto_314
    sget-boolean v10, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    const-string v11, "index, mMaskOffset = "

    const-string v12, " "

    invoke-static {v11, v5, v12}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v11, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " level = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dot position = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    const-string v11, " moving to end = "

    invoke-static {v5, v8, v2, v9, v11}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget-boolean v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->y:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_34e

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34e

    :cond_346
    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x40000000  # 2.0f

    goto/16 :goto_220

    :cond_34d
    const/4 v9, 0x0

    :cond_34e
    :goto_34e
    iput v9, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->c:F

    add-float/2addr v9, v1

    iput v9, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->d:F

    invoke-virtual {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->b()V

    iget v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->t:F

    iget v5, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->c:F

    const/high16 v8, 0x40000000  # 2.0f

    mul-float/2addr v5, v8

    add-float/2addr v5, v2

    add-float/2addr v1, v5

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->d:[F

    const/4 v5, 0x0

    aget v2, v2, v5

    neg-float v2, v2

    iget v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->u:F

    add-float/2addr v2, v8

    iput v2, v4, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->f:F

    invoke-virtual {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->b()V

    invoke-virtual {v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->a()V

    const/high16 v10, 0x40000000  # 2.0f

    move v2, v5

    goto/16 :goto_209

    :cond_375
    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_383

    goto/16 :goto_6e5

    :cond_383
    sget-boolean v1, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->p:Z

    const-string v2, "updatePath: mCurrentOffset = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " dots size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3a7

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a7
    iget-object v3, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    iget v5, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    iget-object v5, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    iget v8, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->r:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;

    iget v8, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->d:F

    iget v9, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->e:F

    iget v3, v3, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->c:F

    iget v10, v5, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->d:F

    iget v11, v5, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->e:F

    iget v5, v5, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorDotModel;->c:F

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b()F

    move-result v12

    iget v13, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    const v14, 0x3d4ccccd  # 0.05f

    cmpl-float v15, v13, v14

    const/high16 v16, 0x3f000000  # 0.5f

    const v17, 0x3ee66666  # 0.45f

    if-lez v15, :cond_3e9

    cmpg-float v15, v13, v16

    if-gtz v15, :cond_3e9

    sget-object v7, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->q:Landroid/view/animation/PathInterpolator;

    sub-float/2addr v13, v14

    div-float v13, v13, v17

    invoke-virtual {v7, v13}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v7

    goto :goto_3fe

    :cond_3e9
    cmpl-float v15, v13, v16

    if-lez v15, :cond_402

    const v15, 0x3f733333  # 0.95f

    cmpg-float v15, v13, v15

    if-gez v15, :cond_402

    sget-object v15, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->q:Landroid/view/animation/PathInterpolator;

    sub-float/2addr v7, v13

    sub-float/2addr v7, v14

    div-float v7, v7, v17

    invoke-virtual {v15, v7}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v7

    :goto_3fe
    const/high16 v13, 0x40000000  # 2.0f

    div-float/2addr v7, v13

    goto :goto_403

    :cond_402
    const/4 v7, 0x0

    :goto_403
    iget-object v13, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v13, v13, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->j:F

    cmpg-float v14, v7, v13

    if-gez v14, :cond_40d

    :goto_40b
    move v7, v13

    goto :goto_414

    :cond_40d
    sub-float v13, v16, v13

    cmpl-float v14, v7, v13

    if-lez v14, :cond_414

    goto :goto_40b

    :cond_414
    :goto_414
    iget v13, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    cmpg-float v14, v13, v16

    if-gtz v14, :cond_423

    const/high16 v14, 0x40000000  # 2.0f

    mul-float/2addr v14, v7

    iget v15, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->t:F

    add-float/2addr v15, v5

    add-float/2addr v15, v3

    mul-float/2addr v15, v14

    goto :goto_424

    :cond_423
    const/4 v15, 0x0

    :goto_424
    cmpl-float v13, v13, v16

    if-lez v13, :cond_431

    const/high16 v13, 0x40000000  # 2.0f

    mul-float/2addr v13, v7

    iget v14, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->t:F

    add-float/2addr v14, v5

    add-float/2addr v14, v3

    mul-float/2addr v14, v13

    goto :goto_432

    :cond_431
    const/4 v14, 0x0

    :goto_432
    add-float v13, v8, v15

    move-object/from16 v17, v6

    sub-float v6, v16, v7

    move/from16 p1, v1

    const/high16 v1, 0x40000000  # 2.0f

    move/from16 p2, v7

    invoke-static {v3, v6, v1, v13}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result v7

    move/from16 v18, v12

    move/from16 v19, v13

    float-to-double v12, v9

    mul-float v20, v3, v3

    mul-float v21, v3, v1

    mul-float v21, v21, v6

    mul-float v21, v21, v1

    mul-float v21, v21, v3

    mul-float v21, v21, v6

    sub-float v1, v20, v21

    move/from16 v23, v3

    move-object/from16 v21, v4

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    sub-double/2addr v12, v3

    double-to-float v1, v12

    sub-float v3, v10, v14

    mul-float v4, v5, v6

    const/high16 v12, 0x40000000  # 2.0f

    mul-float/2addr v4, v12

    sub-float v4, v3, v4

    move/from16 v22, v14

    float-to-double v13, v11

    mul-float v24, v5, v5

    mul-float v25, v5, v12

    mul-float v25, v25, v6

    mul-float v25, v25, v12

    mul-float v25, v25, v5

    mul-float v25, v25, v6

    sub-float v12, v24, v25

    move/from16 v24, v10

    move/from16 v25, v11

    float-to-double v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    sub-double/2addr v13, v10

    double-to-float v10, v13

    add-float v11, v7, v4

    const/high16 v12, 0x40000000  # 2.0f

    div-float/2addr v11, v12

    sub-float v13, v11, v8

    sub-float/2addr v13, v15

    sub-float v14, v7, v8

    sub-float/2addr v14, v15

    mul-float/2addr v14, v13

    sub-float v20, v20, v14

    sub-float v13, v1, v9

    div-float v20, v20, v13

    add-float v13, v20, v9

    const-wide v26, 0x4066800000000000L  # 180.0

    mul-float/2addr v6, v12

    move v12, v3

    move v14, v4

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    mul-double v3, v3, v26

    const-wide v26, 0x400921fb54442d18L  # Math.PI

    div-double v3, v3, v26

    double-to-float v3, v3

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->s:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->a:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " startDot = ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") endDot = ("

    move/from16 v20, v14

    move/from16 v14, v23

    invoke-static {v2, v9, v4, v14, v6}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move/from16 v21, v12

    move/from16 v6, v24

    move/from16 v12, v25

    invoke-static {v2, v6, v4, v12, v4}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v12, ") colorFactor = "

    move/from16 v23, v9

    const-string v9, " moveFactor = "

    move/from16 v6, v18

    invoke-static {v2, v5, v12, v6, v9}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v6, " mDepartOffset = "

    const-string v9, " mPortOffset = "

    move/from16 v12, p2

    invoke-static {v2, v12, v6, v15, v9}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v6, ") control1 = ("

    move/from16 v9, v22

    invoke-static {v2, v9, v6, v7, v4}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v6, ") control2 = ("

    invoke-static {v2, v1, v6, v11, v4}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v6, ") control3 = ("

    move/from16 v12, v20

    invoke-static {v2, v13, v6, v12, v4}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ") snapAngle = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_523

    move-object/from16 v4, v17

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_523
    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->h:Landroid/graphics/Path;

    sub-float v4, v8, v14

    const/16 v28, 0x0

    add-float v6, v24, v5

    move/from16 p1, v7

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v7, v7, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    sget-object v31, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v26, v2

    move/from16 v27, v4

    move/from16 v29, v6

    move/from16 v30, v7

    invoke-virtual/range {v26 .. v31}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v7, v7, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v7, v7, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->b:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    move/from16 v7, v23

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    move/from16 v17, v1

    sub-float v1, v7, v14

    add-float v18, v8, v14

    add-float/2addr v14, v7

    const/high16 v31, 0x43340000  # 180.0f

    const/high16 v32, 0x42b40000  # 90.0f

    const/16 v33, 0x0

    move-object/from16 v26, v2

    move/from16 v28, v1

    move/from16 v29, v18

    move/from16 v30, v14

    invoke-virtual/range {v26 .. v33}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    move/from16 v20, v8

    move/from16 v8, v19

    invoke-virtual {v2, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    add-float v8, v4, v15

    add-float v15, v18, v15

    const/high16 v31, 0x43870000  # 270.0f

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v26, v2

    move/from16 v27, v8

    move/from16 v29, v15

    move/from16 v32, v3

    move/from16 v33, v22

    invoke-virtual/range {v26 .. v33}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    invoke-virtual {v2, v11, v13, v12, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    sub-float v10, v24, v5

    sub-float v12, v10, v9

    move/from16 p2, v14

    sub-float v14, v25, v5

    sub-float v9, v6, v9

    add-float v5, v25, v5

    const/high16 v23, 0x43870000  # 270.0f

    sub-float v31, v23, v3

    move-object/from16 v26, v2

    move/from16 v27, v12

    move/from16 v28, v14

    move/from16 v29, v9

    move/from16 v30, v5

    invoke-virtual/range {v26 .. v33}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    move/from16 v22, v15

    move/from16 v15, v24

    invoke-virtual {v2, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    const/high16 v34, 0x43870000  # 270.0f

    const/high16 v15, 0x42b40000  # 90.0f

    const/16 v36, 0x0

    move-object/from16 v29, v2

    move/from16 v30, v10

    move/from16 v31, v14

    move/from16 v32, v6

    move/from16 v33, v5

    move/from16 v35, v15

    invoke-virtual/range {v29 .. v36}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    const/4 v15, 0x0

    invoke-virtual {v2, v6, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    move/from16 v15, v25

    invoke-virtual {v2, v6, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    const/16 v34, 0x0

    move-object/from16 v29, v2

    const/high16 v2, 0x42b40000  # 90.0f

    move/from16 v35, v2

    move/from16 v36, v19

    invoke-virtual/range {v29 .. v36}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    move/from16 v10, v21

    invoke-virtual {v2, v10, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    const/high16 v31, 0x42b40000  # 90.0f

    const/4 v10, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v2

    move/from16 v29, v9

    move/from16 v30, v5

    move/from16 v32, v3

    invoke-virtual/range {v26 .. v33}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v9, v15, v5

    sub-float/2addr v9, v13

    mul-float/2addr v5, v7

    sub-float v5, v5, v17

    move/from16 v7, p1

    invoke-virtual {v2, v11, v9, v7, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    const/high16 v5, 0x42b40000  # 90.0f

    sub-float v31, v5, v3

    move-object/from16 v26, v2

    move/from16 v27, v8

    move/from16 v28, v1

    move/from16 v29, v22

    move/from16 v30, p2

    move/from16 v33, v10

    invoke-virtual/range {v26 .. v33}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    move/from16 v5, p2

    move/from16 v3, v20

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    const/high16 v31, 0x42b40000  # 90.0f

    const/high16 v32, 0x42b40000  # 90.0f

    const/16 v33, 0x0

    move-object/from16 v26, v2

    move/from16 v27, v4

    move/from16 v29, v18

    move/from16 v30, v5

    invoke-virtual/range {v26 .. v33}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v2, v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v2, v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->h:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->k:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->h:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->l:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->i:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->i:Landroid/graphics/Path;

    const/16 v28, 0x0

    add-float v29, v11, v16

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v2, v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    sget-object v31, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v26, v1

    move/from16 v30, v2

    invoke-virtual/range {v26 .. v31}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->j:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->z:Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    iget v2, v2, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->f:F

    sget-object v31, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v26, v1

    move/from16 v27, v11

    move/from16 v29, v6

    move/from16 v30, v2

    invoke-virtual/range {v26 .. v31}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->i:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->h:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->j:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->h:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :goto_6e5
    iget-object v0, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_6eb
    :goto_6eb
    move-object v4, v6

    const-string v0, "Illegal current position"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e(Z)V
    .registers 5

    const/4 v0, 0x6

    if-eqz p1, :cond_16

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_14

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    goto :goto_16

    :cond_14
    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->w:F

    :cond_16
    :goto_16
    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->q:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_22

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    const/high16 p1, 0x40a00000  # 5.0f

    aput p1, p0, v1

    goto :goto_28

    :cond_22
    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator2$PageIndicatorModel;->f:[F

    const/high16 p1, 0x40400000  # 3.0f

    aput p1, p0, v1

    :goto_28
    return-void
.end method
