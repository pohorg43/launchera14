.class public Lh/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/m;
.implements Li/a$b;
.implements Lh/k;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/airbnb/lottie/j;

.field public final d:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lm/a;

.field public g:Lh/b;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Ln/b;Lm/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lh/f;->a:Landroid/graphics/Path;

    new-instance v0, Lh/b;

    invoke-direct {v0}, Lh/b;-><init>()V

    iput-object v0, p0, Lh/f;->g:Lh/b;

    iget-object v0, p3, Lm/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lh/f;->b:Ljava/lang/String;

    iput-object p1, p0, Lh/f;->c:Lcom/airbnb/lottie/j;

    iget-object p1, p3, Lm/a;->c:Ll/f;

    invoke-virtual {p1}, Ll/f;->createAnimation()Li/a;

    move-result-object p1

    iput-object p1, p0, Lh/f;->d:Li/a;

    iget-object v0, p3, Lm/a;->b:Ll/m;

    invoke-interface {v0}, Ll/m;->createAnimation()Li/a;

    move-result-object v0

    iput-object v0, p0, Lh/f;->e:Li/a;

    iput-object p3, p0, Lh/f;->f:Lm/a;

    invoke-virtual {p2, p1}, Ln/b;->c(Li/a;)V

    invoke-virtual {p2, v0}, Ln/b;->c(Li/a;)V

    iget-object p1, p1, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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

    sget-object v0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lh/f;->d:Li/a;

    iget-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/a;->e:Ls/c;

    goto :goto_15

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/o;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_15

    iget-object p0, p0, Lh/f;->e:Li/a;

    iget-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/a;->e:Ls/c;

    :cond_15
    :goto_15
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lh/f;->h:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lh/f;->a:Landroid/graphics/Path;

    return-object v0

    :cond_9
    iget-object v1, v0, Lh/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lh/f;->f:Lm/a;

    iget-boolean v1, v1, Lm/a;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    iput-boolean v2, v0, Lh/f;->h:Z

    iget-object v0, v0, Lh/f;->a:Landroid/graphics/Path;

    return-object v0

    :cond_1a
    iget-object v1, v0, Lh/f;->d:Li/a;

    invoke-virtual {v1}, Li/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239  # 0.55228f

    mul-float v12, v3, v4

    mul-float/2addr v4, v1

    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lh/f;->f:Lm/a;

    iget-boolean v5, v5, Lm/a;->d:Z

    const/4 v13, 0x0

    if-eqz v5, :cond_7b

    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v14, v0, Lh/f;->a:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_b9

    :cond_7b
    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lh/f;->a:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v14, v0, Lh/f;->a:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_b9
    iget-object v1, v0, Lh/f;->e:Li/a;

    invoke-virtual {v1}, Li/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v3, v0, Lh/f;->a:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lh/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lh/f;->g:Lh/b;

    iget-object v3, v0, Lh/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lh/b;->a(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Lh/f;->h:Z

    iget-object v0, v0, Lh/f;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/f;->h:Z

    iget-object p0, p0, Lh/f;->c:Lcom/airbnb/lottie/j;

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

    iget-object v1, p0, Lh/f;->g:Lh/b;

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
