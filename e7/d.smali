.class public final Le7/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCapturedTypeApproximation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CapturedTypeApproximation.kt\norg/jetbrains/kotlin/types/typesApproximation/CapturedTypeApproximationKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1747#2,3:179\n1549#2:183\n1620#2,3:184\n1#3:182\n*S KotlinDebug\n*F\n+ 1 CapturedTypeApproximation.kt\norg/jetbrains/kotlin/types/typesApproximation/CapturedTypeApproximationKt\n*L\n158#1:179,3\n167#1:183\n167#1:184,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/l0;)Le7/a;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            ")",
            "Le7/a<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly6/h0;->b(Ly6/l0;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-static {p0}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object v0

    invoke-static {v0}, Le7/d;->a(Ly6/l0;)Le7/a;

    move-result-object v0

    invoke-static {p0}, Ly6/h0;->d(Ly6/l0;)Ly6/s0;

    move-result-object v1

    invoke-static {v1}, Le7/d;->a(Ly6/l0;)Le7/a;

    move-result-object v1

    new-instance v2, Le7/a;

    iget-object v3, v0, Le7/a;->a:Ljava/lang/Object;

    check-cast v3, Ly6/l0;

    invoke-static {v3}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object v3

    iget-object v4, v1, Le7/a;->a:Ljava/lang/Object;

    check-cast v4, Ly6/l0;

    invoke-static {v4}, Ly6/h0;->d(Ly6/l0;)Ly6/s0;

    move-result-object v4

    invoke-static {v3, v4}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object v3

    invoke-static {v3, p0}, Ly6/c2;->c(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object v3

    iget-object v0, v0, Le7/a;->b:Ljava/lang/Object;

    check-cast v0, Ly6/l0;

    invoke-static {v0}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object v0

    iget-object v1, v1, Le7/a;->b:Ljava/lang/Object;

    check-cast v1, Ly6/l0;

    invoke-static {v1}, Ly6/h0;->d(Ly6/l0;)Ly6/s0;

    move-result-object v1

    invoke-static {v0, v1}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object v0

    invoke-static {v0, p0}, Ly6/c2;->c(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Le7/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_51
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    invoke-static {p0}, Ll6/d;->b(Ly6/l0;)Z

    move-result v2

    const-string v3, "type.builtIns.nothingType"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_d2

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ll6/b;

    invoke-interface {v1}, Ll6/b;->d()Ly6/q1;

    move-result-object v0

    invoke-interface {v0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v1

    const-string v2, "typeProjection.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result v2

    invoke-static {v1, v2}, Ly6/a2;->k(Ly6/l0;Z)Ly6/l0;

    move-result-object v1

    const-string v2, "makeNullableIfNeeded(this, type.isMarkedNullable)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eq v6, v5, :cond_bf

    if-ne v6, v4, :cond_a8

    new-instance v0, Le7/a;

    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object v4

    invoke-virtual {v4}, Lf5/g;->p()Ly6/s0;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result p0

    invoke-static {v4, p0}, Ly6/a2;->k(Ly6/l0;Z)Ly6/l0;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Le7/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d1

    :cond_a8
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only nontrivial projections should have been captured, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_bf
    new-instance v0, Le7/a;

    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->q()Ly6/s0;

    move-result-object p0

    const-string v2, "type.builtIns.nullableAnyType"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Le7/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d1
    return-object v0

    :cond_d2
    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_231

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v2, v6, :cond_f0

    goto/16 :goto_231

    :cond_f0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v1}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v1

    const-string v8, "typeConstructor.parameters"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_111
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh4/j;

    iget-object v8, v7, Lh4/j;->a:Ljava/lang/Object;

    check-cast v8, Ly6/q1;

    iget-object v7, v7, Lh4/j;->b:Ljava/lang/Object;

    check-cast v7, Li5/a1;

    const-string v9, "typeParameter"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v9

    sget-object v10, Ly6/x1;->b:Ly6/x1;

    const/4 v10, 0x0

    if-eqz v9, :cond_1e3

    if-eqz v8, :cond_1dd

    invoke-interface {v8}, Ly6/q1;->b()Z

    move-result v10

    if-eqz v10, :cond_13e

    sget-object v9, Ly6/e2;->e:Ly6/e2;

    goto :goto_146

    :cond_13e
    invoke-interface {v8}, Ly6/q1;->c()Ly6/e2;

    move-result-object v10

    invoke-static {v9, v10}, Ly6/x1;->b(Ly6/e2;Ly6/e2;)Ly6/e2;

    move-result-object v9

    :goto_146
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_18a

    if-eq v9, v5, :cond_170

    if-ne v9, v4, :cond_16a

    new-instance v9, Le7/e;

    invoke-static {v7}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v10

    invoke-virtual {v10}, Lf5/g;->p()Ly6/s0;

    move-result-object v10

    const-string v11, "typeParameter.builtIns.nothingType"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, v10, v11}, Le7/e;-><init>(Li5/a1;Ly6/l0;Ly6/l0;)V

    goto :goto_19d

    :cond_16a
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_170
    new-instance v9, Le7/e;

    invoke-interface {v8}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v11

    invoke-virtual {v11}, Lf5/g;->q()Ly6/s0;

    move-result-object v11

    const-string v12, "typeParameter.builtIns.nullableAnyType"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, v10, v11}, Le7/e;-><init>(Li5/a1;Ly6/l0;Ly6/l0;)V

    goto :goto_19d

    :cond_18a
    new-instance v9, Le7/e;

    invoke-interface {v8}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, v10, v11}, Le7/e;-><init>(Li5/a1;Ly6/l0;Ly6/l0;)V

    :goto_19d
    invoke-interface {v8}, Ly6/q1;->b()Z

    move-result v7

    if-eqz v7, :cond_1ab

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_111

    :cond_1ab
    iget-object v7, v9, Le7/e;->b:Ly6/l0;

    invoke-static {v7}, Le7/d;->a(Ly6/l0;)Le7/a;

    move-result-object v7

    iget-object v8, v7, Le7/a;->a:Ljava/lang/Object;

    check-cast v8, Ly6/l0;

    iget-object v7, v7, Le7/a;->b:Ljava/lang/Object;

    check-cast v7, Ly6/l0;

    iget-object v10, v9, Le7/e;->c:Ly6/l0;

    invoke-static {v10}, Le7/d;->a(Ly6/l0;)Le7/a;

    move-result-object v10

    iget-object v11, v10, Le7/a;->a:Ljava/lang/Object;

    check-cast v11, Ly6/l0;

    iget-object v10, v10, Le7/a;->b:Ljava/lang/Object;

    check-cast v10, Ly6/l0;

    new-instance v12, Le7/e;

    iget-object v13, v9, Le7/e;->a:Li5/a1;

    invoke-direct {v12, v13, v7, v11}, Le7/e;-><init>(Li5/a1;Ly6/l0;Ly6/l0;)V

    new-instance v7, Le7/e;

    iget-object v9, v9, Le7/e;->a:Li5/a1;

    invoke-direct {v7, v9, v8, v10}, Le7/e;-><init>(Li5/a1;Ly6/l0;Ly6/l0;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_111

    :cond_1dd
    const/16 p0, 0x24

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v10

    :cond_1e3
    const/16 p0, 0x23

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v10

    :cond_1e9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f1

    goto :goto_214

    :cond_1f1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_214

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le7/e;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lz6/d;->a:Lz6/d;

    iget-object v8, v4, Le7/e;->b:Ly6/l0;

    iget-object v4, v4, Le7/e;->c:Ly6/l0;

    check-cast v7, Lz6/m;

    invoke-virtual {v7, v8, v4}, Lz6/m;->d(Ly6/l0;Ly6/l0;)Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1f5

    goto :goto_215

    :cond_214
    :goto_214
    move v5, v1

    :goto_215
    new-instance v0, Le7/a;

    if-eqz v5, :cond_225

    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object v1

    invoke-virtual {v1}, Lf5/g;->p()Ly6/s0;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_229

    :cond_225
    invoke-static {p0, v2}, Le7/d;->b(Ly6/l0;Ljava/util/List;)Ly6/l0;

    move-result-object v1

    :goto_229
    invoke-static {p0, v6}, Le7/d;->b(Ly6/l0;Ljava/util/List;)Ly6/l0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Le7/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_231
    :goto_231
    new-instance v0, Le7/a;

    invoke-direct {v0, p0, p0}, Le7/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final b(Ly6/l0;Ljava/util/List;)Ly6/l0;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Ljava/util/List<",
            "Le7/e;",
            ">;)",
            "Ly6/l0;"
        }
    .end annotation

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p1}, Ljava/util/List;->size()I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/e;

    sget-object v2, Ly6/e2;->e:Ly6/e2;

    sget-object v3, Ly6/e2;->c:Ly6/e2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lz6/d;->a:Lz6/d;

    iget-object v5, v1, Le7/e;->b:Ly6/l0;

    iget-object v6, v1, Le7/e;->c:Ly6/l0;

    check-cast v4, Lz6/m;

    invoke-virtual {v4, v5, v6}, Lz6/m;->d(Ly6/l0;Ly6/l0;)Z

    iget-object v4, v1, Le7/e;->b:Ly6/l0;

    iget-object v5, v1, Le7/e;->c:Ly6/l0;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    iget-object v4, v1, Le7/e;->a:Li5/a1;

    invoke-interface {v4}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v4

    sget-object v5, Ly6/e2;->d:Ly6/e2;

    if-ne v4, v5, :cond_4c

    goto :goto_98

    :cond_4c
    iget-object v4, v1, Le7/e;->b:Ly6/l0;

    invoke-static {v4}, Lf5/g;->H(Ly6/l0;)Z

    move-result v4

    if-eqz v4, :cond_6d

    iget-object v4, v1, Le7/e;->a:Li5/a1;

    invoke-interface {v4}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v4

    if-eq v4, v5, :cond_6d

    new-instance v4, Ly6/s1;

    iget-object v5, v1, Le7/e;->a:Li5/a1;

    invoke-interface {v5}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v5

    if-ne v2, v5, :cond_67

    move-object v2, v3

    :cond_67
    iget-object v1, v1, Le7/e;->c:Ly6/l0;

    invoke-direct {v4, v2, v1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_9f

    :cond_6d
    iget-object v4, v1, Le7/e;->c:Ly6/l0;

    invoke-static {v4}, Lf5/g;->I(Ly6/l0;)Z

    move-result v4

    if-eqz v4, :cond_87

    new-instance v4, Ly6/s1;

    iget-object v2, v1, Le7/e;->a:Li5/a1;

    invoke-interface {v2}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v2

    if-ne v5, v2, :cond_80

    goto :goto_81

    :cond_80
    move-object v3, v5

    :goto_81
    iget-object v1, v1, Le7/e;->b:Ly6/l0;

    invoke-direct {v4, v3, v1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_9f

    :cond_87
    new-instance v4, Ly6/s1;

    iget-object v5, v1, Le7/e;->a:Li5/a1;

    invoke-interface {v5}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v5

    if-ne v2, v5, :cond_92

    move-object v2, v3

    :cond_92
    iget-object v1, v1, Le7/e;->c:Ly6/l0;

    invoke-direct {v4, v2, v1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_9f

    :cond_98
    :goto_98
    new-instance v4, Ly6/s1;

    iget-object v1, v1, Le7/e;->b:Ly6/l0;

    invoke-direct {v4, v1}, Ly6/s1;-><init>(Ly6/l0;)V

    :goto_9f
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_a4
    const/4 p1, 0x6

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, p1}, Ly6/v1;->c(Ly6/l0;Ljava/util/List;Lj5/h;Ljava/util/List;I)Ly6/l0;

    move-result-object p0

    return-object p0
.end method
