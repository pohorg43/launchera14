.class public Ll/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll/m;
.implements Li7/b$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/m<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls/a<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh5/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/e;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 6

    iget-object p0, p0, Ll/e;->a:Ljava/lang/Object;

    check-cast p0, Lh5/l;

    check-cast p1, Li5/e;

    sget-object v0, Lh5/l;->h:[Lz4/n;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object p1

    invoke-interface {p1}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "it.typeConstructor.supertypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/l0;

    invoke-virtual {v1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    invoke-interface {v1}, Ly6/j1;->e()Li5/h;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    invoke-interface {v1}, Li5/h;->a()Li5/h;

    move-result-object v1

    goto :goto_41

    :cond_40
    move-object v1, v2

    :goto_41
    instance-of v3, v1, Li5/e;

    if-eqz v3, :cond_48

    check-cast v1, Li5/e;

    goto :goto_49

    :cond_48
    move-object v1, v2

    :goto_49
    if-eqz v1, :cond_4f

    invoke-virtual {p0, v1}, Lh5/l;->f(Li5/e;)Lv5/f;

    move-result-object v2

    :cond_4f
    if-eqz v2, :cond_24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_55
    return-object v0
.end method

.method public createAnimation()Li/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    invoke-virtual {v0}, Ls/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Li/j;

    iget-object p0, p0, Ll/e;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Li/j;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1b
    new-instance v0, Li/i;

    iget-object p0, p0, Ll/e;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Li/i;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls/a<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ll/e;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isStatic()Z
    .registers 4

    iget-object v0, p0, Ll/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    iget-object p0, p0, Ll/e;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls/a;

    invoke-virtual {p0}, Ls/a;->d()Z

    move-result p0

    if-eqz p0, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method
