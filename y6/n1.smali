.class public final Ly6/n1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/n1$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeParameterUpperBoundEraser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeParameterUpperBoundEraser.kt\norg/jetbrains/kotlin/types/TypeParameterUpperBoundEraser\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,158:1\n1179#2,2:159\n1253#2,4:161\n1549#2:166\n1620#2,3:167\n1#3:165\n*S KotlinDebug\n*F\n+ 1 TypeParameterUpperBoundEraser.kt\norg/jetbrains/kotlin/types/TypeParameterUpperBoundEraser\n*L\n77#1:159,2\n77#1:161,4\n100#1:166\n100#1:167,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ly6/b0;

.field public final b:Ly6/m1;

.field public final c:Lh4/f;

.field public final d:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Ly6/n1$a;",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly6/b0;Ly6/m1;I)V
    .registers 4

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_b

    new-instance p2, Ly6/m1;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Ly6/m1;-><init>(ZZ)V

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    const-string p3, "projectionComputer"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "options"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/n1;->a:Ly6/b0;

    iput-object p2, p0, Ly6/n1;->b:Ly6/m1;

    new-instance p1, Lx6/e;

    const-string p2, "Type parameter upper bound erasure results"

    invoke-direct {p1, p2}, Lx6/e;-><init>(Ljava/lang/String;)V

    new-instance p2, Ly6/o1;

    invoke-direct {p2, p0}, Ly6/o1;-><init>(Ly6/n1;)V

    invoke-static {p2}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Ly6/n1;->c:Lh4/f;

    new-instance p2, Ly6/p1;

    invoke-direct {p2, p0}, Ly6/p1;-><init>(Ly6/n1;)V

    invoke-virtual {p1, p2}, Lx6/e;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p1

    const-string p2, "storage.createMemoizedFu…ameter, typeAttr) }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly6/n1;->d:Lx6/g;

    return-void
.end method


# virtual methods
.method public final a(Ly6/c0;)Ly6/l0;
    .registers 2

    invoke-virtual {p1}, Ly6/c0;->a()Ly6/s0;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-static {p1}, Ld7/c;->n(Ly6/l0;)Ly6/l0;

    move-result-object p1

    if-nez p1, :cond_15

    :cond_c
    iget-object p0, p0, Ly6/n1;->c:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, La7/g;

    :cond_15
    return-object p1
.end method

.method public final b(Li5/a1;Ly6/c0;)Ly6/l0;
    .registers 4

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/n1;->d:Lx6/g;

    new-instance v0, Ly6/n1$a;

    invoke-direct {v0, p1, p2}, Ly6/n1$a;-><init>(Li5/a1;Ly6/c0;)V

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, v0}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getErasedUpperBound(Data…typeParameter, typeAttr))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly6/l0;

    return-object p0
.end method

