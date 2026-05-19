.class public final Lz5/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz5/f$a;,
        Lz5/f$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ntypeEnhancement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 typeEnhancement.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/JavaTypeEnhancement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n1#2:263\n3433#3,7:264\n1726#3,3:271\n3433#3,7:274\n*S KotlinDebug\n*F\n+ 1 typeEnhancement.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/JavaTypeEnhancement\n*L\n117#1:264,7\n143#1:271,3\n155#1:274,7\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lu5/d;


# direct methods
.method public constructor <init>(Lu5/d;)V
    .registers 3

    const-string v0, "javaResolverSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/f;->a:Lu5/d;

    return-void
.end method


# virtual methods
.method public final a(Ly6/s0;Lkotlin/jvm/functions/Function1;ILz5/u;ZZ)Lz5/f$b;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/s0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lz5/g;",
            ">;I",
            "Lz5/u;",
            "ZZ)",
            "Lz5/f$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-static/range {p4 .. p4}, Lz5/v;->a(Lz5/u;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_15

    if-nez p5, :cond_13

    goto :goto_15

    :cond_13
    move v7, v5

    goto :goto_16

    :cond_15
    :goto_15
    move v7, v6

    :goto_16
    const/4 v8, 0x0

    if-nez v4, :cond_29

    invoke-virtual/range {p1 .. p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_29

    new-instance v0, Lz5/f$b;

    invoke-direct {v0, v8, v6, v5}, Lz5/f$b;-><init>(Ly6/s0;IZ)V

    return-object v0

    :cond_29
    invoke-virtual/range {p1 .. p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v4

    invoke-interface {v4}, Ly6/j1;->e()Li5/h;

    move-result-object v4

    if-nez v4, :cond_39

    new-instance v0, Lz5/f$b;

    invoke-direct {v0, v8, v6, v5}, Lz5/f$b;-><init>(Ly6/s0;IZ)V

    return-object v0

    :cond_39
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz5/g;

    sget-object v10, Lz5/x;->a:Lj5/h;

    invoke-static/range {p4 .. p4}, Lz5/v;->a(Lz5/u;)Z

    move-result v10

    if-nez v10, :cond_4d

    goto/16 :goto_10d

    :cond_4d
    instance-of v10, v4, Li5/e;

    if-nez v10, :cond_53

    goto/16 :goto_10d

    :cond_53
    iget-object v10, v9, Lz5/g;->b:Lz5/h;

    sget-object v11, Lz5/h;->a:Lz5/h;

    const-string v12, "descriptor.builtIns.getB…Name(oppositeClassFqName)"

    const-string v13, " collection"

    const-string v14, " is not a "

    const-string v15, "Given class "

    if-ne v10, v11, :cond_b5

    sget-object v10, Lz5/u;->a:Lz5/u;

    if-ne v2, v10, :cond_b5

    move-object v10, v4

    check-cast v10, Li5/e;

    const-string v11, "mutable"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lh5/c;->a:Lh5/c;

    invoke-static {v10}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v5

    sget-object v8, Lh5/c;->k:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh6/c;

    if-eqz v4, :cond_97

    invoke-static {v10}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v5

    invoke-virtual {v5, v4}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_10e

    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b5
    iget-object v5, v9, Lz5/g;->b:Lz5/h;

    sget-object v8, Lz5/h;->b:Lz5/h;

    if-ne v5, v8, :cond_10d

    sget-object v5, Lz5/u;->b:Lz5/u;

    if-ne v2, v5, :cond_10d

    check-cast v4, Li5/e;

    const-string v5, "readOnly"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lh5/c;->a:Lh5/c;

    invoke-static {v4}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v10

    sget-object v11, Lh5/c;->l:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10d

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v5

    invoke-virtual {v8, v5}, Lh5/c;->i(Lh6/d;)Lh6/c;

    move-result-object v5

    if-eqz v5, :cond_ed

    invoke-static {v4}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v4

    invoke-virtual {v4, v5}, Lf5/g;->j(Lh6/c;)Li5/e;

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10e

    :cond_ed
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10d
    :goto_10d
    const/4 v4, 0x0

    :goto_10e
    invoke-static/range {p4 .. p4}, Lz5/v;->a(Lz5/u;)Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_116

    goto :goto_128

    :cond_116
    iget-object v2, v9, Lz5/g;->a:Lz5/j;

    if-nez v2, :cond_11c

    const/4 v2, -0x1

    goto :goto_124

    :cond_11c
    sget-object v8, Lz5/x$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v8, v2

    :goto_124
    if-eq v2, v6, :cond_12d

    if-eq v2, v5, :cond_12a

    :goto_128
    const/4 v2, 0x0

    goto :goto_12f

    :cond_12a
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12f

    :cond_12d
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_12f
    if-eqz v4, :cond_137

    invoke-interface {v4}, Li5/h;->h()Ly6/j1;

    move-result-object v8

    if-nez v8, :cond_13b

    :cond_137
    invoke-virtual/range {p1 .. p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v8

    :cond_13b
    move-object v11, v8

    const-string v8, "enhancedClassifier?.typeConstructor ?: constructor"

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v8, p3, 0x1

    invoke-virtual/range {p1 .. p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v11}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v12

    const-string v13, "typeConstructor.parameters"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v10, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-static {v12, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_16b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_227

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_227

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li5/a1;

    check-cast v10, Ly6/q1;

    if-nez v7, :cond_18f

    new-instance v5, Lz5/f$a;

    move/from16 v17, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Lz5/f$a;-><init>(Ly6/l0;I)V

    goto :goto_1e1

    :cond_18f
    move/from16 v17, v7

    invoke-interface {v10}, Ly6/q1;->b()Z

    move-result v5

    if-nez v5, :cond_1a4

    invoke-interface {v10}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v5

    invoke-virtual {v5}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v5

    invoke-virtual {v0, v5, v1, v8, v3}, Lz5/f;->b(Ly6/d2;Lkotlin/jvm/functions/Function1;IZ)Lz5/f$a;

    move-result-object v5

    goto :goto_1e1

    :cond_1a4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz5/g;

    iget-object v5, v5, Lz5/g;->a:Lz5/j;

    sget-object v6, Lz5/j;->a:Lz5/j;

    if-ne v5, v6, :cond_1d9

    invoke-interface {v10}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v5

    invoke-virtual {v5}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v5

    new-instance v6, Lz5/f$a;

    invoke-static {v5}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object v7

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v7

    invoke-static {v5}, Ly6/h0;->d(Ly6/l0;)Ly6/s0;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v1

    invoke-static {v7, v1}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object v1

    invoke-direct {v6, v1, v5}, Lz5/f$a;-><init>(Ly6/l0;I)V

    move-object v5, v6

    goto :goto_1e1

    :cond_1d9
    const/4 v5, 0x1

    new-instance v1, Lz5/f$a;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v5}, Lz5/f$a;-><init>(Ly6/l0;I)V

    move-object v5, v1

    :goto_1e1
    iget v1, v5, Lz5/f$a;->b:I

    add-int/2addr v8, v1

    iget-object v1, v5, Lz5/f$a;->a:Ly6/l0;

    const-string v5, "arg.projectionKind"

    if-eqz v1, :cond_1f6

    invoke-interface {v10}, Ly6/q1;->c()Ly6/e2;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6, v12}, Ld7/c;->d(Ly6/l0;Ly6/e2;Li5/a1;)Ly6/q1;

    move-result-object v7

    goto :goto_21b

    :cond_1f6
    if-eqz v4, :cond_213

    invoke-interface {v10}, Ly6/q1;->b()Z

    move-result v1

    if-nez v1, :cond_213

    invoke-interface {v10}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v1

    const-string v6, "arg.type"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ly6/q1;->c()Ly6/e2;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6, v12}, Ld7/c;->d(Ly6/l0;Ly6/e2;Li5/a1;)Ly6/q1;

    move-result-object v7

    goto :goto_21b

    :cond_213
    if-eqz v4, :cond_21a

    invoke-static {v12}, Ly6/a2;->m(Li5/a1;)Ly6/q1;

    move-result-object v7

    goto :goto_21b

    :cond_21a
    const/4 v7, 0x0

    :goto_21b
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move/from16 v7, v17

    const/16 v5, 0xa

    const/4 v6, 0x1

    goto/16 :goto_16b

    :cond_227
    sub-int v8, v8, p3

    if-nez v4, :cond_258

    if-nez v2, :cond_258

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_234

    goto :goto_24d

    :cond_234
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_238
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly6/q1;

    if-nez v3, :cond_248

    const/4 v3, 0x1

    goto :goto_249

    :cond_248
    const/4 v3, 0x0

    :goto_249
    if-nez v3, :cond_238

    const/4 v1, 0x0

    goto :goto_24e

    :cond_24d
    :goto_24d
    const/4 v1, 0x1

    :goto_24e
    if-eqz v1, :cond_258

    new-instance v0, Lz5/f$b;

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v7, v8, v1}, Lz5/f$b;-><init>(Ly6/s0;IZ)V

    return-object v0

    :cond_258
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Lj5/h;

    invoke-virtual/range {p1 .. p1}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v5

    aput-object v5, v3, v1

    sget-object v5, Lz5/x;->b:Lz5/e;

    if-eqz v4, :cond_269

    const/4 v4, 0x1

    goto :goto_26a

    :cond_269
    move v4, v1

    :goto_26a
    if-eqz v4, :cond_26d

    goto :goto_26e

    :cond_26d
    move-object v5, v7

    :goto_26e
    const/4 v4, 0x1

    aput-object v5, v3, v4

    sget-object v4, Lz5/x;->a:Lj5/h;

    if-eqz v2, :cond_277

    const/4 v5, 0x1

    goto :goto_278

    :cond_277
    move v5, v1

    :goto_278
    if-eqz v5, :cond_27b

    goto :goto_27c

    :cond_27b
    move-object v4, v7

    :goto_27c
    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "elements"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Li4/k;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_325

    const/4 v5, 0x1

    if-eq v4, v5, :cond_29e

    new-instance v4, Lj5/k;

    invoke-static {v3}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Lj5/k;-><init>(Ljava/util/List;)V

    goto :goto_2a5

    :cond_29e
    invoke-static {v3}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lj5/h;

    :goto_2a5
    invoke-static {v4}, Ly6/h1;->b(Lj5/h;)Ly6/g1;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v12, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v15, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v3, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2c8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e8

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly6/q1;

    check-cast v3, Ly6/q1;

    if-nez v3, :cond_2e3

    goto :goto_2e4

    :cond_2e3
    move-object v6, v3

    :goto_2e4
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c8

    :cond_2e8
    if-eqz v2, :cond_2ef

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2f3

    :cond_2ef
    invoke-virtual/range {p1 .. p1}, Ly6/l0;->G0()Z

    move-result v3

    :goto_2f3
    move v13, v3

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static/range {v10 .. v15}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object v3

    iget-boolean v4, v9, Lz5/g;->c:Z

    if-eqz v4, :cond_315

    iget-object v0, v0, Lz5/f;->a:Lu5/d;

    invoke-interface {v0}, Lu5/d;->a()Z

    move-result v0

    if-eqz v0, :cond_30d

    const/4 v0, 0x1

    invoke-static {v3, v0}, Ly6/w0;->d(Ly6/s0;Z)Ly6/s0;

    move-result-object v3

    goto :goto_316

    :cond_30d
    const/4 v0, 0x1

    new-instance v4, Lz5/i;

    invoke-direct {v4, v3}, Lz5/i;-><init>(Ly6/s0;)V

    move-object v3, v4

    goto :goto_316

    :cond_315
    const/4 v0, 0x1

    :goto_316
    if-eqz v2, :cond_31e

    iget-boolean v2, v9, Lz5/g;->d:Z

    if-eqz v2, :cond_31e

    move v5, v0

    goto :goto_31f

    :cond_31e
    move v5, v1

    :goto_31f
    new-instance v0, Lz5/f$b;

    invoke-direct {v0, v3, v8, v5}, Lz5/f$b;-><init>(Ly6/s0;IZ)V

    return-object v0

    :cond_325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one Annotations object expected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ly6/d2;Lkotlin/jvm/functions/Function1;IZ)Lz5/f$a;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/d2;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lz5/g;",
            ">;IZ)",
            "Lz5/f$a;"
        }
    .end annotation

    invoke-static {p1}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance p0, Lz5/f$a;

    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lz5/f$a;-><init>(Ly6/l0;I)V

    return-object p0

    :cond_e
    instance-of v0, p1, Ly6/e0;

    if-eqz v0, :cond_82

    instance-of v0, p1, Ly6/r0;

    move-object v9, p1

    check-cast v9, Ly6/e0;

    iget-object v3, v9, Ly6/e0;->b:Ly6/s0;

    sget-object v6, Lz5/u;->a:Lz5/u;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v7, v0

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lz5/f;->a(Ly6/s0;Lkotlin/jvm/functions/Function1;ILz5/u;ZZ)Lz5/f$b;

    move-result-object v10

    iget-object v3, v9, Ly6/e0;->c:Ly6/s0;

    sget-object v6, Lz5/u;->b:Lz5/u;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v7, v0

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lz5/f;->a(Ly6/s0;Lkotlin/jvm/functions/Function1;ILz5/u;ZZ)Lz5/f$b;

    move-result-object p0

    iget-object p2, v10, Lz5/f$b;->a:Ly6/s0;

    if-nez p2, :cond_3a

    iget-object p3, p0, Lz5/f$b;->a:Ly6/s0;

    if-nez p3, :cond_3a

    goto :goto_7a

    :cond_3a
    iget-boolean p3, v10, Lz5/f$b;->c:Z

    if-nez p3, :cond_64

    iget-boolean p3, p0, Lz5/f$b;->c:Z

    if-eqz p3, :cond_43

    goto :goto_64

    :cond_43
    if-eqz v0, :cond_55

    new-instance v1, Lw5/i;

    if-nez p2, :cond_4b

    iget-object p2, v9, Ly6/e0;->b:Ly6/s0;

    :cond_4b
    iget-object p0, p0, Lz5/f$b;->a:Ly6/s0;

    if-nez p0, :cond_51

    iget-object p0, v9, Ly6/e0;->c:Ly6/s0;

    :cond_51
    invoke-direct {v1, p2, p0}, Lw5/i;-><init>(Ly6/s0;Ly6/s0;)V

    goto :goto_7a

    :cond_55
    if-nez p2, :cond_59

    iget-object p2, v9, Ly6/e0;->b:Ly6/s0;

    :cond_59
    iget-object p0, p0, Lz5/f$b;->a:Ly6/s0;

    if-nez p0, :cond_5f

    iget-object p0, v9, Ly6/e0;->c:Ly6/s0;

    :cond_5f
    invoke-static {p2, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object v1

    goto :goto_7a

    :cond_64
    :goto_64
    iget-object p0, p0, Lz5/f$b;->a:Ly6/s0;

    if-eqz p0, :cond_71

    if-nez p2, :cond_6b

    move-object p2, p0

    :cond_6b
    invoke-static {p2, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    if-nez p0, :cond_76

    :cond_71
    iget-object p0, v10, Lz5/f$b;->a:Ly6/s0;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_76
    invoke-static {p1, p0}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object v1

    :goto_7a
    new-instance p0, Lz5/f$a;

    iget p1, v10, Lz5/f$b;->b:I

    invoke-direct {p0, v1, p1}, Lz5/f$a;-><init>(Ly6/l0;I)V

    goto :goto_a9

    :cond_82
    instance-of v0, p1, Ly6/s0;

    if-eqz v0, :cond_aa

    move-object v2, p1

    check-cast v2, Ly6/s0;

    sget-object v5, Lz5/u;->c:Lz5/u;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lz5/f;->a(Ly6/s0;Lkotlin/jvm/functions/Function1;ILz5/u;ZZ)Lz5/f$b;

    move-result-object p0

    new-instance p2, Lz5/f$a;

    iget-boolean p3, p0, Lz5/f$b;->c:Z

    if-eqz p3, :cond_a1

    iget-object p3, p0, Lz5/f$b;->a:Ly6/s0;

    invoke-static {p1, p3}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p1

    goto :goto_a3

    :cond_a1
    iget-object p1, p0, Lz5/f$b;->a:Ly6/s0;

    :goto_a3
    iget p0, p0, Lz5/f$b;->b:I

    invoke-direct {p2, p1, p0}, Lz5/f$a;-><init>(Ly6/l0;I)V

    move-object p0, p2

    :goto_a9
    return-object p0

    :cond_aa
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
