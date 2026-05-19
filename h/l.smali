.class public Lh/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/m;
.implements Lh/j;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Path;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/m;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lm/g;


# direct methods
.method public constructor <init>(Lm/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lh/l;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lh/l;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lh/l;->c:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/l;->d:Ljava/util/List;

    iput-object p1, p0, Lh/l;->e:Lm/g;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Path$Op;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lh/l;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lh/l;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lh/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_12
    if-lt v0, v1, :cond_5e

    iget-object v2, p0, Lh/l;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/m;

    instance-of v3, v2, Lh/d;

    if-eqz v3, :cond_52

    check-cast v2, Lh/d;

    invoke-virtual {v2}, Lh/d;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_2b
    if-ltz v4, :cond_5b

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh/m;

    invoke-interface {v5}, Lh/m;->getPath()Landroid/graphics/Path;

    move-result-object v5

    iget-object v6, v2, Lh/d;->k:Li/o;

    if-eqz v6, :cond_40

    invoke-virtual {v6}, Li/o;->e()Landroid/graphics/Matrix;

    move-result-object v6

    goto :goto_47

    :cond_40
    iget-object v6, v2, Lh/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v2, Lh/d;->c:Landroid/graphics/Matrix;

    :goto_47
    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Lh/l;->b:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    :cond_52
    iget-object v3, p0, Lh/l;->b:Landroid/graphics/Path;

    invoke-interface {v2}, Lh/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_5e
    iget-object v0, p0, Lh/l;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/m;

    instance-of v2, v0, Lh/d;

    if-eqz v2, :cond_9c

    check-cast v0, Lh/d;

    invoke-virtual {v0}, Lh/d;->c()Ljava/util/List;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh/m;

    invoke-interface {v3}, Lh/m;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, v0, Lh/d;->k:Li/o;

    if-eqz v4, :cond_8a

    invoke-virtual {v4}, Li/o;->e()Landroid/graphics/Matrix;

    move-result-object v4

    goto :goto_91

    :cond_8a
    iget-object v4, v0, Lh/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, v0, Lh/d;->c:Landroid/graphics/Matrix;

    :goto_91
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lh/l;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_9c
    iget-object v1, p0, Lh/l;->a:Landroid/graphics/Path;

    invoke-interface {v0}, Lh/m;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_a5
    iget-object v0, p0, Lh/l;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lh/l;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lh/l;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public absorbContent(Ljava/util/ListIterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lh/c;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_d

    goto :goto_0

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/c;

    instance-of v1, v0, Lh/m;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lh/l;->d:Ljava/util/List;

    check-cast v0, Lh/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_d

    :cond_28
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 4

    iget-object v0, p0, Lh/l;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lh/l;->e:Lm/g;

    iget-boolean v1, v0, Lm/g;->c:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lh/l;->c:Landroid/graphics/Path;

    return-object p0

    :cond_e
    iget-object v0, v0, Lm/g;->b:Lm/g$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    goto :goto_58

    :cond_23
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-virtual {p0, v0}, Lh/l;->a(Landroid/graphics/Path$Op;)V

    goto :goto_58

    :cond_29
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p0, v0}, Lh/l;->a(Landroid/graphics/Path$Op;)V

    goto :goto_58

    :cond_2f
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p0, v0}, Lh/l;->a(Landroid/graphics/Path$Op;)V

    goto :goto_58

    :cond_35
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p0, v0}, Lh/l;->a(Landroid/graphics/Path$Op;)V

    goto :goto_58

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    iget-object v1, p0, Lh/l;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    iget-object v1, p0, Lh/l;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lh/l;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/m;

    invoke-interface {v2}, Lh/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_58
    :goto_58
    iget-object p0, p0, Lh/l;->c:Landroid/graphics/Path;

    return-object p0
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

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lh/l;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lh/l;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/m;

    invoke-interface {v1, p1, p2}, Lh/c;->setContents(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method
