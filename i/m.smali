.class public Li/m;
.super Li/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/a;Li/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Li/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Li/a;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Li/m;->i:Landroid/graphics/PointF;

    iput-object p1, p0, Li/m;->j:Li/a;

    iput-object p2, p0, Li/m;->k:Li/a;

    iget p1, p0, Li/a;->d:F

    invoke-virtual {p0, p1}, Li/m;->h(F)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Li/m;->i:Landroid/graphics/PointF;

    return-object p0
.end method

.method public f(Ls/a;F)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Li/m;->i:Landroid/graphics/PointF;

    return-object p0
.end method

.method public h(F)V
    .registers 4

    iget-object v0, p0, Li/m;->j:Li/a;

    invoke-virtual {v0, p1}, Li/a;->h(F)V

    iget-object v0, p0, Li/m;->k:Li/a;

    invoke-virtual {v0, p1}, Li/a;->h(F)V

    iget-object p1, p0, Li/m;->i:Landroid/graphics/PointF;

    iget-object v0, p0, Li/m;->j:Li/a;

    invoke-virtual {v0}, Li/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Li/m;->k:Li/a;

    invoke-virtual {v1}, Li/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_28
    iget-object v0, p0, Li/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3e

    iget-object v0, p0, Li/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a$b;

    invoke-interface {v0}, Li/a$b;->onValueChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_3e
    return-void
.end method
