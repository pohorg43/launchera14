.class public Lh/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lh/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lh/b;->a:I

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .registers 7

    iget-object v0, p0, Lh/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_44

    iget-object v1, p0, Lh/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/s;

    sget-object v2, Lr/h;->a:Landroid/graphics/PathMeasure;

    if-eqz v1, :cond_41

    iget-boolean v2, v1, Lh/s;->a:Z

    if-eqz v2, :cond_1f

    goto :goto_41

    :cond_1f
    iget-object v2, v1, Lh/s;->d:Li/a;

    check-cast v2, Li/c;

    invoke-virtual {v2}, Li/c;->i()F

    move-result v2

    iget-object v3, v1, Lh/s;->e:Li/a;

    check-cast v3, Li/c;

    invoke-virtual {v3}, Li/c;->i()F

    move-result v3

    iget-object v1, v1, Lh/s;->f:Li/a;

    check-cast v1, Li/c;

    invoke-virtual {v1}, Li/c;->i()F

    move-result v1

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000  # 360.0f

    div-float/2addr v1, v4

    invoke-static {p1, v2, v3, v1}, Lr/h;->a(Landroid/graphics/Path;FFF)V

    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lh/b;->a:I

    packed-switch v0, :pswitch_data_10

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a  #0x1
    iget-object p0, p0, Lh/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a  #00000001
    .end packed-switch
.end method
