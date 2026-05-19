.class public final Ly6/h1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/g1;Lj5/h;)Ly6/g1;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly6/p;->a(Ly6/g1;)Lj5/h;

    move-result-object v0

    if-ne v0, p1, :cond_11

    return-object p0

    :cond_11
    invoke-static {p0}, Ly6/p;->b(Ly6/g1;)Ly6/o;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "attribute"

    if-eqz v0, :cond_5f

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf7/a;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    :goto_23
    move-object v0, p0

    goto :goto_5b

    :cond_25
    iget-object v3, p0, Lf7/e;->a:Lf7/c;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ly6/e1;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v1

    if-eqz v6, :cond_30

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_48
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lf7/e;->a:Lf7/c;

    invoke-virtual {v3}, Lf7/c;->a()I

    move-result v3

    if-ne v0, v3, :cond_55

    goto :goto_23

    :cond_55
    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    invoke-virtual {v0, v4}, Ly6/g1$a;->c(Ljava/util/List;)Ly6/g1;

    move-result-object v0

    :goto_5b
    if-nez v0, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object p0, v0

    :cond_5f
    :goto_5f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-interface {p1}, Lj5/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    return-object p0

    :cond_70
    new-instance v0, Ly6/o;

    invoke-direct {v0, p1}, Ly6/o;-><init>(Lj5/h;)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ly6/g1;->b:Ly6/g1$a;

    invoke-virtual {v0}, Ly6/e1;->b()Lz4/d;

    move-result-object v2

    invoke-virtual {p1, v2}, Lf7/v;->b(Lz4/d;)I

    move-result v2

    iget-object v3, p0, Lf7/e;->a:Lf7/c;

    invoke-virtual {v3, v2}, Lf7/c;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v1, 0x0

    :goto_8f
    if-eqz v1, :cond_92

    goto :goto_ae

    :cond_92
    invoke-virtual {p0}, Lf7/a;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a2

    new-instance p0, Ly6/g1;

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ly6/g1;-><init>(Ljava/util/List;)V

    goto :goto_ae

    :cond_a2
    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Li4/v;->V(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ly6/g1$a;->c(Ljava/util/List;)Ly6/g1;

    move-result-object p0

    :goto_ae
    return-object p0
.end method

.method public static final b(Lj5/h;)Ly6/g1;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lj5/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly6/g1;->c:Ly6/g1;

    goto :goto_27

    :cond_18
    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    new-instance v1, Ly6/o;

    invoke-direct {v1, p0}, Ly6/o;-><init>(Lj5/h;)V

    invoke-static {v1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ly6/g1$a;->c(Ljava/util/List;)Ly6/g1;

    move-result-object p0

    :goto_27
    return-object p0
.end method
