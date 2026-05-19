.class public final Lt5/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nutil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 util.kt\norg/jetbrains/kotlin/load/java/descriptors/UtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1549#2:69\n1620#2,3:70\n*S KotlinDebug\n*F\n+ 1 util.kt\norg/jetbrains/kotlin/load/java/descriptors/UtilKt\n*L\n40#1:69\n40#1:70,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/Collection;Ljava/util/Collection;Li5/a;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ly6/l0;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Li5/e1;",
            ">;",
            "Li5/a;",
            ")",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation

    const-string v0, "newValueParameterTypes"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldValueParameters"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newOwner"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    invoke-static/range {p0 .. p1}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v14, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    iget-object v2, v1, Lh4/j;->a:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ly6/l0;

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Li5/e1;

    new-instance v15, Ll5/o0;

    const/4 v3, 0x0

    invoke-interface {v1}, Li5/e1;->getIndex()I

    move-result v4

    invoke-interface {v1}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v5

    invoke-interface {v1}, Li5/l;->getName()Lh6/f;

    move-result-object v6

    const-string v2, "oldParameter.name"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Li5/e1;->t0()Z

    move-result v8

    invoke-interface {v1}, Li5/e1;->k0()Z

    move-result v9

    invoke-interface {v1}, Li5/e1;->j0()Z

    move-result v10

    invoke-interface {v1}, Li5/e1;->n0()Ly6/l0;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-static/range {p2 .. p2}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object v2

    invoke-interface {v2}, Li5/e0;->k()Lf5/g;

    move-result-object v2

    invoke-virtual {v2, v7}, Lf5/g;->g(Ly6/l0;)Ly6/l0;

    move-result-object v2

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    move-object v11, v2

    invoke-interface {v1}, Li5/o;->getSource()Li5/v0;

    move-result-object v12

    const-string v1, "oldParameter.source"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_8d
    return-object v14
.end method

.method public static final b(Li5/e;)Lv5/r;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lo6/c;->a:I

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/l0;

    invoke-static {v0}, Lf5/g;->z(Ly6/l0;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    invoke-static {v0}, Lk6/i;->o(Li5/l;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Li5/e;

    goto :goto_44

    :cond_43
    move-object v0, v1

    :goto_44
    if-nez v0, :cond_47

    return-object v1

    :cond_47
    invoke-interface {v0}, Li5/e;->g0()Lr6/i;

    move-result-object p0

    instance-of v2, p0, Lv5/r;

    if-eqz v2, :cond_52

    move-object v1, p0

    check-cast v1, Lv5/r;

    :cond_52
    if-nez v1, :cond_58

    invoke-static {v0}, Lt5/h;->b(Li5/e;)Lv5/r;

    move-result-object v1

    :cond_58
    return-object v1
.end method
