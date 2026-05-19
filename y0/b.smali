.class public Ly0/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lj4/i;

    iget-object v0, p0, Lj4/i;->a:Lj4/c;

    invoke-virtual {v0}, Lj4/c;->d()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj4/c;->l:Z

    iget v0, v0, Lj4/c;->h:I

    if-lez v0, :cond_14

    goto :goto_1c

    :cond_14
    sget-object v0, Lj4/c;->n:Lj4/c;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1c
    iget-object v0, p0, Lj4/i;->a:Lj4/c;

    iget v0, v0, Lj4/c;->h:I

    if-lez v0, :cond_23

    goto :goto_25

    :cond_23
    sget-object p0, Lj4/i;->b:Lj4/i;

    :goto_25
    return-object p0
.end method

.method public static final b(Lkotlinx/serialization/json/JsonPrimitive;)I
    .registers 2

    const-string v0, "$this$int"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final c(Ly6/l0;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    instance-of v0, p0, La7/g;

    if-nez v0, :cond_1e

    instance-of v0, p0, Ly6/e0;

    if-eqz v0, :cond_1c

    check-cast p0, Ly6/e0;

    invoke-virtual {p0}, Ly6/e0;->M0()Ly6/s0;

    move-result-object p0

    instance-of p0, p0, La7/g;

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :goto_1f
    return p0
.end method

.method public static d(Landroid/net/Uri;)Z
    .registers 3

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public static e(II)Z
    .registers 3

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_10

    if-eq p1, v0, :cond_10

    const/16 v0, 0x200

    if-gt p0, v0, :cond_10

    const/16 p0, 0x180

    if-gt p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static final varargs f([Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v1, p0

    invoke-static {v1}, Li4/j0;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {p0, v0}, Li4/k;->M([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string/jumbo v0, "singleton(element)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs h([Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-lez v0, :cond_d

    invoke-static {p0}, Li4/k;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_f

    :cond_d
    sget-object p0, Li4/a0;->a:Li4/a0;

    :goto_f
    return-object p0
.end method