.method public final c(Ly6/x1;Ljava/util/List;Ly6/c0;)Ljava/util/Set;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/x1;",
            "Ljava/util/List<",
            "+",
            "Ly6/l0;",
            ">;",
            "Ly6/c0;",
            ")",
            "Ljava/util/Set<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Lj4/i;

    new-instance v4, Lj4/c;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lj4/c;-><init>(I)V

    invoke-direct {v3, v4}, Lj4/i;-><init>(Lj4/c;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_227

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/l0;

    invoke-virtual {v4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v5

    invoke-interface {v5}, Ly6/j1;->e()Li5/h;

    move-result-object v5

    instance-of v6, v5, Li5/e;

    if-eqz v6, :cond_1f2

    invoke-virtual/range {p3 .. p3}, Ly6/c0;->c()Ljava/util/Set;

    move-result-object v2

    iget-object v5, v0, Ly6/n1;->b:Ly6/m1;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "substitutor"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v5

    instance-of v6, v5, Ly6/e0;

    const-string v9, "argument.type"

    const-string v10, "constructor.parameters"

    const/16 v13, 0xa

    if-eqz v6, :cond_154

    move-object v6, v5

    check-cast v6, Ly6/e0;

    iget-object v14, v6, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v14}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v15

    invoke-interface {v15}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_d0

    invoke-virtual {v14}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v15

    invoke-interface {v15}, Ly6/j1;->e()Li5/h;

    move-result-object v15

    if-nez v15, :cond_6d

    goto :goto_d0

    :cond_6d
    invoke-virtual {v14}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v15

    invoke-interface {v15}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v15

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v15, v13}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_85
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ca

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Li5/a1;

    invoke-virtual {v4}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v13

    invoke-interface {v15}, Li5/a1;->getIndex()I

    move-result v11

    invoke-static {v13, v11}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly6/q1;

    if-eqz v2, :cond_a9

    invoke-interface {v2, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v13, 0x0

    :goto_aa
    if-eqz v11, :cond_bf

    if-nez v13, :cond_bf

    invoke-virtual/range {p1 .. p1}, Ly6/x1;->g()Ly6/t1;

    move-result-object v13

    invoke-interface {v11}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ly6/t1;->e(Ly6/l0;)Ly6/q1;

    move-result-object v12

    if-nez v12, :cond_c4

    :cond_bf
    new-instance v11, Ly6/y0;

    invoke-direct {v11, v15}, Ly6/y0;-><init>(Li5/a1;)V

    :cond_c4
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v13, 0xa

    goto :goto_85

    :cond_ca
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v14, v8, v12, v11}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object v14

    :cond_d0
    :goto_d0
    iget-object v6, v6, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {v6}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    invoke-interface {v7}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14e

    invoke-virtual {v6}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    invoke-interface {v7}, Ly6/j1;->e()Li5/h;

    move-result-object v7

    if-nez v7, :cond_eb

    goto :goto_14e

    :cond_eb
    invoke-virtual {v6}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    invoke-interface {v7}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_105
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_148

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/a1;

    invoke-virtual {v4}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10}, Li5/a1;->getIndex()I

    move-result v12

    invoke-static {v11, v12}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly6/q1;

    if-eqz v2, :cond_129

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_129

    const/4 v12, 0x1

    goto :goto_12a

    :cond_129
    const/4 v12, 0x0

    :goto_12a
    if-eqz v11, :cond_13f

    if-nez v12, :cond_13f

    invoke-virtual/range {p1 .. p1}, Ly6/x1;->g()Ly6/t1;

    move-result-object v12

    invoke-interface {v11}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ly6/t1;->e(Ly6/l0;)Ly6/q1;

    move-result-object v12

    if-nez v12, :cond_144

    :cond_13f
    new-instance v11, Ly6/y0;

    invoke-direct {v11, v10}, Ly6/y0;-><init>(Li5/a1;)V

    :cond_144
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_105

    :cond_148
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v6, v8, v11, v10}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object v6

    :cond_14e
    :goto_14e
    invoke-static {v14, v6}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object v2

    goto/16 :goto_1d9

    :cond_154
    instance-of v6, v5, Ly6/s0;

    if-eqz v6, :cond_1ec

    move-object v6, v5

    check-cast v6, Ly6/s0;

    invoke-virtual {v6}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    invoke-interface {v7}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1d8

    invoke-virtual {v6}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    invoke-interface {v7}, Ly6/j1;->e()Li5/h;

    move-result-object v7

    if-nez v7, :cond_174

    goto :goto_1d8

    :cond_174
    invoke-virtual {v6}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    invoke-interface {v7}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/a1;

    invoke-virtual {v4}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10}, Li5/a1;->getIndex()I

    move-result v12

    invoke-static {v11, v12}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly6/q1;

    if-eqz v2, :cond_1b2

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b2

    const/4 v12, 0x1

    goto :goto_1b3

    :cond_1b2
    const/4 v12, 0x0

    :goto_1b3
    if-eqz v11, :cond_1c8

    if-nez v12, :cond_1c8

    invoke-virtual/range {p1 .. p1}, Ly6/x1;->g()Ly6/t1;

    move-result-object v12

    invoke-interface {v11}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ly6/t1;->e(Ly6/l0;)Ly6/q1;

    move-result-object v12

    if-nez v12, :cond_1cd

    :cond_1c8
    new-instance v11, Ly6/y0;

    invoke-direct {v11, v10}, Ly6/y0;-><init>(Li5/a1;)V

    :cond_1cd
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18e

    :cond_1d1
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v6, v8, v11, v10}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object v2

    goto :goto_1d9

    :cond_1d8
    :goto_1d8
    move-object v2, v6

    :goto_1d9
    invoke-static {v2, v5}, Ly6/c2;->c(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object v2

    sget-object v4, Ly6/e2;->e:Ly6/e2;

    invoke-virtual {v1, v2, v4}, Ly6/x1;->i(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v1

    const-string v2, "substitutor.safeSubstitu…s, Variance.OUT_VARIANCE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lj4/i;->add(Ljava/lang/Object;)Z

    goto :goto_222

    :cond_1ec
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0

    :cond_1f2
    instance-of v4, v5, Li5/a1;

    if-eqz v4, :cond_222

    invoke-virtual/range {p3 .. p3}, Ly6/c0;->c()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_205

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_205

    move v7, v6

    goto :goto_206

    :cond_205
    const/4 v7, 0x0

    :goto_206
    if-eqz v7, :cond_210

    invoke-virtual {v0, v2}, Ly6/n1;->a(Ly6/c0;)Ly6/l0;

    move-result-object v1

    invoke-virtual {v3, v1}, Lj4/i;->add(Ljava/lang/Object;)Z

    goto :goto_222

    :cond_210
    check-cast v5, Li5/a1;

    invoke-interface {v5}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    const-string v5, "declaration.upperBounds"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v2}, Ly6/n1;->c(Ly6/x1;Ljava/util/List;Ly6/c0;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v3, v1}, Lj4/i;->addAll(Ljava/util/Collection;)Z

    :cond_222
    :goto_222
    iget-object v0, v0, Ly6/n1;->b:Ly6/m1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_227
    invoke-static {v3}, Ly0/b;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
