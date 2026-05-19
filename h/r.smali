.class public Lh/r;
.super Lh/a;
.source ""


# instance fields
.field public final o:Ln/b;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public s:Li/a;
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


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Ln/b;Lm/n;)V
    .registers 15

    iget v0, p3, Lm/n;->g:I

    invoke-static {v0}, Lk/b;->j(I)Landroid/graphics/Paint$Cap;

    move-result-object v4

    iget v0, p3, Lm/n;->h:I

    invoke-static {v0}, Lk/b;->k(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    iget v6, p3, Lm/n;->i:F

    iget-object v7, p3, Lm/n;->e:Ll/d;

    iget-object v8, p3, Lm/n;->f:Ll/b;

    iget-object v9, p3, Lm/n;->c:Ljava/util/List;

    iget-object v10, p3, Lm/n;->b:Ll/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lh/a;-><init>(Lcom/airbnb/lottie/j;Ln/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLl/d;Ll/b;Ljava/util/List;Ll/b;)V

    iput-object p2, p0, Lh/r;->o:Ln/b;

    iget-object p1, p3, Lm/n;->a:Ljava/lang/String;

    iput-object p1, p0, Lh/r;->p:Ljava/lang/String;

    iget-boolean p1, p3, Lm/n;->j:Z

    iput-boolean p1, p0, Lh/r;->q:Z

    iget-object p1, p3, Lm/n;->d:Ll/a;

    invoke-virtual {p1}, Ll/a;->createAnimation()Li/a;

    move-result-object p1

    iput-object p1, p0, Lh/r;->r:Li/a;

    iget-object p3, p1, Li/a;->a:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ln/b;->c(Li/a;)V

    return-void
.end method


# virtual methods
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

    invoke-super {p0, p1, p2}, Lh/a;->b(Ljava/lang/Object;Ls/c;)V

    sget-object v0, Lcom/airbnb/lottie/o;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_e

    iget-object p0, p0, Lh/r;->r:Li/a;

    iget-object p1, p0, Li/a;->e:Ls/c;

    iput-object p2, p0, Li/a;->e:Ls/c;

    goto :goto_2b

    :cond_e
    sget-object v0, Lcom/airbnb/lottie/o;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2b

    const/4 p1, 0x0

    if-nez p2, :cond_18

    iput-object p1, p0, Lh/r;->s:Li/a;

    goto :goto_2b

    :cond_18
    new-instance v0, Li/p;

    invoke-direct {v0, p2, p1}, Li/p;-><init>(Ls/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lh/r;->s:Li/a;

    iget-object p1, v0, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lh/r;->o:Ln/b;

    iget-object p0, p0, Lh/r;->r:Li/a;

    invoke-virtual {p1, p0}, Ln/b;->c(Li/a;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    iget-boolean v0, p0, Lh/r;->q:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lh/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lh/r;->r:Li/a;

    check-cast v1, Li/b;

    invoke-virtual {v1}, Li/a;->a()Ls/a;

    move-result-object v2

    invoke-virtual {v1}, Li/a;->c()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Li/b;->i(Ls/a;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lh/r;->s:Li/a;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lh/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Li/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_29
    invoke-super {p0, p1, p2, p3}, Lh/a;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh/r;->p:Ljava/lang/String;

    return-object p0
.end method
