.class public Li4/t;
.super Li4/s;
.source ""


# direct methods
.method public static final o(Ljava/util/List;I)I
    .registers 6

    new-instance v0, Ly4/d;

    invoke-static {p0}, Li4/o;->e(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ly4/d;-><init>(II)V

    invoke-virtual {v0, p1}, Ly4/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Li4/o;->e(Ljava/util/List;)I

    move-result p0

    sub-int/2addr p0, p1

    return p0

    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Element index "

    const-string v3, " must be in range ["

    invoke-static {v1, p1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v1, Ly4/d;

    invoke-static {p0}, Li4/o;->e(Ljava/util/List;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Ly4/d;-><init>(II)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final p(Ljava/util/List;I)I
    .registers 6

    new-instance v0, Ly4/d;

    check-cast p0, Li4/d;

    invoke-virtual {p0}, Li4/d;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ly4/d;-><init>(II)V

    invoke-virtual {v0, p1}, Ly4/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Li4/d;->a()I

    move-result p0

    sub-int/2addr p0, p1

    return p0

    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Position index "

    const-string v3, " must be in range ["

    invoke-static {v1, p1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v1, Ly4/d;

    invoke-virtual {p0}, Li4/d;->a()I

    move-result p0

    invoke-direct {v1, v2, p0}, Ly4/d;-><init>(II)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final q(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_15

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_15
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :cond_2c
    return v0
.end method

.method public static final r(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;[TT;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li4/j;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static final s(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_c

    check-cast p0, Ljava/util/Collection;

    goto :goto_10

    :cond_c
    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static final t(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/RandomAccess;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p2, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    move v2, v1

    goto :goto_13

    :cond_2e
    return v2

    :cond_2f
    new-instance v0, Ly4/d;

    invoke-static {p0}, Li4/o;->e(Ljava/util/List;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Ly4/d;-><init>(II)V

    invoke-virtual {v0}, Ly4/b;->a()Li4/f0;

    move-result-object v0

    move v3, v2

    :goto_3d
    move-object v4, v0

    check-cast v4, Ly4/c;

    iget-boolean v4, v4, Ly4/c;->c:Z

    if-eqz v4, :cond_61

    invoke-virtual {v0}, Li4/f0;->nextInt()I

    move-result v4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, p2, :cond_59

    goto :goto_3d

    :cond_59
    if-eq v3, v4, :cond_5e

    invoke-interface {p0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_61
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_76

    invoke-static {p0}, Li4/o;->e(Ljava/util/List;)I

    move-result p1

    if-gt v3, p1, :cond_75

    :goto_6d
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eq p1, v3, :cond_75

    add-int/lit8 p1, p1, -0x1

    goto :goto_6d

    :cond_75
    return v1

    :cond_76
    return v2
.end method

.method public static final u(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Li4/t;->t(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z

    move-result p0

    return p0
.end method

.method public static final v(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    goto :goto_12

    :cond_d
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    return-object p0
.end method
