.class public final Lf5/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nfunctionTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 functionTypes.kt\norg/jetbrains/kotlin/builtins/FunctionTypesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,293:1\n1#2:294\n1549#3:295\n1620#3,3:296\n223#3,2:299\n1549#3:301\n1620#3,3:302\n1549#3:305\n1620#3,3:306\n1590#3,4:309\n*S KotlinDebug\n*F\n+ 1 functionTypes.kt\norg/jetbrains/kotlin/builtins/FunctionTypesKt\n*L\n152#1:295\n152#1:296,3\n187#1:299,2\n192#1:301\n192#1:302,3\n214#1:305\n214#1:306,3\n217#1:309,4\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/l0;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object p0

    sget-object v0, Lf5/j$a;->r:Lh6/c;

    invoke-interface {p0, v0}, Lj5/h;->f(Lh6/c;)Lj5/c;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    invoke-interface {p0}, Lj5/c;->a()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lf5/j;->d:Lh6/f;

    invoke-static {p0, v0}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm6/g;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lm6/m;

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final b(Lf5/g;Lj5/h;Ly6/l0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Z)Ly6/s0;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf5/g;",
            "Lj5/h;",
            "Ly6/l0;",
            "Ljava/util/List<",
            "+",
            "Ly6/l0;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ly6/l0;",
            ">;",
            "Ljava/util/List<",
            "Lh6/f;",
            ">;",
            "Ly6/l0;",
            "Z)",
            "Ly6/s0;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "builtIns"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "annotations"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "contextReceiverTypes"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "parameterTypes"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "returnType"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v9

    const/4 v11, 0x1

    if-eqz p2, :cond_41

    move v12, v11

    goto :goto_42

    :cond_41
    const/4 v12, 0x0

    :goto_42
    add-int/2addr v10, v12

    add-int/2addr v10, v11

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v2, v12}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_56
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ly6/l0;

    invoke-static {v13}, Ld7/c;->a(Ly6/l0;)Ly6/q1;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_6a
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_74

    invoke-static/range {p2 .. p2}, Ld7/c;->a(Ly6/l0;)Ly6/q1;

    move-result-object v12

    goto :goto_75

    :cond_74
    const/4 v12, 0x0

    :goto_75
    invoke-static {v8, v12}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_7d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    if-ltz v13, :cond_f4

    check-cast v14, Ly6/l0;

    if-eqz v4, :cond_9c

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh6/f;

    if-eqz v13, :cond_9c

    iget-boolean v9, v13, Lh6/f;->b:Z

    if-nez v9, :cond_9c

    goto :goto_9d

    :cond_9c
    const/4 v13, 0x0

    :goto_9d
    if-eqz v13, :cond_e6

    new-instance v9, Lj5/j;

    sget-object v11, Lf5/j$a;->s:Lh6/c;

    const-string v16, "name"

    invoke-static/range {v16 .. v16}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v10

    new-instance v2, Lm6/v;

    invoke-virtual {v13}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v13

    const-string v3, "name.asString()"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v13}, Lm6/v;-><init>(Ljava/lang/String;)V

    new-instance v3, Lh4/j;

    invoke-direct {v3, v10, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v9, v0, v11, v2}, Lj5/j;-><init>(Lf5/g;Lh6/c;Ljava/util/Map;)V

    sget v2, Lj5/h;->I:I

    invoke-virtual {v14}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v2

    invoke-static {v2, v9}, Li4/v;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_dc

    sget-object v2, Lj5/h$a;->b:Lj5/h;

    goto :goto_e2

    :cond_dc
    new-instance v3, Lj5/i;

    invoke-direct {v3, v2}, Lj5/i;-><init>(Ljava/util/List;)V

    move-object v2, v3

    :goto_e2
    invoke-static {v14, v2}, Ld7/c;->m(Ly6/l0;Lj5/h;)Ly6/l0;

    move-result-object v14

    :cond_e6
    invoke-static {v14}, Ld7/c;->a(Ly6/l0;)Ly6/q1;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v13, v15

    const/4 v11, 0x1

    goto :goto_7d

    :cond_f4
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_f9
    invoke-static/range {p6 .. p6}, Ld7/c;->a(Ly6/l0;)Ly6/q1;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-nez p2, :cond_10d

    const/4 v9, 0x0

    goto :goto_10e

    :cond_10d
    const/4 v9, 0x1

    :goto_10e
    add-int/2addr v3, v9

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_119

    invoke-virtual {v0, v3}, Lf5/g;->x(I)Li5/e;

    move-result-object v2

    goto :goto_133

    :cond_119
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lf5/j;->a:Lh6/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Function"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lf5/g;->k(Ljava/lang/String;)Li5/e;

    move-result-object v2

    :goto_133
    const-string v3, "if (isSuspendFunction) b…tFunction(parameterCount)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<this>"

    if-eqz p2, :cond_170

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lf5/j$a;->q:Lh6/c;

    invoke-interface {v1, v4}, Lj5/h;->g(Lh6/c;)Z

    move-result v5

    if-eqz v5, :cond_14b

    goto :goto_170

    :cond_14b
    sget v5, Lj5/h;->I:I

    new-instance v5, Lj5/j;

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v9, Li4/z;->a:Li4/z;

    invoke-direct {v5, v0, v4, v9}, Lj5/j;-><init>(Lf5/g;Lh6/c;Ljava/util/Map;)V

    invoke-static {v1, v5}, Li4/v;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16a

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    goto :goto_170

    :cond_16a
    new-instance v4, Lj5/i;

    invoke-direct {v4, v1}, Lj5/i;-><init>(Ljava/util/List;)V

    move-object v1, v4

    :cond_170
    :goto_170
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1bb

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lf5/j$a;->r:Lh6/c;

    invoke-interface {v1, v3}, Lj5/h;->g(Lh6/c;)Z

    move-result v5

    if-eqz v5, :cond_18b

    goto :goto_1bb

    :cond_18b
    sget v5, Lj5/h;->I:I

    new-instance v5, Lj5/j;

    sget-object v6, Lf5/j;->d:Lh6/f;

    new-instance v9, Lm6/m;

    invoke-direct {v9, v4}, Lm6/m;-><init>(I)V

    new-instance v4, Lh4/j;

    invoke-direct {v4, v6, v9}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v5, v0, v3, v4}, Lj5/j;-><init>(Lf5/g;Lh6/c;Ljava/util/Map;)V

    invoke-static {v1, v5}, Li4/v;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b6

    sget-object v0, Lj5/h$a;->b:Lj5/h;

    move-object v1, v0

    goto :goto_1bb

    :cond_1b6
    new-instance v1, Lj5/i;

    invoke-direct {v1, v0}, Lj5/i;-><init>(Ljava/util/List;)V

    :cond_1bb
    :goto_1bb
    invoke-static {v1}, Ly6/h1;->b(Lj5/h;)Ly6/g1;

    move-result-object v0

    invoke-static {v0, v2, v8}, Ly6/m0;->e(Ly6/g1;Li5/e;Ljava/util/List;)Ly6/s0;

    move-result-object v0

    return-object v0
