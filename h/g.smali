.class public Lh/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/e;
.implements Li/a$b;
.implements Lh/k;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Paint;

.field public final c:Ln/b;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/m;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Li/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/airbnb/lottie/j;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Ln/b;Lm/k;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lh/g;->a:Landroid/graphics/Path;

    new-instance v1, Lg/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/a;-><init>(I)V

    iput-object v1, p0, Lh/g;->b:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lh/g;->f:Ljava/util/List;

    iput-object p2, p0, Lh/g;->c:Ln/b;

    iget-object v1, p3, Lm/k;->c:Ljava/lang/String;

    iput-object v1, p0, Lh/g;->d:Ljava/lang/String;

    iget-boolean v1, p3, Lm/k;->f:Z

    iput-boolean v1, p0, Lh/g;->e:Z

    iput-object p1, p0, Lh/g;->j:Lcom/airbnb/lottie/j;

    iget-object p1, p3, Lm/k;->d:Ll/a;

    if-eqz p1, :cond_54

    iget-object p1, p3, Lm/k;->e:Ll/d;

    if-nez p1, :cond_2e

    goto :goto_54

    :cond_2e
    iget-object p1, p3, Lm/k;->b:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p1, p3, Lm/k;->d:Ll/a;

    invoke-virtual {p1}, Ll/a;->createAnimation()Li/a;

    move-result-object p1

    iput-object p1, p0, Lh/g;->g:Li/a;

    iget-object v0, p1, Li/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ln/b;->c(Li/a;)V

    iget-object p1, p3, Lm/k;->e:Ll/d;

    invoke-virtual {p1}, Ll/d;->createAnimation()Li/a;

    move-result-object p1

    iput-object p1, p0, Lh/g;->h:Li/a;

    iget-object p3, p1, Li/a;->a:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ln/b;->c(Li/a;)V

    return-void

    :cond_54
    :goto_54
    const/4 p1, 0x0

    iput-object p1, p0, Lh/g;->g:Li/a;

    iput-object p1, p0, Lh/g;->h:Li/a;

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

    sget-object v0, Lcom/airbnb/lottie/o;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lh/g;->g:Li/a;

    iget-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/a;->e:Ls/c;

    goto :goto_33

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/o;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lh/g;->h:Li/a;

    iget-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/a;->e:Ls/c;

    goto :goto_33

    :cond_16
    sget-object v0, Lcom/airbnb/lottie/o;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_33

    const/4 p1, 0x0

    if-nez p2, :cond_20

    iput-object p1, p0, Lh/g;->i:Li/a;

    goto :goto_33

    :cond_20
    new-instance v0, Li/p;

    invoke-direct {v0, p2, p1}, Li/p;-><init>(Ls/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lh/g;->i:Li/a;

    iget-object p1, v0, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lh/g;->c:Ln/b;

    iget-object p0, p0, Lh/g;->i:Li/a;

    invoke-virtual {p1, p0}, Ln/b;->c(Li/a;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    iget-boolean v0, p0, Lh/g;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lh/g;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lh/g;->g:Li/a;

    check-cast v1, Li/b;

    invoke-virtual {v1}, Li/a;->a()Ls/a;

    move-result-object v2

    invoke-virtual {v1}, Li/a;->c()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Li/b;->i(Ls/a;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p3, v0

    iget-object v1, p0, Lh/g;->h:Li/a;

    invoke-virtual {v1}, Li/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p3, v1

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr p3, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget-object v0, p0, Lh/g;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {p3, v2, v1}, Lr/g;->c(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lh/g;->i:Li/a;

    if-eqz p3, :cond_4c

    iget-object v0, p0, Lh/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Li/a;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_4c
    iget-object p3, p0, Lh/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_51
    iget-object p3, p0, Lh/g;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_6d

    iget-object p3, p0, Lh/g;->a:Landroid/graphics/Path;

    iget-object v0, p0, Lh/g;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/m;

    invoke-interface {v0}, Lh/m;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_6d
    iget-object p2, p0, Lh/g;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lh/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string p0, "FillContent#draw"

    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    iget-object p3, p0, Lh/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_7
    iget-object v1, p0, Lh/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lh/g;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lh/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/m;

    invoke-interface {v2}, Lh/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    iget-object p0, p0, Lh/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lh/g;->j:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 5
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

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1b

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/c;

    instance-of v1, v0, Lh/m;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lh/g;->f:Ljava/util/List;

    check-cast v0, Lh/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method
