.class public abstract Lz6/e;
.super Ly6/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/e$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKotlinTypePreparator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinTypePreparator.kt\norg/jetbrains/kotlin/types/checker/KotlinTypePreparator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 5 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt$transformComponents$1\n*L\n1#1,76:1\n1#2:77\n1549#3:78\n1620#3,3:79\n1549#3:82\n1620#3,3:83\n1549#3:92\n1620#3,2:93\n1622#3:101\n98#4,6:86\n104#4:95\n105#4,4:97\n112#4,7:102\n99#5:96\n*S KotlinDebug\n*F\n+ 1 KotlinTypePreparator.kt\norg/jetbrains/kotlin/types/checker/KotlinTypePreparator\n*L\n27#1:78\n27#1:79,3\n37#1:82\n37#1:83,3\n48#1:92\n48#1:93,2\n48#1:101\n48#1:86,6\n48#1:95\n48#1:97,4\n48#1:102,7\n48#1:96\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly6/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lc7/i;)Lc7/i;
    .registers 2

    invoke-virtual {p0, p1}, Lz6/e;->b(Lc7/i;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public b(Lc7/i;)Ly6/d2;
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ly6/l0;

    if-eqz v0, :cond_6a

    check-cast p1, Ly6/l0;

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    instance-of v0, p1, Ly6/s0;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ly6/s0;

    invoke-virtual {p0, v0}, Lz6/e;->c(Ly6/s0;)Ly6/s0;

    move-result-object v0

    goto :goto_3d

    :cond_1b
    instance-of v0, p1, Ly6/e0;

    if-eqz v0, :cond_64

    move-object v0, p1

    check-cast v0, Ly6/e0;

    iget-object v1, v0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {p0, v1}, Lz6/e;->c(Ly6/s0;)Ly6/s0;

    move-result-object v1

    iget-object v2, v0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p0, v2}, Lz6/e;->c(Ly6/s0;)Ly6/s0;

    move-result-object v2

    iget-object v3, v0, Ly6/e0;->b:Ly6/s0;

    if-ne v1, v3, :cond_39

    iget-object v0, v0, Ly6/e0;->c:Ly6/s0;

    if-eq v2, v0, :cond_37

    goto :goto_39

    :cond_37
    move-object v0, p1

    goto :goto_3d

    :cond_39
    :goto_39
    invoke-static {v1, v2}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object v0

    :goto_3d
    new-instance v1, Lz6/e$b;

    invoke-direct {v1, p0}, Lz6/e$b;-><init>(Ljava/lang/Object;)V

    const-string p0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "origin"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "transform"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly6/c2;->b(Ly6/l0;)Ly6/l0;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/l0;

    goto :goto_5f

    :cond_5e
    const/4 p0, 0x0

    :goto_5f
    invoke-static {v0, p0}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    return-object p0

    :cond_64
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ly6/s0;)Ly6/s0;
    .registers 18

    invoke-virtual/range {p1 .. p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    instance-of v1, v0, Ll6/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v1, :cond_8b

    check-cast v0, Ll6/c;

    iget-object v1, v0, Ll6/c;->a:Ly6/q1;

    invoke-interface {v1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v6

    sget-object v7, Ly6/e2;->d:Ly6/e2;

    if-ne v6, v7, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    :goto_1b
    if-eqz v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v1, v5

    :goto_1f
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v5

    :cond_2b
    move-object v9, v5

    iget-object v1, v0, Ll6/c;->b:Lz6/j;

    if-nez v1, :cond_72

    iget-object v11, v0, Ll6/c;->a:Ly6/q1;

    invoke-virtual {v0}, Ll6/c;->b()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly6/l0;

    invoke-virtual {v3}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_57
    new-instance v1, Lz6/j;

    const/4 v13, 0x0

    const-string v3, "projection"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "supertypes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lz6/i;

    invoke-direct {v12, v2}, Lz6/i;-><init>(Ljava/util/List;)V

    const/4 v14, 0x0

    const/16 v15, 0x8

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lz6/j;-><init>(Ly6/q1;Lkotlin/jvm/functions/Function0;Lz6/j;Li5/a1;I)V

    iput-object v1, v0, Ll6/c;->b:Lz6/j;

    :cond_72
    new-instance v1, Lz6/h;

    sget-object v7, Lc7/b;->a:Lc7/b;

    iget-object v8, v0, Ll6/c;->b:Lz6/j;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ly6/l0;->G0()Z

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x20

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lz6/h;-><init>(Lc7/b;Lz6/j;Ly6/d2;Ly6/g1;ZZI)V

    return-object v1

    :cond_8b
    instance-of v1, v0, Lm6/q;

    if-nez v1, :cond_ec

    instance-of v1, v0, Ly6/j0;

    if-eqz v1, :cond_eb

    invoke-virtual/range {p1 .. p1}, Ly6/l0;->G0()Z

    move-result v1

    if-eqz v1, :cond_eb

    check-cast v0, Ly6/j0;

    iget-object v1, v0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly6/l0;

    invoke-static {v3}, Ld7/c;->l(Ly6/l0;)Ly6/l0;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_aa

    :cond_bf
    if-nez v3, :cond_c2

    goto :goto_e2

    :cond_c2
    iget-object v1, v0, Ly6/j0;->a:Ly6/l0;

    if-eqz v1, :cond_ca

    invoke-static {v1}, Ld7/c;->l(Ly6/l0;)Ly6/l0;

    move-result-object v5

    :cond_ca
    const-string v1, "typesToIntersect"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->hashCode()I

    new-instance v2, Ly6/j0;

    invoke-direct {v2, v1}, Ly6/j0;-><init>(Ljava/util/Collection;)V

    iput-object v5, v2, Ly6/j0;->a:Ly6/l0;

    move-object v5, v2

    :goto_e2
    if-nez v5, :cond_e5

    goto :goto_e6

    :cond_e5
    move-object v0, v5

    :goto_e6
    invoke-virtual {v0}, Ly6/j0;->h()Ly6/s0;

    move-result-object v0

    return-object v0

    :cond_eb
    return-object p1

    :cond_ec
    check-cast v0, Lm6/q;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    throw v5
.end method
