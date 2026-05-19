.class public final Ly6/b1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeAliasExpander.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAliasExpander.kt\norg/jetbrains/kotlin/types/TypeAliasExpander\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1#2:279\n1620#3,3:280\n1559#3:283\n1590#3,4:284\n1559#3:288\n1590#3,4:289\n1864#3,3:293\n*S KotlinDebug\n*F\n+ 1 TypeAliasExpander.kt\norg/jetbrains/kotlin/types/TypeAliasExpander\n*L\n148#1:280,3\n197#1:283\n197#1:284,4\n232#1:288\n232#1:289,4\n249#1:293,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ly6/d1;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ly6/b1;

    sget-object v1, Ly6/d1$a;->a:Ly6/d1$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly6/b1;-><init>(Ly6/d1;Z)V

    return-void
.end method

.method public constructor <init>(Ly6/d1;Z)V
    .registers 4

    const-string v0, "reportStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/b1;->a:Ly6/d1;

    iput-boolean p2, p0, Ly6/b1;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lj5/h;Lj5/h;)V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5/c;

    invoke-interface {v1}, Lj5/c;->e()Lh6/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj5/c;

    invoke-interface {p2}, Lj5/c;->e()Lh6/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Ly6/b1;->a:Ly6/d1;

    invoke-interface {v1, p2}, Ly6/d1;->d(Lj5/c;)V

    goto :goto_21

    :cond_3d
    return-void
.end method

.method public final b(Ly6/s0;Ly6/g1;)Ly6/s0;
    .registers 4

    invoke-static {p1}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_11

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Ly6/b1;->c(Ly6/l0;Ly6/g1;)Ly6/g1;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, v0, p0, p2}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method public final c(Ly6/l0;Ly6/g1;)Ly6/g1;
    .registers 7

    invoke-static {p1}, Ly0/b;->c(Ly6/l0;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p1}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "other"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lf7/a;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lf7/a;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_73

    :cond_24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    iget-object v0, v0, Lf7/v;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "idPerType.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p2, Lf7/e;->a:Lf7/c;

    invoke-virtual {v2, v1}, Lf7/c;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/e1;

    iget-object v3, p0, Lf7/e;->a:Lf7/c;

    invoke-virtual {v3, v1}, Lf7/c;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/e1;

    if-nez v2, :cond_65

    if-eqz v1, :cond_63

    invoke-virtual {v1, v2}, Ly6/e1;->a(Ly6/e1;)Ly6/e1;

    move-result-object v1

    goto :goto_69

    :cond_63
    const/4 v1, 0x0

    goto :goto_69

    :cond_65
    invoke-virtual {v2, v1}, Ly6/e1;->a(Ly6/e1;)Ly6/e1;

    move-result-object v1

    :goto_69
    invoke-static {p1, v1}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_3a

    :cond_6d
    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-virtual {p0, p1}, Ly6/g1$a;->c(Ljava/util/List;)Ly6/g1;

    move-result-object p2

    :goto_73
    return-object p2
.end method

