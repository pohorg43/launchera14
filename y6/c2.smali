.class public Ly6/c2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeWithEnhancement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeWithEnhancement.kt\norg/jetbrains/kotlin/types/TypeWithEnhancementKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1549#2:170\n1620#2,3:171\n1726#2,3:174\n*S KotlinDebug\n*F\n+ 1 TypeWithEnhancement.kt\norg/jetbrains/kotlin/types/TypeWithEnhancementKt\n*L\n97#1:170\n97#1:171,3\n112#1:174,3\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic a(I)V
    .registers 8

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v2, 0x2

    if-eq p0, v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_4c

    :pswitch_16  #0x5
    const-string v6, "typeParameters"

    aput-object v6, v3, v5

    goto :goto_2c

    :pswitch_1b  #0x4
    aput-object v4, v3, v5

    goto :goto_2c

    :pswitch_1e  #0x3, 0x8
    const-string v6, "result"

    aput-object v6, v3, v5

    goto :goto_2c

    :pswitch_23  #0x2, 0x7
    const-string v6, "newContainingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2c

    :pswitch_28  #0x1, 0x6
    const-string v6, "originalSubstitution"

    aput-object v6, v3, v5

    :goto_2c
    const-string v5, "substituteTypeParameters"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_34

    aput-object v4, v3, v6

    goto :goto_36

    :cond_34
    aput-object v5, v3, v6

    :goto_36
    if-eq p0, v0, :cond_3a

    aput-object v5, v3, v2

    :cond_3a
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_46

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4b
    throw p0

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_28  #00000001
        :pswitch_23  #00000002
        :pswitch_1e  #00000003
        :pswitch_1b  #00000004
        :pswitch_16  #00000005
        :pswitch_28  #00000006
        :pswitch_23  #00000007
        :pswitch_1e  #00000008
    .end packed-switch
.end method

