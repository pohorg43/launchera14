.class public final Ld7/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeUtils.kt\norg/jetbrains/kotlin/types/typeUtil/TypeUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,406:1\n261#1,14:433\n276#1:451\n265#1,12:452\n261#1,14:464\n276#1:482\n265#1,12:483\n272#1,3:501\n276#1:508\n272#1,3:509\n276#1:516\n272#1,3:517\n276#1:524\n397#1:550\n397#1:551\n397#1:552\n1747#2,3:407\n1549#2:410\n1620#2,3:411\n1855#2,2:414\n1603#2,9:417\n1855#2:426\n1856#2:428\n1612#2:429\n766#2:430\n857#2,2:431\n1549#2:447\n1620#2,3:448\n1549#2:478\n1620#2,3:479\n1747#2,3:495\n1747#2,3:498\n1549#2:504\n1620#2,3:505\n1549#2:512\n1620#2,3:513\n1549#2:520\n1620#2,3:521\n1549#2:525\n1620#2,3:526\n1549#2:529\n1620#2,3:530\n1747#2,3:533\n288#2,2:536\n1549#2:538\n1620#2,3:539\n1549#2:542\n1620#2,3:543\n1549#2:546\n1620#2,3:547\n1#3:416\n1#3:427\n*S KotlinDebug\n*F\n+ 1 TypeUtils.kt\norg/jetbrains/kotlin/types/typeUtil/TypeUtilsKt\n*L\n200#1:433,14\n200#1:451\n200#1:452,12\n201#1:464,14\n201#1:482\n201#1:483,12\n264#1:501,3\n264#1:508\n265#1:509,3\n265#1:516\n267#1:517,3\n267#1:524\n389#1:550\n392#1:551\n395#1:552\n90#1:407,3\n141#1:410\n141#1:411,3\n157#1:414,2\n183#1:417,9\n183#1:426\n183#1:428\n183#1:429\n189#1:430\n189#1:431,2\n200#1:447\n200#1:448,3\n201#1:478\n201#1:479,3\n239#1:495,3\n251#1:498,3\n264#1:504\n264#1:505,3\n265#1:512\n265#1:513,3\n267#1:520\n267#1:521,3\n274#1:525\n274#1:526,3\n281#1:529\n281#1:530,3\n307#1:533,3\n314#1:536,2\n324#1:538\n324#1:539,3\n343#1:542\n343#1:543,3\n351#1:546\n351#1:547,3\n183#1:427\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/l0;)Ly6/q1;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/s1;

    invoke-direct {v0, p0}, Ly6/s1;-><init>(Ly6/l0;)V

    return-object v0
.end method

