.class public final Lz6/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIntersectionType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntersectionType.kt\norg/jetbrains/kotlin/types/checker/IntersectionTypeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,183:1\n1549#2:184\n1620#2,3:185\n1549#2:188\n1620#2,3:189\n1549#2:192\n1620#2,3:193\n*S KotlinDebug\n*F\n+ 1 IntersectionType.kt\norg/jetbrains/kotlin/types/checker/IntersectionTypeKt\n*L\n26#1:184\n26#1:185,3\n38#1:188\n38#1:189,3\n58#1:192\n58#1:193,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/List;)Ly6/d2;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly6/d2;",
            ">;)",
            "Ly6/d2;"
        }
    .end annotation

    const-string v0, "types"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_aa

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly6/d2;

    if-nez v5, :cond_37

    invoke-static {v7}, Ly0/b;->c(Ly6/l0;)Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_37

    :cond_35
    move v5, v4

    goto :goto_38

    :cond_37
    :goto_37
    move v5, v1

    :goto_38
    instance-of v8, v7, Ly6/s0;

    if-eqz v8, :cond_3f

    check-cast v7, Ly6/s0;

    goto :goto_4f

    :cond_3f
    instance-of v6, v7, Ly6/e0;

    if-eqz v6, :cond_53

    invoke-static {v7}, Ly6/a0;->a(Ly6/l0;)Z

    move-result v6

    if-eqz v6, :cond_4a

    return-object v7

    :cond_4a
    check-cast v7, Ly6/e0;

    iget-object v7, v7, Ly6/e0;->b:Ly6/s0;

    move v6, v1

    :goto_4f
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_53
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_59
    if-eqz v5, :cond_6a

    sget-object v0, La7/i;->A0:La7/i;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v0, v1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0

    :cond_6a
    if-nez v6, :cond_73

    sget-object p0, Lz6/t;->a:Lz6/t;

    invoke-virtual {p0, v0}, Lz6/t;->b(Ljava/util/List;)Ly6/s0;

    move-result-object p0

    return-object p0

    :cond_73
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_80
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/d2;

    invoke-static {v2}, Ly6/h0;->d(Ly6/l0;)Ly6/s0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_94
    sget-object p0, Lz6/t;->a:Lz6/t;

    invoke-virtual {p0, v0}, Lz6/t;->b(Ljava/util/List;)Ly6/s0;

    move-result-object v0

    invoke-virtual {p0, v1}, Lz6/t;->b(Ljava/util/List;)Ly6/s0;

    move-result-object p0

    invoke-static {v0, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    return-object p0

    :cond_a3
    invoke-static {p0}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/d2;

    return-object p0

    :cond_aa
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected some types"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
