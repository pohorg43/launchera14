.class public final Li5/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/a1;


# instance fields
.field public final a:Li5/a1;

.field public final b:Li5/l;

.field public final c:I


# direct methods
.method public constructor <init>(Li5/a1;Li5/l;I)V
    .registers 5

    const-string v0, "originalDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declarationDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/c;->a:Li5/a1;

    iput-object p2, p0, Li5/c;->b:Li5/l;

    iput p3, p0, Li5/c;->c:I

    return-void
.end method


# virtual methods
.method public F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/n<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0, p1, p2}, Li5/l;->F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public J()Lx6/m;
    .registers 1

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/a1;->J()Lx6/m;

    move-result-object p0

    return-object p0
.end method

.method public N()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public a()Li5/a1;
    .registers 2

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/a1;->a()Li5/a1;

    move-result-object p0

    const-string v0, "originalDescriptor.original"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic a()Li5/h;
    .registers 1

    invoke-virtual {p0}, Li5/c;->a()Li5/a1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Li5/c;->a()Li5/a1;

    move-result-object p0

    return-object p0
.end method

.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, Li5/c;->b:Li5/l;

    return-object p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Li5/c;->c:I

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/a1;->getIndex()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getName()Lh6/f;
    .registers 1

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/o;->getSource()Li5/v0;

    move-result-object p0

    return-object p0
.end method

.method public getUpperBounds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVariance()Ly6/e2;
    .registers 1

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object p0

    return-object p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/a1;->h()Ly6/j1;

    move-result-object p0

    return-object p0
.end method

.method public m()Ly6/s0;
    .registers 1

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/h;->m()Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "[inner-copy]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .registers 1

    iget-object p0, p0, Li5/c;->a:Li5/a1;

    invoke-interface {p0}, Li5/a1;->u()Z

    move-result p0

    return p0
.end method