.method public static final b(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ly6/d2;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ly6/a2;->c(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static final c(Ly6/l0;Ly6/j1;Ljava/util/Set;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Ly6/j1;",
            "Ljava/util/Set<",
            "+",
            "Li5/a1;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v2, v0, Li5/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    check-cast v0, Li5/i;

    goto :goto_1d

    :cond_1c
    move-object v0, v3

    :goto_1d
    if-eqz v0, :cond_24

    invoke-interface {v0}, Li5/i;->n()Ljava/util/List;

    move-result-object v0

    goto :goto_25

    :cond_24
    move-object v0, v3

    :goto_25
    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->n0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    instance-of v2, p0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v2, :cond_3d

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_3b
    move v1, v4

    goto :goto_86

    :cond_3d
    check-cast p0, Li4/d0;

    invoke-virtual {p0}, Li4/d0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li4/c0;

    iget v5, v2, Li4/c0;->a:I

    iget-object v2, v2, Li4/c0;->b:Ljava/lang/Object;

    check-cast v2, Ly6/q1;

    if-eqz v0, :cond_5e

    invoke-static {v0, v5}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/a1;

    goto :goto_5f

    :cond_5e
    move-object v5, v3

    :goto_5f
    if-eqz v5, :cond_6b

    if-eqz p2, :cond_6b

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    move v5, v1

    goto :goto_6c

    :cond_6b
    move v5, v4

    :goto_6c
    if-nez v5, :cond_83

    invoke-interface {v2}, Ly6/q1;->b()Z

    move-result v5

    if-eqz v5, :cond_75

    goto :goto_83

    :cond_75
    invoke-interface {v2}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v2

    const-string v5, "argument.type"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, Ld7/c;->c(Ly6/l0;Ly6/j1;Ljava/util/Set;)Z

    move-result v2

    goto :goto_84

    :cond_83
    :goto_83
    move v2, v4

    :goto_84
    if-eqz v2, :cond_43

    :goto_86
    return v1
.end method

.method public static final d(Ly6/l0;Ly6/e2;Li5/a1;)Ly6/q1;
    .registers 4

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectionKind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/s1;

    if-eqz p2, :cond_13

    invoke-interface {p2}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object p2

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    if-ne p2, p1, :cond_18

    sget-object p1, Ly6/e2;->c:Ly6/e2;

    :cond_18
    invoke-direct {v0, p1, p0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object v0
.end method

.method public static final e(Ly6/l0;Ly6/l0;Ljava/util/Set;Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Ly6/l0;",
            "Ljava/util/Set<",
            "Li5/a1;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Li5/a1;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v1, v0, Li5/a1;

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c2

    :cond_1f
    check-cast v0, Li5/a1;

    invoke-interface {v0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/l0;

    const-string v1, "upperBound"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Ld7/c;->e(Ly6/l0;Ly6/l0;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_29

    :cond_3e
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v1, v0, Li5/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    check-cast v0, Li5/i;

    goto :goto_4f

    :cond_4e
    move-object v0, v2

    :goto_4f
    if-eqz v0, :cond_56

    invoke-interface {v0}, Li5/i;->n()Ljava/util/List;

    move-result-object v0

    goto :goto_57

    :cond_56
    move-object v0, v2

    :goto_57
    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v3, v1

    :goto_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly6/q1;

    if-eqz v0, :cond_78

    invoke-static {v0, v3}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/a1;

    goto :goto_79

    :cond_78
    move-object v3, v2

    :goto_79
    if-eqz v3, :cond_85

    if-eqz p3, :cond_85

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    const/4 v3, 0x1

    goto :goto_86

    :cond_85
    move v3, v1

    :goto_86
    if-nez v3, :cond_c0

    invoke-interface {v5}, Ly6/q1;->b()Z

    move-result v3

    if-eqz v3, :cond_8f

    goto :goto_c0

    :cond_8f
    invoke-interface {v5}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v3

    invoke-virtual {v3}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v3

    invoke-interface {v3}, Ly6/j1;->e()Li5/h;

    move-result-object v3

    invoke-static {p2, v3}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c0

    invoke-interface {v5}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v3

    invoke-virtual {v3}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v3

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    goto :goto_c0

    :cond_b4
    invoke-interface {v5}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v3

    const-string v5, "argument.type"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1, p2, p3}, Ld7/c;->e(Ly6/l0;Ly6/l0;Ljava/util/Set;Ljava/util/Set;)V

    :cond_c0
    :goto_c0
    move v3, v4

    goto :goto_61

    :cond_c2
    :goto_c2
    return-void
.end method

.method public static final f(Ly6/l0;)Lf5/g;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->k()Lf5/g;

    move-result-object p0

    const-string v0, "constructor.builtIns"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final g(Li5/a1;)Ly6/l0;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "upperBounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    invoke-interface {p0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ly6/l0;

    invoke-virtual {v4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v4

    invoke-interface {v4}, Ly6/j1;->e()Li5/h;

    move-result-object v4

    instance-of v5, v4, Li5/e;

    if-eqz v5, :cond_39

    move-object v3, v4

    check-cast v3, Li5/e;

    :cond_39
    const/4 v4, 0x0

    if-nez v3, :cond_3d

    goto :goto_4e

    :cond_3d
    invoke-interface {v3}, Li5/e;->f()Li5/f;

    move-result-object v5

    sget-object v6, Li5/f;->b:Li5/f;

    if-eq v5, v6, :cond_4e

    invoke-interface {v3}, Li5/e;->f()Li5/f;

    move-result-object v3

    sget-object v5, Li5/f;->e:Li5/f;

    if-eq v3, v5, :cond_4e

    const/4 v4, 0x1

    :cond_4e
    :goto_4e
    if-eqz v4, :cond_1c

    move-object v3, v2

    :cond_51
    check-cast v3, Ly6/l0;

    if-nez v3, :cond_68

    invoke-interface {p0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "upperBounds.first()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Ly6/l0;

    :cond_68
    return-object v3
.end method

.method public static final h(Li5/a1;Ly6/j1;Ljava/util/Set;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/a1;",
            "Ly6/j1;",
            "Ljava/util/Set<",
            "+",
            "Li5/a1;",
            ">;)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeParameter.upperBounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1a
    move v2, v3

    goto :goto_50

    :cond_1c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/l0;

    const-string v4, "upperBound"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/h;->m()Ly6/s0;

    move-result-object v4

    invoke-virtual {v4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v4

    invoke-static {v1, v4, p2}, Ld7/c;->c(Ly6/l0;Ly6/j1;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_4d

    if-eqz p1, :cond_4b

    invoke-virtual {v1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_4b
    move v1, v2

    goto :goto_4e

    :cond_4d
    move v1, v3

    :goto_4e
    if-eqz v1, :cond_20

    :goto_50
    return v2
.end method

.method public static synthetic i(Li5/a1;Ly6/j1;Ljava/util/Set;I)Z
    .registers 4

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Ld7/c;->h(Li5/a1;Ly6/j1;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static final j(Ly6/l0;Ly6/l0;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz6/d;->a:Lz6/d;

    check-cast v0, Lz6/m;

    invoke-virtual {v0, p0, p1}, Lz6/m;->d(Ly6/l0;Ly6/l0;)Z

    move-result p0

    return p0
.end method

.method public static final k(Ly6/l0;)Z
    .registers 2

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, La7/g;

    if-eqz v0, :cond_13

    check-cast p0, La7/g;

    iget-object p0, p0, La7/g;->d:La7/i;

    iget-boolean p0, p0, La7/i;->b:Z

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static final l(Ly6/l0;)Ly6/l0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_12

    invoke-static {p0, v0}, Ly6/a2;->j(Ly6/l0;Z)Ly6/l0;

    move-result-object p0

    const-string v0, "makeNullable(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_12
    invoke-static {v0}, Ly6/a2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final m(Ly6/l0;Lj5/h;)Ly6/l0;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v0

    invoke-interface {v0}, Lj5/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Lj5/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v0

    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p0

    invoke-static {p0, p1}, Ly6/h1;->a(Ly6/g1;Lj5/h;)Ly6/g1;

    move-result-object p0

    invoke-virtual {v0, p0}, Ly6/d2;->L0(Ly6/g1;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ly6/l0;)Ly6/l0;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    instance-of v0, p0, Ly6/e0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "constructor.parameters"

    if-eqz v0, :cond_b3

    move-object v0, p0

    check-cast v0, Ly6/e0;

    iget-object v5, v0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v5}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_62

    invoke-virtual {v5}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->e()Li5/h;

    move-result-object v6

    if-nez v6, :cond_31

    goto :goto_62

    :cond_31
    invoke-virtual {v5}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_49
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Li5/a1;

    new-instance v9, Ly6/y0;

    invoke-direct {v9, v8}, Ly6/y0;-><init>(Li5/a1;)V

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_5e
    invoke-static {v5, v7, v2, v1}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object v5

    :cond_62
    :goto_62
    iget-object v0, v0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ae

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->e()Li5/h;

    move-result-object v6

    if-nez v6, :cond_7d

    goto :goto_ae

    :cond_7d
    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/a1;

    new-instance v7, Ly6/y0;

    invoke-direct {v7, v6}, Ly6/y0;-><init>(Li5/a1;)V

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_aa
    invoke-static {v0, v4, v2, v1}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object v0

    :cond_ae
    :goto_ae
    invoke-static {v5, v0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object v0

    goto :goto_104

    :cond_b3
    instance-of v0, p0, Ly6/s0;

    if-eqz v0, :cond_109

    move-object v0, p0

    check-cast v0, Ly6/s0;

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v5

    invoke-interface {v5}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_104

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v5

    invoke-interface {v5}, Ly6/j1;->e()Li5/h;

    move-result-object v5

    if-nez v5, :cond_d3

    goto :goto_104

    :cond_d3
    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v5

    invoke-interface {v5}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_eb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_100

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/a1;

    new-instance v6, Ly6/y0;

    invoke-direct {v6, v5}, Ly6/y0;-><init>(Li5/a1;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    :cond_100
    invoke-static {v0, v4, v2, v1}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object v0

    :cond_104
    :goto_104
    invoke-static {v0, p0}, Ly6/c2;->c(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    return-object p0

    :cond_109
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
