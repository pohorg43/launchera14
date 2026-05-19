.class public final Ly6/z0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStarProjectionImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StarProjectionImpl.kt\norg/jetbrains/kotlin/types/StarProjectionImplKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1549#2:102\n1620#2,3:103\n1549#2:106\n1620#2,3:107\n*S KotlinDebug\n*F\n+ 1 StarProjectionImpl.kt\norg/jetbrains/kotlin/types/StarProjectionImplKt\n*L\n66#1:102\n66#1:103,3\n73#1:106\n73#1:107,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/List;Ljava/util/List;Lf5/g;)Ly6/l0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly6/j1;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ly6/l0;",
            ">;",
            "Lf5/g;",
            ")",
            "Ly6/l0;"
        }
    .end annotation

    new-instance v0, Ly6/z0$a;

    invoke-direct {v0, p0}, Ly6/z0$a;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Ly6/x1;->e(Ly6/t1;)Ly6/x1;

    move-result-object p0

    invoke-static {p1}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/l0;

    sget-object v0, Ly6/e2;->e:Ly6/e2;

    invoke-virtual {p0, p1, v0}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p0

    if-nez p0, :cond_1b

    invoke-virtual {p2}, Lf5/g;->n()Ly6/s0;

    move-result-object p0

    :cond_1b
    const-string p1, "typeParameters: List<Typ… ?: builtIns.defaultBound"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Li5/a1;)Ly6/l0;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object v0

    const-string v1, "this.containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Li5/i;

    const-string v2, "it.typeConstructor"

    const-string v3, "upperBounds"

    const/16 v4, 0xa

    if-eqz v1, :cond_5b

    check-cast v0, Li5/i;

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor.parameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/a1;

    invoke-interface {v4}, Li5/a1;->h()Ly6/j1;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_4b
    invoke-interface {p0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    invoke-static {v1, v0, p0}, Ly6/z0;->a(Ljava/util/List;Ljava/util/List;Lf5/g;)Ly6/l0;

    move-result-object p0

    goto :goto_9d

    :cond_5b
    instance-of v1, v0, Li5/x;

    if-eqz v1, :cond_9e

    check-cast v0, Li5/x;

    invoke-interface {v0}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/a1;

    invoke-interface {v4}, Li5/a1;->h()Ly6/j1;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_8e
    invoke-interface {p0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    invoke-static {v1, v0, p0}, Ly6/z0;->a(Ljava/util/List;Ljava/util/List;Lf5/g;)Ly6/l0;

    move-result-object p0

    :goto_9d
    return-object p0

    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported descriptor type to build star projection type based on type parameters of it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
