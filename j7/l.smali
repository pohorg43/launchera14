.class public Lj7/l;
.super Lp4/c;
.source ""


# direct methods
.method public static final f(Ljava/util/Iterator;)Lj7/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lj7/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj7/l$a;

    invoke-direct {v0, p0}, Lj7/l$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lj7/l;->g(Lj7/h;)Lj7/h;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lj7/h;)Lj7/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj7/h<",
            "+TT;>;)",
            "Lj7/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lj7/a;

    if-eqz v0, :cond_a

    goto :goto_10

    :cond_a
    new-instance v0, Lj7/a;

    invoke-direct {v0, p0}, Lj7/a;-><init>(Lj7/h;)V

    move-object p0, v0

    :goto_10
    return-object p0
.end method

.method public static final h(Lj7/h;)Lj7/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj7/h<",
            "+",
            "Lj7/h<",
            "+TT;>;>;)",
            "Lj7/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lj7/l$b;->a:Lj7/l$b;

    instance-of v1, p0, Lj7/s;

    if-eqz v1, :cond_1c

    check-cast p0, Lj7/s;

    const-string v1, "iterator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lj7/f;

    iget-object v2, p0, Lj7/s;->a:Lj7/h;

    iget-object p0, p0, Lj7/s;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2, p0, v0}, Lj7/f;-><init>(Lj7/h;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_23

    :cond_1c
    new-instance v1, Lj7/f;

    sget-object v2, Lj7/m;->a:Lj7/m;

    invoke-direct {v1, p0, v2, v0}, Lj7/f;-><init>(Lj7/h;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :goto_23
    return-object v1
.end method

.method public static final i(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lj7/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)",
            "Lj7/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_a

    sget-object p0, Lj7/d;->a:Lj7/d;

    goto :goto_15

    :cond_a
    new-instance v0, Lj7/g;

    new-instance v1, Lj7/l$c;

    invoke-direct {v1, p0}, Lj7/l$c;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lj7/g;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    :goto_15
    return-object p0
.end method

.method public static final varargs j([Ljava/lang/Object;)Lj7/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lj7/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_10

    sget-object p0, Lj7/d;->a:Lj7/d;

    goto :goto_14

    :cond_10
    invoke-static {p0}, Li4/k;->n([Ljava/lang/Object;)Lj7/h;

    move-result-object p0

    :goto_14
    return-object p0
.end method
