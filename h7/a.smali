.class public final Lh7/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nscopeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 scopeUtils.kt\norg/jetbrains/kotlin/util/collectionUtils/ScopeUtilsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n112#1,2:141\n127#1,7:143\n4307#2,2:137\n857#3,2:139\n*S KotlinDebug\n*F\n+ 1 scopeUtils.kt\norg/jetbrains/kotlin/util/collectionUtils/ScopeUtilsKt\n*L\n109#1:141,2\n124#1:143,7\n85#1:137,2\n88#1:139,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p0

    :cond_c
    if-nez p0, :cond_f

    return-object p1

    :cond_f
    instance-of v0, p0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1a

    move-object v0, p0

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_1a
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static final b(Ljava/lang/Iterable;)Li7/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lr6/i;",
            ">;)",
            "Li7/d<",
            "Lr6/i;",
            ">;"
        }
    .end annotation

    const-string v0, "scopes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Li7/d;

    invoke-direct {v0}, Li7/d;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lr6/i;

    if-eqz v2, :cond_23

    sget-object v3, Lr6/i$b;->b:Lr6/i$b;

    if-eq v2, v3, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-eqz v2, :cond_e

    invoke-virtual {v0, v1}, Li7/d;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2a
    return-object v0
.end method