.method public static final b(Ly6/l0;)Ly6/l0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ly6/b2;

    if-eqz v0, :cond_10

    check-cast p0, Ly6/b2;

    invoke-interface {p0}, Ly6/b2;->d0()Ly6/l0;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final c(Ly6/d2;Ly6/l0;)Ly6/d2;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly6/c2;->b(Ly6/l0;)Ly6/l0;

    move-result-object p1

    invoke-static {p0, p1}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;Ly6/t1;Li5/l;Ljava/util/List;)Ly6/x1;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;",
            "Ly6/t1;",
            "Li5/l;",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;)",
            "Ly6/x1;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_16

    invoke-static {p0, p1, p2, p3, v0}, Ly6/c2;->e(Ljava/util/List;Ly6/t1;Li5/l;Ljava/util/List;[Z)Ly6/x1;

    move-result-object p0

    if-eqz p0, :cond_e

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Substitution failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_16
    const/4 p0, 0x3

    invoke-static {p0}, Ly6/c2;->a(I)V

    throw v0

    :cond_1b
    const/4 p0, 0x2

    invoke-static {p0}, Ly6/c2;->a(I)V

    throw v0

    :cond_20
    const/4 p0, 0x1

    invoke-static {p0}, Ly6/c2;->a(I)V

    throw v0
.end method

.method public static e(Ljava/util/List;Ly6/t1;Li5/l;Ljava/util/List;[Z)Ly6/x1;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;",
            "Ly6/t1;",
            "Li5/l;",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;[Z)",
            "Ly6/x1;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz p0, :cond_f2

    const/4 v3, 0x6

    if-eqz v0, :cond_ee

    if-eqz p2, :cond_e9

    if-eqz v1, :cond_e3

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    move v9, v15

    :goto_1e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Li5/a1;

    invoke-interface {v11}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v5

    invoke-interface {v11}, Li5/a1;->u()Z

    move-result v6

    invoke-interface {v11}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v7

    invoke-interface {v11}, Li5/l;->getName()Lh6/f;

    move-result-object v8

    add-int/lit8 v16, v9, 0x1

    sget-object v10, Li5/v0;->a:Li5/v0;

    invoke-interface {v11}, Li5/a1;->J()Lx6/m;

    move-result-object v17

    move-object/from16 v4, p2

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-static/range {v4 .. v11}, Ll5/n0;->H0(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILi5/v0;Lx6/m;)Ll5/n0;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Li5/a1;->h()Ly6/j1;

    move-result-object v5

    new-instance v6, Ly6/s1;

    invoke-virtual {v4}, Ll5/g;->m()Ly6/s0;

    move-result-object v7

    invoke-direct {v6, v7}, Ly6/s1;-><init>(Ly6/l0;)V

    invoke-virtual {v12, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v18

    invoke-virtual {v13, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v16

    goto :goto_1e

    :cond_68
    const-string v1, "map"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ly6/k1;

    invoke-direct {v1, v12, v15}, Ly6/k1;-><init>(Ljava/util/Map;Z)V

    invoke-static {v0, v1}, Ly6/x1;->f(Ly6/t1;Ly6/t1;)Ly6/x1;

    move-result-object v4

    new-instance v5, Ly6/u1;

    invoke-direct {v5, v0}, Ly6/u1;-><init>(Ly6/t1;)V

    invoke-static {v5, v1}, Ly6/x1;->f(Ly6/t1;Ly6/t1;)Ly6/x1;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_86
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/a1;

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll5/n0;

    invoke-interface {v5}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_dc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly6/l0;

    invoke-virtual {v7}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v9

    invoke-interface {v9}, Ly6/j1;->e()Li5/h;

    move-result-object v9

    instance-of v10, v9, Li5/a1;

    if-eqz v10, :cond_c8

    check-cast v9, Li5/a1;

    const-string v10, "typeParameter"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v2, v2, v3}, Ld7/c;->i(Li5/a1;Ly6/j1;Ljava/util/Set;I)Z

    move-result v9

    if-eqz v9, :cond_c8

    move-object v9, v4

    goto :goto_c9

    :cond_c8
    move-object v9, v0

    :goto_c9
    sget-object v10, Ly6/e2;->e:Ly6/e2;

    invoke-virtual {v9, v7, v10}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v9

    if-nez v9, :cond_d2

    return-object v2

    :cond_d2
    if-eq v9, v7, :cond_d8

    if-eqz p4, :cond_d8

    aput-boolean v8, p4, v15

    :cond_d8
    invoke-virtual {v6, v9}, Ll5/n0;->F0(Ly6/l0;)V

    goto :goto_a0

    :cond_dc
    invoke-virtual {v6}, Ll5/n0;->G0()V

    iput-boolean v8, v6, Ll5/n0;->m:Z

    goto :goto_86

    :cond_e2
    return-object v4

    :cond_e3
    const/16 v0, 0x8

    invoke-static {v0}, Ly6/c2;->a(I)V

    throw v2

    :cond_e9
    const/4 v0, 0x7

    invoke-static {v0}, Ly6/c2;->a(I)V

    throw v2

    :cond_ee
    invoke-static {v3}, Ly6/c2;->a(I)V

    throw v2

    :cond_f2
    const/4 v0, 0x5

    invoke-static {v0}, Ly6/c2;->a(I)V

    throw v2
.end method

.method public static final f(Ly6/d2;Ly6/l0;)Ly6/d2;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ly6/b2;

    if-eqz v0, :cond_14

    check-cast p0, Ly6/b2;

    invoke-interface {p0}, Ly6/b2;->z0()Ly6/d2;

    move-result-object p0

    invoke-static {p0, p1}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    return-object p0

    :cond_14
    if-eqz p1, :cond_3b

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3b

    :cond_1d
    instance-of v0, p0, Ly6/s0;

    if-eqz v0, :cond_29

    new-instance v0, Ly6/v0;

    check-cast p0, Ly6/s0;

    invoke-direct {v0, p0, p1}, Ly6/v0;-><init>(Ly6/s0;Ly6/l0;)V

    goto :goto_34

    :cond_29
    instance-of v0, p0, Ly6/e0;

    if-eqz v0, :cond_35

    new-instance v0, Ly6/g0;

    check-cast p0, Ly6/e0;

    invoke-direct {v0, p0, p1}, Ly6/g0;-><init>(Ly6/e0;Ly6/l0;)V

    :goto_34
    return-object v0

    :cond_35
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_3b
    :goto_3b
    return-object p0
.end method
