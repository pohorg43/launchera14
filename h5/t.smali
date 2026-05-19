.class public final Lh5/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nmappingUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 mappingUtil.kt\norg/jetbrains/kotlin/builtins/jvm/MappingUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,24:1\n1549#2:25\n1620#2,3:26\n1549#2:29\n1620#2,3:30\n*S KotlinDebug\n*F\n+ 1 mappingUtil.kt\norg/jetbrains/kotlin/builtins/jvm/MappingUtilKt\n*L\n20#1:25\n20#1:26,3\n21#1:29\n21#1:30,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Li5/e;Li5/e;)Ly6/l1;
    .registers 5

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/e;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p1}, Li5/e;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p0}, Li5/e;->n()Ljava/util/List;

    move-result-object p0

    const-string v0, "from.declaredTypeParameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/a1;

    invoke-interface {v2}, Li5/a1;->h()Ly6/j1;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_44
    invoke-interface {p1}, Li5/e;->n()Ljava/util/List;

    move-result-object p0

    const-string p1, "to.declaredTypeParameters"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/a1;

    invoke-interface {v1}, Li5/h;->m()Ly6/s0;

    move-result-object v1

    const-string v2, "it.defaultType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld7/c;->a(Ly6/l0;)Ly6/q1;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_77
    invoke-static {v0, p1}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "map"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ly6/k1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ly6/k1;-><init>(Ljava/util/Map;Z)V

    return-object p1
.end method
