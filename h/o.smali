.class public Lh/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/a$b;
.implements Lh/k;
.implements Lh/m;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/RectF;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lcom/airbnb/lottie/j;

.field public final f:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lh/b;

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Ln/b;Lm/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lh/o;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lh/o;->b:Landroid/graphics/RectF;

    new-instance v0, Lh/b;

    invoke-direct {v0}, Lh/b;-><init>()V

    iput-object v0, p0, Lh/o;->i:Lh/b;

    iget v0, p3, Lm/i;->a:I

    packed-switch v0, :pswitch_data_68

    goto :goto_21

    :pswitch_1e  #0x0
    iget-object v1, p3, Lm/i;->b:Ljava/lang/String;

    goto :goto_23

    :goto_21
    iget-object v1, p3, Lm/i;->b:Ljava/lang/String;

    :goto_23
    iput-object v1, p0, Lh/o;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_6e

    goto :goto_2c

    :pswitch_29  #0x0
    iget-boolean v0, p3, Lm/i;->f:Z

    goto :goto_2e

    :goto_2c
    iget-boolean v0, p3, Lm/i;->f:Z

    :goto_2e
    iput-boolean v0, p0, Lh/o;->d:Z

    iput-object p1, p0, Lh/o;->e:Lcom/airbnb/lottie/j;

    iget-object p1, p3, Lm/i;->d:Ljava/lang/Object;

    check-cast p1, Ll/m;

    invoke-interface {p1}, Ll/m;->createAnimation()Li/a;

    move-result-object p1

    iput-object p1, p0, Lh/o;->f:Li/a;

    iget-object v0, p3, Lm/i;->e:Ljava/lang/Object;

    check-cast v0, Ll/f;

    invoke-virtual {v0}, Ll/f;->createAnimation()Li/a;

    move-result-object v0

    iput-object v0, p0, Lh/o;->g:Li/a;

    iget-object p3, p3, Lm/i;->c:Ll/b;

    invoke-virtual {p3}, Ll/b;->createAnimation()Li/a;

    move-result-object p3

    iput-object p3, p0, Lh/o;->h:Li/a;

    invoke-virtual {p2, p1}, Ln/b;->c(Li/a;)V

    invoke-virtual {p2, v0}, Ln/b;->c(Li/a;)V

    invoke-virtual {p2, p3}, Ln/b;->c(Li/a;)V

    iget-object p1, p1, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_1e  #00000000
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_29  #00000000
    .end packed-switch
.end method


# virtual methods
.method public a(Lk/f;ILjava/util/List;Lk/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/f;",
            "I",
            "Ljava/util/List<",
            "Lk/f;",
            ">;",
            "Lk/f;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lr/g;->f(Lk/f;ILjava/util/List;Lk/f;Lh/k;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ls/c;)V
    .registers 4
    .param p2  # Ls/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ls/c<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lh/o;->g:Li/a;

    iget-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/a;->e:Ls/c;

    goto :goto_20

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/o;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lh/o;->f:Li/a;

    iget-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/a;->e:Ls/c;

    goto :goto_20

    :cond_16
    sget-object v0, Lcom/airbnb/lottie/o;->i:Ljava/lang/Float;

    if-ne p1, v0, :cond_20

    iget-object p0, p0, Lh/o;->h:Li/a;

    iget-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/a;->e:Ls/c;

    :cond_20
    :goto_20
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lh/o;->j:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lh/o;->a:Landroid/graphics/Path;

    return-object v0

    :cond_9
    iget-object v1, v0, Lh/o;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lh/o;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    iput-boolean v2, v0, Lh/o;->j:Z

    iget-object v0, v0, Lh/o;->a:Landroid/graphics/Path;

    return-object v0

    :cond_18
    iget-object v1, v0, Lh/o;->g:Li/a;

    invoke-virtual {v1}, Li/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    iget-object v5, v0, Lh/o;->h:Li/a;

    const/4 v6, 0x0

    if-nez v5, :cond_2f

    move v5, v6

    goto :goto_35

    :cond_2f
    check-cast v5, Li/c;

    invoke-virtual {v5}, Li/c;->i()F

    move-result v5

    :goto_35
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    cmpl-float v8, v5, v7

    if-lez v8, :cond_3e

    move v5, v7

    :cond_3e
    iget-object v7, v0, Lh/o;->f:Li/a;

    invoke-virtual {v7}, Li/a;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget-object v8, v0, Lh/o;->a:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v1

    add-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v0, Lh/o;->a:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v1

    sub-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v8, v5, v6

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000  # 90.0f

    if-lez v8, :cond_80

    iget-object v11, v0, Lh/o;->b:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    add-float v13, v12, v3

    mul-float v14, v5, v4

    sub-float/2addr v13, v14

    iget v15, v7, Landroid/graphics/PointF;->y:F

    add-float v16, v15, v1

    sub-float v14, v16, v14

    add-float/2addr v12, v3

    add-float/2addr v15, v1

    invoke-virtual {v11, v13, v14, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v11, v0, Lh/o;->a:Landroid/graphics/Path;

    iget-object v12, v0, Lh/o;->b:Landroid/graphics/RectF;

    invoke-virtual {v11, v12, v6, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_80
    iget-object v6, v0, Lh/o;->a:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    add-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_a8

    iget-object v6, v0, Lh/o;->b:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    add-float v14, v13, v1

    mul-float v15, v5, v4

    sub-float/2addr v14, v15

    sub-float/2addr v11, v3

    add-float/2addr v11, v15

    add-float/2addr v13, v1

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lh/o;->a:Landroid/graphics/Path;

    iget-object v11, v0, Lh/o;->b:Landroid/graphics/RectF;

    invoke-virtual {v6, v11, v10, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_a8
    iget-object v6, v0, Lh/o;->a:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    add-float/2addr v12, v5

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_d2

    iget-object v6, v0, Lh/o;->b:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    sub-float v14, v13, v1

    sub-float/2addr v11, v3

    mul-float v15, v5, v4

    add-float/2addr v11, v15

    sub-float/2addr v13, v1

    add-float/2addr v13, v15

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lh/o;->a:Landroid/graphics/Path;

    iget-object v11, v0, Lh/o;->b:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000  # 180.0f

    invoke-virtual {v6, v11, v12, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_d2
    iget-object v6, v0, Lh/o;->a:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    sub-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_fb

    iget-object v6, v0, Lh/o;->b:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    add-float v11, v8, v3

    mul-float/2addr v5, v4

    sub-float/2addr v11, v5

    iget v4, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v1

    add-float/2addr v8, v3

    sub-float/2addr v4, v1

    add-float/2addr v4, v5

    invoke-virtual {v6, v11, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lh/o;->a:Landroid/graphics/Path;

    iget-object v3, v0, Lh/o;->b:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000  # 270.0f

    invoke-virtual {v1, v3, v4, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_fb
    iget-object v1, v0, Lh/o;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lh/o;->i:Lh/b;

    iget-object v3, v0, Lh/o;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lh/b;->a(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Lh/o;->j:Z

    iget-object v0, v0, Lh/o;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/o;->j:Z

    iget-object p0, p0, Lh/o;->e:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/c;",
            ">;",
            "Ljava/util/List<",
            "Lh/c;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_29

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/c;

    instance-of v1, v0, Lh/s;

    if-eqz v1, :cond_26

    check-cast v0, Lh/s;

    iget v1, v0, Lh/s;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Lh/o;->i:Lh/b;

    iget-object v1, v1, Lh/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lh/s;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method
