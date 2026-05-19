.class public final Ly6/v1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ly6/l0;)Ly6/s0;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v0

    instance-of v1, v0, Ly6/s0;

    if-eqz v1, :cond_10

    check-cast v0, Ly6/s0;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is should be simple type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Ly6/s0;Ljava/util/List;Ly6/g1;)Ly6/s0;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/s0;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;",
            "Ly6/g1;",
            ")",
            "Ly6/s0;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "newArguments"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newAttributes"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v3

    if-ne p2, v3, :cond_1c

    return-object p0

    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p0, p2}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object v0

    return-object v0

    :cond_27
    instance-of v3, p0, La7/g;

    if-eqz v3, :cond_4e

    move-object v0, p0

    check-cast v0, La7/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, La7/g;

    iget-object v1, v0, La7/g;->b:Ly6/j1;

    iget-object v2, v0, La7/g;->c:Lr6/i;

    iget-object v3, v0, La7/g;->d:La7/i;

    iget-boolean v5, v0, La7/g;->f:Z

    iget-object v0, v0, La7/g;->g:[Ljava/lang/String;

    array-length v6, v0

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, La7/g;-><init>(Ly6/j1;Lr6/i;La7/i;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v7

    :cond_4e
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v2

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p2

    move-object v1, v2

    move-object v2, p1

    move-object v4, v5

    move v5, v6

    invoke-static/range {v0 .. v5}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ly6/l0;Ljava/util/List;Lj5/h;Ljava/util/List;I)Ly6/l0;
    .registers 6

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p1

    :cond_8
    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_10

    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object p2

    :cond_10
    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_16

    move-object p3, p1

    goto :goto_17

    :cond_16
    const/4 p3, 0x0

    :goto_17
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "newArguments"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "newAnnotations"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "newArgumentsForUpperBound"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_37

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p4

    if-ne p1, p4, :cond_3e

    :cond_37
    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object p4

    if-ne p2, p4, :cond_3e

    goto :goto_79

    :cond_3e
    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p4

    instance-of v0, p2, Lj5/l;

    if-eqz v0, :cond_50

    invoke-interface {p2}, Lj5/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    sget p2, Lj5/h;->I:I

    sget-object p2, Lj5/h$a;->b:Lj5/h;

    :cond_50
    invoke-static {p4, p2}, Ly6/h1;->a(Ly6/g1;Lj5/h;)Ly6/g1;

    move-result-object p2

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    instance-of p4, p0, Ly6/e0;

    if-eqz p4, :cond_6f

    check-cast p0, Ly6/e0;

    iget-object p4, p0, Ly6/e0;->b:Ly6/s0;

    invoke-static {p4, p1, p2}, Ly6/v1;->b(Ly6/s0;Ljava/util/List;Ly6/g1;)Ly6/s0;

    move-result-object p1

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-static {p0, p3, p2}, Ly6/v1;->b(Ly6/s0;Ljava/util/List;Ly6/g1;)Ly6/s0;

    move-result-object p0

    invoke-static {p1, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    goto :goto_79

    :cond_6f
    instance-of p3, p0, Ly6/s0;

    if-eqz p3, :cond_7a

    check-cast p0, Ly6/s0;

    invoke-static {p0, p1, p2}, Ly6/v1;->b(Ly6/s0;Ljava/util/List;Ly6/g1;)Ly6/s0;

    move-result-object p0

    :goto_79
    return-object p0

    :cond_7a
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method

.method public static synthetic d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;
    .registers 5

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p1

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_10

    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p2

    :cond_10
    invoke-static {p0, p1, p2}, Ly6/v1;->b(Ly6/s0;Ljava/util/List;Ly6/g1;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method
