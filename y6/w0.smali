.class public final Ly6/w0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpecialTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialTypes.kt\norg/jetbrains/kotlin/types/SpecialTypesKt\n+ 2 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n102#2,2:217\n104#2,5:222\n112#2,7:228\n1549#3:219\n1620#3,2:220\n1622#3:227\n*S KotlinDebug\n*F\n+ 1 SpecialTypes.kt\norg/jetbrains/kotlin/types/SpecialTypesKt\n*L\n214#1:217,2\n214#1:222,5\n214#1:228,7\n214#1:219\n214#1:220,2\n214#1:227\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/d2;Z)Ly6/d2;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly6/u;->d:Ly6/u$a;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, p0, p1, v1, v2}, Ly6/u$a;->a(Ly6/u$a;Ly6/d2;ZZI)Ly6/u;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_1b

    :cond_10
    invoke-static {p0}, Ly6/w0;->c(Ly6/l0;)Ly6/s0;

    move-result-object p1

    if-eqz p1, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p0, v1}, Ly6/d2;->J0(Z)Ly6/d2;

    move-result-object p1

    :goto_1b
    return-object p1
.end method

.method public static synthetic b(Ly6/d2;ZI)Ly6/d2;
    .registers 3

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Ly6/w0;->a(Ly6/d2;Z)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ly6/l0;)Ly6/s0;
    .registers 9

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    instance-of v0, p0, Ly6/j0;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p0, Ly6/j0;

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    if-nez p0, :cond_10

    return-object v1

    :cond_10
    iget-object v0, p0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly6/l0;

    invoke-static {v5}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-virtual {v5}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v4

    invoke-static {v4, v3, v6}, Ly6/w0;->b(Ly6/d2;ZI)Ly6/d2;

    move-result-object v5

    move v4, v6

    :cond_3f
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_43
    if-nez v4, :cond_47

    move-object v2, v1

    goto :goto_72

    :cond_47
    iget-object p0, p0, Ly6/j0;->a:Ly6/l0;

    if-eqz p0, :cond_5a

    invoke-static {p0}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    invoke-static {p0, v3, v6}, Ly6/w0;->b(Ly6/d2;ZI)Ly6/d2;

    move-result-object p0

    goto :goto_5b

    :cond_5a
    move-object p0, v1

    :cond_5b
    :goto_5b
    const-string v0, "typesToIntersect"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    new-instance v2, Ly6/j0;

    invoke-direct {v2, v0}, Ly6/j0;-><init>(Ljava/util/Collection;)V

    iput-object p0, v2, Ly6/j0;->a:Ly6/l0;

    :goto_72
    if-nez v2, :cond_75

    return-object v1

    :cond_75
    invoke-virtual {v2}, Ly6/j0;->h()Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ly6/s0;Z)Ly6/s0;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly6/u;->d:Ly6/u$a;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, p0, p1, v1, v2}, Ly6/u$a;->a(Ly6/u$a;Ly6/d2;ZZI)Ly6/u;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_1a

    :cond_10
    invoke-static {p0}, Ly6/w0;->c(Ly6/l0;)Ly6/s0;

    move-result-object p1

    if-nez p1, :cond_1a

    invoke-virtual {p0, v1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p1

    :cond_1a
    :goto_1a
    return-object p1
.end method

.method public static final e(Ly6/s0;Ly6/s0;)Ly6/s0;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    new-instance v0, Ly6/a;

    invoke-direct {v0, p0, p1}, Ly6/a;-><init>(Ly6/s0;Ly6/s0;)V

    return-object v0
.end method
