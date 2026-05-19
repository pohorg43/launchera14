.class public final La6/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ndescriptorBasedTypeSignatureMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 descriptorBasedTypeSignatureMapping.kt\norg/jetbrains/kotlin/load/kotlin/DescriptorBasedTypeSignatureMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n1#2:199\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Li5/e;La6/b0;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            "La6/b0<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, La6/b0;->a(Li5/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    invoke-interface {p0}, Li5/e;->b()Li5/l;

    move-result-object v0

    const-string v1, "klass.containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    sget-object v2, Lh6/h;->a:Lh6/h;

    if-eqz v1, :cond_27

    iget-boolean v2, v1, Lh6/f;->b:Z

    if-nez v2, :cond_27

    goto :goto_29

    :cond_27
    sget-object v1, Lh6/h;->d:Lh6/f;

    :goto_29
    invoke-virtual {v1}, Lh6/f;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "safeIdentifier(klass.name).identifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, Li5/h0;

    if-eqz v2, :cond_69

    check-cast v0, Li5/h0;

    invoke-interface {v0}, Li5/h0;->e()Lh6/c;

    move-result-object p0

    invoke-virtual {p0}, Lh6/c;->d()Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_68

    :cond_43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fqName.asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x2f

    invoke-static {p0, v0, v4, v2, v3}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_68
    return-object v1

    :cond_69
    instance-of v2, v0, Li5/e;

    if-eqz v2, :cond_71

    move-object v2, v0

    check-cast v2, Li5/e;

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    :goto_72
    if-eqz v2, :cond_85

    invoke-interface {p1, v2}, La6/b0;->d(Li5/e;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7e

    invoke-static {v2, p1}, La6/g;->a(Li5/e;La6/b0;)Ljava/lang/String;

    move-result-object p0

    :cond_7e
    const/16 p1, 0x24

    invoke-static {p0, p1, v1}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly6/l0;",
            "La6/p<",
            "TT;>;",
            "La6/d0;",
            "La6/b0<",
            "+TT;>;",
            "La6/m<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ly6/l0;",
            "-TT;-",
            "La6/d0;",
            "Lh4/z;",
            ">;)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "kotlinType"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "factory"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mode"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "typeMappingConfiguration"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "writeGenericType"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, La6/b0;->f(Ly6/l0;)Ly6/l0;

    move-result-object v6

    if-eqz v6, :cond_2e

    invoke-static {v6, v1, v2, v3, v4}, La6/g;->b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2e
    invoke-static/range {p0 .. p0}, Lf5/f;->k(Ly6/l0;)Z

    move-result v6

    if-eqz v6, :cond_bf

    sget-object v5, Lf5/k;->a:Ll5/b0;

    const-string v5, "suspendFunType"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lf5/f;->k(Ly6/l0;)Z

    invoke-static/range {p0 .. p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lf5/f;->f(Ly6/l0;)Ly6/l0;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lf5/f;->d(Ly6/l0;)Ljava/util/List;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lf5/f;->h(Ly6/l0;)Ljava/util/List;

    move-result-object v5

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v5, v11}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_61
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_75

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly6/q1;

    invoke-interface {v11}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_75
    sget-object v5, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ly6/g1;->c:Ly6/g1;

    sget-object v5, Lf5/k;->a:Ll5/b0;

    invoke-virtual {v5}, Ll5/b0;->h()Ly6/j1;

    move-result-object v12

    const-string v5, "FAKE_CONTINUATION_CLASS_DESCRIPTOR.typeConstructor"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lf5/f;->g(Ly6/l0;)Ly6/l0;

    move-result-object v5

    invoke-static {v5}, Ld7/c;->a(Ly6/l0;)Ly6/q1;

    move-result-object v5

    invoke-static {v5}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x10

    invoke-static/range {v11 .. v16}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object v5

    invoke-static {v10, v5}, Li4/v;->V(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {p0 .. p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object v5

    invoke-virtual {v5}, Lf5/g;->q()Ly6/s0;

    move-result-object v12

    const-string v5, "suspendFunType.builtIns.nullableAnyType"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lf5/f;->b(Lf5/g;Lj5/h;Ly6/l0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Z)Ly6/s0;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ly6/l0;->G0()Z

    move-result v0

    invoke-virtual {v5, v0}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, La6/g;->b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_bf
    sget-object v6, Lz6/p;->a:Lz6/p;

    const-string v7, "<this>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "type"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "typeFactory"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lz6/p;->p0(Lc7/i;)Lc7/n;

    move-result-object v5

    invoke-static {v5}, Lz6/b$a;->G(Lc7/n;)Z

    move-result v9

    const-string v10, "possiblyPrimitiveType"

    const/16 v11, 0x5b

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v9, :cond_e6

    goto/16 :goto_19f

    :cond_e6
    invoke-static {v5}, Lz6/b$a;->t(Lc7/n;)Lf5/h;

    move-result-object v9

    if-eqz v9, :cond_11c

    invoke-interface {v1, v9}, La6/p;->b(Lf5/h;)Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lz6/b$a;->P(Lc7/i;)Z

    move-result v9

    if-nez v9, :cond_10c

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lr5/f0;->p:Lh6/c;

    const-string v8, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lz6/b$a;->C(Lc7/i;Lh6/c;)Z

    move-result v6

    if-eqz v6, :cond_10a

    goto :goto_10c

    :cond_10a
    move v6, v12

    goto :goto_10d

    :cond_10c
    :goto_10c
    move v6, v13

    :goto_10d
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_119

    invoke-interface {v1, v5}, La6/p;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_119
    move-object v14, v5

    goto/16 :goto_19f

    :cond_11c
    invoke-static {v5}, Lz6/b$a;->s(Lc7/n;)Lf5/h;

    move-result-object v6

    if-eqz v6, :cond_147

    invoke-static {v11}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lp6/d;->o:Ljava/util/Map;

    check-cast v8, Ljava/util/EnumMap;

    invoke-virtual {v8, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp6/d;

    if-eqz v6, :cond_142

    invoke-virtual {v6}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, La6/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_19f

    :cond_142
    const/4 v0, 0x4

    invoke-static {v0}, Lp6/d;->a(I)V

    throw v14

    :cond_147
    invoke-static {v5}, Lz6/b$a;->V(Lc7/n;)Z

    move-result v6

    if-eqz v6, :cond_19f

    invoke-static {v5}, Lz6/b$a;->p(Lc7/n;)Lh6/d;

    move-result-object v5

    if-eqz v5, :cond_15a

    sget-object v6, Lh5/c;->a:Lh5/c;

    invoke-virtual {v6, v5}, Lh5/c;->h(Lh6/d;)Lh6/b;

    move-result-object v5

    goto :goto_15b

    :cond_15a
    move-object v5, v14

    :goto_15b
    if-eqz v5, :cond_19f

    iget-boolean v6, v2, La6/d0;->g:Z

    if-nez v6, :cond_18e

    sget-object v6, Lh5/c;->a:Lh5/c;

    sget-object v6, Lh5/c;->o:Ljava/util/List;

    instance-of v8, v6, Ljava/util/Collection;

    if-eqz v8, :cond_170

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_170

    goto :goto_18a

    :cond_170
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_174
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh5/c$a;

    iget-object v8, v8, Lh5/c$a;->a:Lh6/b;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_174

    move v6, v13

    goto :goto_18b

    :cond_18a
    :goto_18a
    move v6, v12

    :goto_18b
    if-eqz v6, :cond_18e

    goto :goto_19f

    :cond_18e
    invoke-static {v5}, Lp6/c;->b(Lh6/b;)Lp6/c;

    move-result-object v5

    invoke-virtual {v5}, Lp6/c;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "byClassId(classId).internalName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5}, La6/p;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    :cond_19f
    :goto_19f
    if-eqz v14, :cond_1b3

    iget-boolean v3, v2, La6/d0;->a:Z

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_1af

    invoke-interface {v1, v14}, La6/p;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    :cond_1af
    invoke-interface {v4, v0, v14, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v14

    :cond_1b3
    invoke-virtual/range {p0 .. p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v5

    instance-of v6, v5, Ly6/j0;

    if-eqz v6, :cond_1d0

    check-cast v5, Ly6/j0;

    iget-object v0, v5, Ly6/j0;->a:Ly6/l0;

    if-nez v0, :cond_1c7

    iget-object v0, v5, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v0}, La6/b0;->e(Ljava/util/Collection;)Ly6/l0;

    move-result-object v0

    :cond_1c7
    invoke-static {v0}, Ld7/c;->n(Ly6/l0;)Ly6/l0;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, La6/g;->b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1d0
    invoke-interface {v5}, Ly6/j1;->e()Li5/h;

    move-result-object v5

    if-eqz v5, :cond_342

    invoke-static {v5}, La7/j;->f(Li5/l;)Z

    move-result v6

    if-eqz v6, :cond_1e8

    const-string v2, "error/NonExistentClass"

    invoke-interface {v1, v2}, La6/p;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v5, Li5/e;

    invoke-interface {v3, v0, v5}, La6/b0;->b(Ly6/l0;Li5/e;)V

    return-object v1

    :cond_1e8
    instance-of v6, v5, Li5/e;

    if-eqz v6, :cond_26b

    invoke-static/range {p0 .. p0}, Lf5/g;->A(Ly6/l0;)Z

    move-result v8

    if-eqz v8, :cond_26b

    invoke-virtual/range {p0 .. p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v13, :cond_263

    invoke-virtual/range {p0 .. p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/q1;

    invoke-interface {v0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v5

    const-string v6, "memberProjection.type"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v6

    sget-object v7, Ly6/e2;->d:Ly6/e2;

    if-ne v6, v7, :cond_21e

    const-string v0, "java/lang/Object"

    invoke-interface {v1, v0}, La6/p;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_24f

    :cond_21e
    invoke-interface {v0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v0

    const-string v6, "memberProjection.projectionKind"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "effectiveVariance"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v6, v2, La6/d0;->c:Z

    if-eqz v6, :cond_234

    goto :goto_24a

    :cond_234
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_246

    if-eq v0, v13, :cond_241

    iget-object v0, v2, La6/d0;->f:La6/d0;

    if-nez v0, :cond_24b

    goto :goto_24a

    :cond_241
    iget-object v0, v2, La6/d0;->h:La6/d0;

    if-nez v0, :cond_24b

    goto :goto_24a

    :cond_246
    iget-object v0, v2, La6/d0;->i:La6/d0;

    if-nez v0, :cond_24b

    :goto_24a
    move-object v0, v2

    :cond_24b
    invoke-static {v5, v1, v0, v3, v4}, La6/g;->b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    :goto_24f
    invoke-static {v11}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v0}, La6/p;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, La6/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26b
    if-eqz v6, :cond_2fd

    invoke-static {v5}, Lk6/k;->b(Li5/l;)Z

    move-result v6

    if-eqz v6, :cond_2b0

    iget-boolean v6, v2, La6/d0;->b:Z

    if-nez v6, :cond_2b0

    sget-object v6, Lz6/p;->a:Lz6/p;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "inlineClassType"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {v6, v0, v7}, Ly6/d0;->a(Ly6/y1;Lc7/i;Ljava/util/HashSet;)Lc7/i;

    move-result-object v6

    check-cast v6, Ly6/l0;

    if-eqz v6, :cond_2b0

    new-instance v0, La6/d0;

    iget-boolean v8, v2, La6/d0;->a:Z

    iget-boolean v10, v2, La6/d0;->c:Z

    iget-boolean v11, v2, La6/d0;->d:Z

    iget-boolean v12, v2, La6/d0;->e:Z

    iget-object v13, v2, La6/d0;->f:La6/d0;

    iget-boolean v14, v2, La6/d0;->g:Z

    iget-object v15, v2, La6/d0;->h:La6/d0;

    iget-object v2, v2, La6/d0;->i:La6/d0;

    const/4 v9, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x200

    move-object v7, v0

    move-object/from16 v16, v2

    invoke-direct/range {v7 .. v18}, La6/d0;-><init>(ZZZZZLa6/d0;ZLa6/d0;La6/d0;ZI)V

    invoke-static {v6, v1, v0, v3, v4}, La6/g;->b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2b0
    iget-boolean v6, v2, La6/d0;->c:Z

    if-eqz v6, :cond_2c2

    move-object v6, v5

    check-cast v6, Li5/e;

    invoke-static {v6}, Lf5/g;->F(Li5/e;)Z

    move-result v6

    if-eqz v6, :cond_2c2

    invoke-interface/range {p1 .. p1}, La6/p;->f()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2f9

    :cond_2c2
    check-cast v5, Li5/e;

    invoke-interface {v5}, Li5/e;->a()Li5/e;

    move-result-object v6

    const-string v7, "descriptor.original"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6}, La6/b0;->c(Li5/e;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2f8

    invoke-interface {v5}, Li5/e;->f()Li5/f;

    move-result-object v6

    sget-object v7, Li5/f;->d:Li5/f;

    if-ne v6, v7, :cond_2e6

    invoke-interface {v5}, Li5/e;->b()Li5/l;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Li5/e;

    :cond_2e6
    invoke-interface {v5}, Li5/e;->a()Li5/e;

    move-result-object v5

    const-string v6, "enumClassIfEnumEntry.original"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, La6/g;->a(Li5/e;La6/b0;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, La6/p;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2f9

    :cond_2f8
    move-object v1, v6

    :goto_2f9
    invoke-interface {v4, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2fd
    instance-of v6, v5, Li5/a1;

    if-eqz v6, :cond_318

    check-cast v5, Li5/a1;

    invoke-static {v5}, Ld7/c;->g(Li5/a1;)Ly6/l0;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ly6/l0;->G0()Z

    move-result v0

    if-eqz v0, :cond_311

    invoke-static {v4}, Ld7/c;->l(Ly6/l0;)Ly6/l0;

    move-result-object v4

    :cond_311
    sget-object v0, Li7/c;->b:Lkotlin/jvm/functions/Function3;

    invoke-static {v4, v1, v2, v3, v0}, La6/g;->b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_318
    instance-of v6, v5, Li5/z0;

    if-eqz v6, :cond_32b

    iget-boolean v6, v2, La6/d0;->j:Z

    if-eqz v6, :cond_32b

    check-cast v5, Li5/z0;

    invoke-interface {v5}, Li5/z0;->D()Ly6/s0;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, La6/g;->b(Ly6/l0;La6/p;La6/d0;La6/b0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_32b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_342
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no descriptor for type constructor of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