.end method

.method public static final c(Ly6/l0;)Lh6/f;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object p0

    sget-object v0, Lf5/j$a;->s:Lh6/c;

    invoke-interface {p0, v0}, Lj5/h;->f(Lh6/c;)Lj5/c;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_13

    return-object v0

    :cond_13
    invoke-interface {p0}, Lj5/c;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Li4/v;->Y(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lm6/v;

    if-eqz v1, :cond_26

    check-cast p0, Lm6/v;

    goto :goto_27

    :cond_26
    move-object p0, v0

    :goto_27
    if-eqz p0, :cond_3e

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3e

    invoke-static {p0}, Lh6/f;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_37

    :cond_36
    move-object p0, v0

    :goto_37
    if-eqz p0, :cond_3e

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    return-object p0

    :cond_3e
    return-object v0
.end method

.method public static final d(Ly6/l0;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            ")",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf5/f;->j(Ly6/l0;)Z

    invoke-static {p0}, Lf5/f;->a(Ly6/l0;)I

    move-result v0

    if-nez v0, :cond_11

    sget-object p0, Li4/y;->a:Li4/y;

    goto :goto_43

    :cond_11
    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/q1;

    invoke-interface {v1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_42
    move-object p0, v0

    :goto_43
    return-object p0
.end method

.method public static final e(Li5/l;)Lg5/c;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/e;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    invoke-static {p0}, Lf5/g;->P(Li5/l;)Z

    move-result v0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    invoke-static {p0}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object p0

    invoke-virtual {p0}, Lh6/d;->f()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lh6/d;->e()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_54

    :cond_23
    sget-object v0, Lg5/c;->c:Lg5/c$a;

    invoke-virtual {p0}, Lh6/d;->h()Lh6/f;

    move-result-object v2

    invoke-virtual {v2}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shortName().asString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh6/d;->i()Lh6/c;

    move-result-object p0

    invoke-virtual {p0}, Lh6/c;->e()Lh6/c;

    move-result-object p0

    const-string v3, "toSafe().parent()"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "className"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "packageFqName"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p0}, Lg5/c$a;->a(Ljava/lang/String;Lh6/c;)Lg5/c$a$a;

    move-result-object p0

    if-eqz p0, :cond_54

    iget-object v1, p0, Lg5/c$a$a;->a:Lg5/c;

    :cond_54
    :goto_54
    return-object v1
.end method

.method public static final f(Ly6/l0;)Ly6/l0;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf5/f;->j(Ly6/l0;)Z

    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v0

    sget-object v1, Lf5/j$a;->q:Lh6/c;

    invoke-interface {v0, v1}, Lj5/h;->f(Lh6/c;)Lj5/c;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-nez v0, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    invoke-static {p0}, Lf5/f;->a(Ly6/l0;)I

    move-result v0

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/q1;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ly6/l0;)Ly6/l0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf5/f;->j(Ly6/l0;)Z

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/q1;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    const-string v0, "arguments.last().type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final h(Ly6/l0;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            ")",
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf5/f;->j(Ly6/l0;)Z

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lf5/f;->a(Ly6/l0;)I

    move-result v1

    invoke-static {p0}, Lf5/f;->i(Ly6/l0;)Z

    move-result p0

    add-int/2addr v1, p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ly6/l0;)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf5/f;->j(Ly6/l0;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object p0

    sget-object v0, Lf5/j$a;->q:Lh6/c;

    invoke-interface {p0, v0}, Lj5/h;->f(Lh6/c;)Lj5/c;

    move-result-object p0

    if-eqz p0, :cond_1b

    move p0, v1

    goto :goto_1c

    :cond_1b
    move p0, v2

    :goto_1c
    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public static final j(Ly6/l0;)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_27

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf5/f;->e(Li5/l;)Lg5/c;

    move-result-object p0

    sget-object v0, Lg5/c;->d:Lg5/c;

    if-eq p0, v0, :cond_23

    sget-object v0, Lg5/c;->e:Lg5/c;

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    move p0, v2

    goto :goto_24

    :cond_23
    :goto_23
    move p0, v1

    :goto_24
    if-ne p0, v1, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1
.end method

.method public static final k(Ly6/l0;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-static {p0}, Lf5/f;->e(Li5/l;)Lg5/c;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    sget-object v0, Lg5/c;->e:Lg5/c;

    if-ne p0, v0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method
