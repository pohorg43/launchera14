.class public Ln/g;
.super Ln/b;
.source ""


# instance fields
.field public final w:Lh/d;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Ln/e;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Ln/b;-><init>(Lcom/airbnb/lottie/j;Ln/e;)V

    new-instance v0, Lm/l;

    iget-object p2, p2, Ln/e;->a:Ljava/util/List;

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lm/l;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lh/d;

    invoke-direct {p2, p1, p0, v0}, Lh/d;-><init>(Lcom/airbnb/lottie/j;Ln/b;Lm/l;)V

    iput-object p2, p0, Ln/g;->w:Lh/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lh/d;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 4
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Ln/g;->w:Lh/d;

    invoke-virtual {p0, p1, p2, p3}, Lh/d;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Ln/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ln/g;->w:Lh/d;

    iget-object p0, p0, Ln/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lh/d;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public j(Lk/f;ILjava/util/List;Lk/f;)V
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

    iget-object p0, p0, Ln/g;->w:Lh/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lh/d;->a(Lk/f;ILjava/util/List;Lk/f;)V

    return-void
.end method
