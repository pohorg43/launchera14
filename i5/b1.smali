.class public final Li5/b1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ntypeParameterUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 typeParameterUtils.kt\norg/jetbrains/kotlin/descriptors/TypeParameterUtilsKt\n+ 2 addToStdlib.kt\norg/jetbrains/kotlin/utils/addToStdlib/AddToStdlibKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n15#2,2:101\n1549#3:103\n1620#3,3:104\n*S KotlinDebug\n*F\n+ 1 typeParameterUtils.kt\norg/jetbrains/kotlin/descriptors/TypeParameterUtilsKt\n*L\n37#1:101,2\n42#1:103\n42#1:104,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/l0;Li5/i;I)Li/g;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    invoke-static {p1}, La7/j;->f(Li5/l;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_59

    :cond_a
    invoke-interface {p1}, Li5/i;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {p1}, Li5/i;->isInner()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_26

    invoke-static {p1}, Lk6/i;->t(Li5/l;)Z

    :cond_26
    new-instance v1, Li/g;

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Li/g;-><init>(Li5/i;Ljava/util/List;Li/g;)V

    return-object v1

    :cond_3c
    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-instance v2, Li/g;

    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object v3

    instance-of v4, v3, Li5/i;

    if-eqz v4, :cond_51

    move-object v0, v3

    check-cast v0, Li5/i;

    :cond_51
    invoke-static {p0, v0, v1}, Li5/b1;->a(Ly6/l0;Li5/i;I)Li/g;

    move-result-object p0

    invoke-direct {v2, p1, p2, p0}, Li/g;-><init>(Li5/i;Ljava/util/List;Li/g;)V

    return-object v2

    :cond_59
    :goto_59
    return-object v0
.end method

.method public static final b(Li5/i;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/i;",
            ")",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/i;->n()Ljava/util/List;

    move-result-object v1

    const-string v2, "declaredTypeParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/i;->isInner()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object v3

    instance-of v3, v3, Li5/a;

    if-nez v3, :cond_1d

    return-object v1

    :cond_1d
    invoke-static {p0}, Lo6/c;->l(Li5/l;)Lj7/h;

    move-result-object v3

    sget-object v4, Li5/b1$a;->a:Li5/b1$a;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj7/r;

    invoke-direct {v0, v3, v4}, Lj7/r;-><init>(Lj7/h;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Li5/b1$b;->a:Li5/b1$b;

    invoke-static {v0, v3}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object v0

    sget-object v3, Li5/b1$c;->a:Li5/b1$c;

    invoke-static {v0, v3}, Lj7/p;->o(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object v0

    invoke-static {v0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lo6/c;->l(Li5/l;)Lj7/h;

    move-result-object v3

    invoke-interface {v3}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Li5/e;

    if-eqz v6, :cond_48

    goto :goto_59

    :cond_58
    move-object v4, v5

    :goto_59
    check-cast v4, Li5/e;

    if-eqz v4, :cond_67

    invoke-interface {v4}, Li5/h;->h()Ly6/j1;

    move-result-object v3

    if-eqz v3, :cond_67

    invoke-interface {v3}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v5

    :cond_67
    if-nez v5, :cond_6b

    sget-object v5, Li4/y;->a:Li4/y;

    :cond_6b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {p0}, Li5/i;->n()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7f
    invoke-static {v0, v5}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/a1;

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Li5/c;

    invoke-direct {v5, v3, p0, v4}, Li5/c;-><init>(Li5/a1;Li5/l;I)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_92

    :cond_b0
    invoke-static {v1, v2}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