.method public final d(Ly6/c1;Ly6/g1;ZIZ)Ly6/s0;
    .registers 9

    new-instance v0, Ly6/s1;

    sget-object v1, Ly6/e2;->c:Ly6/e2;

    iget-object v2, p1, Ly6/c1;->b:Li5/z0;

    invoke-interface {v2}, Li5/z0;->m0()Ly6/s0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p4}, Ly6/b1;->e(Ly6/q1;Ly6/c1;Li5/a1;I)Ly6/q1;

    move-result-object p4

    invoke-interface {p4}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v0

    const-string v1, "expandedProjection.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ly6/v1;->a(Ly6/l0;)Ly6/s0;

    move-result-object v0

    invoke-static {v0}, Ly0/b;->c(Ly6/l0;)Z

    move-result v1

    if-eqz v1, :cond_26

    return-object v0

    :cond_26
    invoke-interface {p4}, Ly6/q1;->c()Ly6/e2;

    invoke-virtual {v0}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object p4

    invoke-static {p2}, Ly6/p;->a(Ly6/g1;)Lj5/h;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Ly6/b1;->a(Lj5/h;Lj5/h;)V

    invoke-virtual {p0, v0, p2}, Ly6/b1;->b(Ly6/s0;Ly6/g1;)Ly6/s0;

    move-result-object p0

    invoke-static {p0, p3}, Ly6/a2;->l(Ly6/s0;Z)Ly6/s0;

    move-result-object p0

    const-string p4, "expandedType.combineAttr…fNeeded(it, isNullable) }"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_5a

    iget-object p4, p1, Ly6/c1;->b:Li5/z0;

    invoke-interface {p4}, Li5/h;->h()Ly6/j1;

    move-result-object p4

    const-string p5, "descriptor.typeConstructor"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ly6/c1;->c:Ljava/util/List;

    sget-object p5, Lr6/i$b;->b:Lr6/i$b;

    invoke-static {p2, p4, p1, p3, p5}, Ly6/m0;->i(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;)Ly6/s0;

    move-result-object p1

    invoke-static {p0, p1}, Ly6/w0;->e(Ly6/s0;Ly6/s0;)Ly6/s0;

    move-result-object p0

    :cond_5a
    return-object p0
.end method

.method public final e(Ly6/q1;Ly6/c1;Li5/a1;I)Ly6/q1;
    .registers 19

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    move/from16 v8, p4

    sget-object v1, Ly6/e2;->c:Ly6/e2;

    iget-object v2, v7, Ly6/c1;->b:Li5/z0;

    const/16 v3, 0x64

    if-gt v8, v3, :cond_29d

    invoke-interface {p1}, Ly6/q1;->b()Z

    move-result v2

    const-string v3, "makeStarProjection(typeParameterDescriptor!!)"

    if-eqz v2, :cond_22

    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Ly6/a2;->m(Li5/a1;)Ly6/q1;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_22
    invoke-interface {p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v2

    const-string v4, "underlyingProjection.type"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v4

    const-string v5, "constructor"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ly6/j1;->e()Li5/h;

    move-result-object v4

    instance-of v5, v4, Li5/a1;

    const/4 v9, 0x0

    if-eqz v5, :cond_46

    iget-object v5, v7, Ly6/c1;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/q1;

    goto :goto_47

    :cond_46
    move-object v4, v9

    :goto_47
    if-nez v4, :cond_1f9

    invoke-interface {p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v0

    invoke-virtual {v0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v0

    invoke-static {v0}, Ly6/a0;->a(Ly6/l0;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto/16 :goto_1f7

    :cond_59
    invoke-static {v0}, Ly6/v1;->a(Ly6/l0;)Ly6/s0;

    move-result-object v10

    invoke-static {v10}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    if-nez v0, :cond_1f7

    const-string v0, "<this>"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ld7/b;->a:Ld7/b;

    invoke-static {v10, v2}, Ld7/c;->b(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-nez v2, :cond_72

    goto/16 :goto_1f7

    :cond_72
    invoke-virtual {v10}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v2

    invoke-interface {v2}, Ly6/j1;->e()Li5/h;

    move-result-object v3

    invoke-interface {v2}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    invoke-virtual {v10}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    instance-of v4, v3, Li5/a1;

    if-eqz v4, :cond_8e

    goto/16 :goto_1f7

    :cond_8e
    instance-of v4, v3, Li5/z0;

    const/4 v5, 0x0

    if-eqz v4, :cond_172

    check-cast v3, Li5/z0;

    invoke-virtual {v7, v3}, Ly6/c1;->a(Li5/z0;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, v6, Ly6/b1;->a:Ly6/d1;

    invoke-interface {v0, v3}, Ly6/d1;->b(Li5/z0;)V

    new-instance v0, Ly6/s1;

    sget-object v2, La7/i;->s:La7/i;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3}, Li5/l;->getName()Lh6/f;

    move-result-object v3

    iget-object v3, v3, Lh6/f;->a:Ljava/lang/String;

    const-string v6, "typeDescriptor.name.toString()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v4, v5

    invoke-static {v2, v4}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto/16 :goto_1f8

    :cond_bd
    invoke-virtual {v10}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v5, 0x1

    if-ltz v5, :cond_f5

    check-cast v11, Ly6/q1;

    invoke-interface {v2}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/a1;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {p0, v11, v7, v5, v13}, Ly6/b1;->e(Ly6/q1;Ly6/c1;Li5/a1;I)Ly6/q1;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v12

    goto :goto_d0

    :cond_f5
    invoke-static {}, Li4/o;->k()V

    throw v9

    :cond_f9
    const-string v0, "typeAliasDescriptor"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v2, "typeAliasDescriptor.typeConstructor.parameters"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/a1;

    invoke-interface {v1}, Li5/a1;->a()Li5/a1;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11d

    :cond_131
    invoke-static {v2, v4}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v5

    new-instance v9, Ly6/c1;

    const/4 v11, 0x0

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ly6/c1;-><init>(Ly6/c1;Li5/z0;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v2

    invoke-virtual {v10}, Ly6/l0;->G0()Z

    move-result v3

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v5}, Ly6/b1;->d(Ly6/c1;Ly6/g1;ZIZ)Ly6/s0;

    move-result-object v0

    invoke-virtual {p0, v10, v7, v8}, Ly6/b1;->f(Ly6/s0;Ly6/c1;I)Ly6/s0;

    move-result-object v1

    invoke-static {v0}, Ly6/a0;->a(Ly6/l0;)Z

    move-result v2

    if-eqz v2, :cond_162

    goto :goto_166

    :cond_162
    invoke-static {v0, v1}, Ly6/w0;->e(Ly6/s0;Ly6/s0;)Ly6/s0;

    move-result-object v0

    :goto_166
    new-instance v1, Ly6/s1;

    invoke-interface {p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    move-object v0, v1

    goto/16 :goto_1f8

    :cond_172
    invoke-virtual {p0, v10, v7, v8}, Ly6/b1;->f(Ly6/s0;Ly6/c1;I)Ly6/s0;

    move-result-object v1

    invoke-static {v1}, Ly6/x1;->d(Ly6/l0;)Ly6/x1;

    move-result-object v2

    const-string v3, "create(substitutedType)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_187
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ed

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_1e9

    check-cast v4, Ly6/q1;

    invoke-interface {v4}, Ly6/q1;->b()Z

    move-result v8

    if-nez v8, :cond_1e7

    invoke-interface {v4}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v8

    const-string v11, "substitutedArgument.type"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ld7/a;->a:Ld7/a;

    invoke-static {v8, v12}, Ld7/c;->b(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z

    move-result v8

    if-nez v8, :cond_1e7

    invoke-virtual {v10}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly6/q1;

    invoke-virtual {v10}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v12

    invoke-interface {v12}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/a1;

    iget-boolean v12, v6, Ly6/b1;->b:Z

    if-eqz v12, :cond_1e7

    iget-object v12, v6, Ly6/b1;->a:Ly6/d1;

    invoke-interface {v8}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v8

    const-string v13, "unsubstitutedArgument.type"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "typeParameter"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v2, v8, v4, v5}, Ly6/d1;->a(Ly6/x1;Ly6/l0;Ly6/l0;Li5/a1;)V

    :cond_1e7
    move v5, v7

    goto :goto_187

    :cond_1e9
    invoke-static {}, Li4/o;->k()V

    throw v9

    :cond_1ed
    new-instance v0, Ly6/s1;

    invoke-interface {p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_1f8

    :cond_1f7
    :goto_1f7
    move-object v0, p1

    :goto_1f8
    return-object v0

    :cond_1f9
    invoke-interface {v4}, Ly6/q1;->b()Z

    move-result v5

    if-eqz v5, :cond_20a

    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Ly6/a2;->m(Li5/a1;)Ly6/q1;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_20a
    invoke-interface {v4}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v3

    invoke-virtual {v3}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v3

    invoke-interface {v4}, Ly6/q1;->c()Ly6/e2;

    move-result-object v4

    const-string v5, "argument.projectionKind"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v5

    const-string v8, "underlyingProjection.projectionKind"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v5, v4, :cond_227

    goto :goto_235

    :cond_227
    if-ne v5, v1, :cond_22a

    goto :goto_235

    :cond_22a
    if-ne v4, v1, :cond_22e

    move-object v4, v5

    goto :goto_235

    :cond_22e
    iget-object v5, v6, Ly6/b1;->a:Ly6/d1;

    iget-object v8, v7, Ly6/c1;->b:Li5/z0;

    invoke-interface {v5, v8, v0, v3}, Ly6/d1;->c(Li5/z0;Li5/a1;Ly6/l0;)V

    :goto_235
    if-eqz v0, :cond_23d

    invoke-interface/range {p3 .. p3}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v5

    if-nez v5, :cond_23e

    :cond_23d
    move-object v5, v1

    :cond_23e
    const-string v8, "typeParameterDescriptor?…nce ?: Variance.INVARIANT"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v5, v4, :cond_246

    goto :goto_253

    :cond_246
    if-ne v5, v1, :cond_249

    goto :goto_253

    :cond_249
    if-ne v4, v1, :cond_24c

    goto :goto_254

    :cond_24c
    iget-object v1, v6, Ly6/b1;->a:Ly6/d1;

    iget-object v5, v7, Ly6/c1;->b:Li5/z0;

    invoke-interface {v1, v5, v0, v3}, Ly6/d1;->c(Li5/z0;Li5/a1;Ly6/l0;)V

    :goto_253
    move-object v1, v4

    :goto_254
    invoke-virtual {v2}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v0

    invoke-virtual {v3}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ly6/b1;->a(Lj5/h;Lj5/h;)V

    instance-of v0, v3, Ly6/z;

    if-eqz v0, :cond_27e

    check-cast v3, Ly6/z;

    invoke-virtual {v2}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Ly6/b1;->c(Ly6/l0;Ly6/g1;)Ly6/g1;

    move-result-object v0

    const-string v2, "newAttributes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ly6/z;

    iget-object v3, v3, Ly6/e0;->c:Ly6/s0;

    invoke-static {v3}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ly6/z;-><init>(Lf5/g;Ly6/g1;)V

    goto :goto_297

    :cond_27e
    invoke-static {v3}, Ly6/v1;->a(Ly6/l0;)Ly6/s0;

    move-result-object v0

    invoke-virtual {v2}, Ly6/l0;->G0()Z

    move-result v3

    invoke-static {v0, v3}, Ly6/a2;->l(Ly6/s0;Z)Ly6/s0;

    move-result-object v0

    const-string v3, "makeNullableIfNeeded(thi…romType.isMarkedNullable)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ly6/b1;->b(Ly6/s0;Ly6/g1;)Ly6/s0;

    move-result-object v2

    :goto_297
    new-instance v0, Ly6/s1;

    invoke-direct {v0, v1, v2}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object v0

    :cond_29d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Too deep recursion while expanding type alias "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final f(Ly6/s0;Ly6/c1;I)Ly6/s0;
    .registers 12

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-virtual {p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_5f

    check-cast v4, Ly6/q1;

    invoke-interface {v0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/a1;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v4, p2, v3, v5}, Ly6/b1;->e(Ly6/q1;Ly6/c1;Li5/a1;I)Ly6/q1;

    move-result-object v3

    invoke-interface {v3}, Ly6/q1;->b()Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_5a

    :cond_40
    new-instance v5, Ly6/s1;

    invoke-interface {v3}, Ly6/q1;->c()Ly6/e2;

    move-result-object v7

    invoke-interface {v3}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v3

    invoke-interface {v4}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v4

    invoke-virtual {v4}, Ly6/l0;->G0()Z

    move-result v4

    invoke-static {v3, v4}, Ly6/a2;->k(Ly6/l0;Z)Ly6/l0;

    move-result-object v3

    invoke-direct {v5, v7, v3}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    move-object v3, v5

    :goto_5a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_18

    :cond_5f
    invoke-static {}, Li4/o;->k()V

    throw v5

    :cond_63
    const/4 p0, 0x2

    invoke-static {p1, v2, v5, p0}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object p0

    return-object p0
.end method
