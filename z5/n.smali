.class public final Lz5/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nsignatureEnhancement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 signatureEnhancement.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/SignatureEnhancement\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,282:1\n1549#2:283\n1620#2,3:284\n1549#2:287\n1620#2,3:288\n1549#2:292\n1620#2,3:293\n1747#2,3:296\n1747#2,3:299\n1559#2:302\n1590#2,4:303\n1549#2:307\n1620#2,3:308\n1549#2:311\n1620#2,3:312\n1#3:291\n*S KotlinDebug\n*F\n+ 1 signatureEnhancement.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/SignatureEnhancement\n*L\n55#1:283\n55#1:284,3\n66#1:287\n66#1:288,3\n117#1:292\n117#1:293,3\n138#1:296,3\n144#1:299,3\n150#1:302\n150#1:303,4\n164#1:307\n164#1:308,3\n214#1:311\n214#1:312,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lz5/f;


# direct methods
.method public constructor <init>(Lz5/f;)V
    .registers 3

    const-string v0, "typeEnhancement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/n;->a:Lz5/f;

    return-void
.end method

.method public static synthetic d(Lz5/n;Lz5/t;Ly6/l0;Ljava/util/List;Lz5/w;ZI)Ly6/l0;
    .registers 13

    const/4 v4, 0x0

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_6

    const/4 p5, 0x0

    :cond_6
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lz5/n;->c(Lz5/t;Ly6/l0;Ljava/util/List;Lz5/w;Z)Ly6/l0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ly6/l0;)Z
    .registers 2

    sget-object p0, Lz5/n$a;->a:Lz5/n$a;

    invoke-static {p1, p0}, Ly6/a2;->c(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final b(Li5/b;Lj5/a;ZLu5/g;Lr5/c;Lz5/w;ZLkotlin/jvm/functions/Function1;)Ly6/l0;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b;",
            "Lj5/a;",
            "Z",
            "Lu5/g;",
            "Lr5/c;",
            "Lz5/w;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Li5/b;",
            "+",
            "Ly6/l0;",
            ">;)",
            "Ly6/l0;"
        }
    .end annotation

    move-object/from16 v0, p8

    new-instance v8, Lz5/t;

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v1, v8

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v7}, Lz5/t;-><init>(Lj5/a;ZLu5/g;Lr5/c;ZI)V

    move-object v1, p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-interface {p1}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v1

    const-string v3, "overriddenDescriptors"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/b;

    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/l0;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_49
    move-object p1, v8

    move-object p2, v2

    move-object p3, v3

    move-object p4, p6

    move/from16 p5, p7

    invoke-virtual/range {p0 .. p5}, Lz5/n;->c(Lz5/t;Ly6/l0;Ljava/util/List;Lz5/w;Z)Ly6/l0;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lz5/t;Ly6/l0;Ljava/util/List;Lz5/w;Z)Ly6/l0;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz5/t;",
            "Ly6/l0;",
            "Ljava/util/List<",
            "+",
            "Ly6/l0;",
            ">;",
            "Lz5/w;",
            "Z)",
            "Ly6/l0;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    iget-object v3, v3, Lz5/n;->a:Lz5/f;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lz5/j;->a:Lz5/j;

    sget-object v5, Lz5/j;->b:Lz5/j;

    sget-object v6, Lz5/j;->c:Lz5/j;

    sget-object v7, Lz5/h;->b:Lz5/h;

    sget-object v8, Lz5/h;->a:Lz5/h;

    const-string v9, "<this>"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "overrides"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Lz5/a;->f(Lc7/i;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v2, v12}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_34
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_48

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc7/i;

    invoke-virtual {v0, v13}, Lz5/a;->f(Lc7/i;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_48
    iget-boolean v12, v0, Lz5/t;->b:Z

    const/4 v13, 0x1

    if-eqz v12, :cond_82

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_54

    goto :goto_7d

    :cond_54
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc7/i;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "other"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v0, Lz5/t;->c:Lu5/g;

    iget-object v14, v14, Lu5/g;->a:Lu5/c;

    iget-object v14, v14, Lu5/c;->u:Lz6/l;

    check-cast v12, Ly6/l0;

    invoke-interface {v14, v1, v12}, Lz6/d;->b(Ly6/l0;Ly6/l0;)Z

    move-result v12

    xor-int/2addr v12, v13

    if-eqz v12, :cond_58

    move v2, v13

    goto :goto_7e

    :cond_7d
    :goto_7d
    const/4 v2, 0x0

    :goto_7e
    if-eqz v2, :cond_82

    move v2, v13

    goto :goto_83

    :cond_82
    const/4 v2, 0x0

    :goto_83
    if-eqz v2, :cond_86

    goto :goto_8d

    :cond_86
    move-object v2, v10

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_8d
    new-array v2, v13, [Lz5/g;

    const/4 v12, 0x0

    :goto_90
    if-ge v12, v13, :cond_4f5

    move-object v14, v10

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz5/a$a;

    iget-object v15, v14, Lz5/a$a;->a:Lc7/i;

    const/16 v16, 0x0

    if-nez v15, :cond_c8

    iget-object v15, v14, Lz5/a$a;->c:Lc7/o;

    if-eqz v15, :cond_ac

    invoke-static {v15}, Lz6/b$a;->B(Lc7/o;)Lc7/t;

    move-result-object v15

    move-object/from16 p0, v10

    goto :goto_b0

    :cond_ac
    move-object/from16 p0, v10

    move-object/from16 v15, v16

    :goto_b0
    sget-object v10, Lc7/t;->b:Lc7/t;

    if-ne v15, v10, :cond_ca

    sget-object v10, Lz5/g;->e:Lz5/g;

    sget-object v10, Lz5/g;->e:Lz5/g;

    sget-object v10, Lz5/g;->f:Lz5/g;

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 p3, v13

    goto/16 :goto_264

    :cond_c8
    move-object/from16 p0, v10

    :cond_ca
    iget-object v10, v14, Lz5/a$a;->c:Lc7/o;

    if-nez v10, :cond_d0

    const/4 v10, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v10, 0x0

    :goto_d1
    iget-object v15, v14, Lz5/a$a;->a:Lc7/i;

    if-eqz v15, :cond_df

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ly6/l0;

    invoke-virtual {v15}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v15

    goto :goto_e1

    :cond_df
    sget-object v15, Li4/y;->a:Li4/y;

    :goto_e1
    move/from16 p3, v13

    iget-object v13, v14, Lz5/a$a;->a:Lc7/i;

    if-eqz v13, :cond_111

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v17

    if-nez v17, :cond_106

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object v17

    if-eqz v17, :cond_ff

    invoke-static/range {v17 .. v17}, Lz6/b$a;->W(Lc7/g;)Lc7/k;

    move-result-object v17

    if-nez v17, :cond_106

    :cond_ff
    invoke-static {v13}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_106
    invoke-static/range {v17 .. v17}, Lz6/b$a;->g0(Lc7/k;)Lc7/n;

    move-result-object v13

    if-eqz v13, :cond_111

    invoke-static {v13}, Lz6/b$a;->x(Lc7/n;)Lc7/o;

    move-result-object v13

    goto :goto_113

    :cond_111
    move-object/from16 v13, v16

    :goto_113
    iget-object v1, v0, Lz5/t;->d:Lr5/c;

    move-object/from16 v17, v3

    sget-object v3, Lr5/c;->f:Lr5/c;

    if-ne v1, v3, :cond_11d

    const/4 v1, 0x1

    goto :goto_11e

    :cond_11d
    const/4 v1, 0x0

    :goto_11e
    if-nez v10, :cond_126

    move-object/from16 v18, v2

    move-object/from16 v19, v7

    goto/16 :goto_1af

    :cond_126
    if-nez v1, :cond_19b

    iget-object v3, v0, Lz5/t;->c:Lu5/g;

    iget-object v3, v3, Lu5/g;->a:Lu5/c;

    iget-object v3, v3, Lu5/c;->t:Lu5/d;

    invoke-interface {v3}, Lu5/d;->c()Z

    move-result v3

    if-eqz v3, :cond_19b

    iget-object v3, v14, Lz5/a$a;->a:Lc7/i;

    if-eqz v3, :cond_154

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ly6/l0;

    invoke-static {v3}, Lf5/g;->A(Ly6/l0;)Z

    move-result v18

    if-nez v18, :cond_14c

    invoke-static {v3}, Lf5/g;->J(Ly6/l0;)Z

    move-result v3

    if-eqz v3, :cond_14a

    goto :goto_14c

    :cond_14a
    const/4 v3, 0x0

    goto :goto_14d

    :cond_14c
    :goto_14c
    const/4 v3, 0x1

    :goto_14d
    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-ne v3, v2, :cond_156

    const/4 v2, 0x1

    goto :goto_157

    :cond_154
    move-object/from16 v18, v2

    :cond_156
    const/4 v2, 0x0

    :goto_157
    if-eqz v2, :cond_198

    iget-object v2, v0, Lz5/t;->a:Lj5/a;

    if-eqz v2, :cond_164

    invoke-interface {v2}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v2

    if-eqz v2, :cond_164

    goto :goto_166

    :cond_164
    sget-object v2, Li4/y;->a:Li4/y;

    :goto_166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_191

    move-object/from16 v19, v7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v20, v2

    invoke-virtual/range {p1 .. p1}, Lz5/t;->b()Lr5/b;

    move-result-object v2

    invoke-virtual {v2, v7}, Lr5/b;->i(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_18c

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18c
    move-object/from16 v7, v19

    move-object/from16 v2, v20

    goto :goto_16f

    :cond_191
    move-object/from16 v19, v7

    invoke-static {v3, v15}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v15

    goto :goto_1af

    :cond_198
    :goto_198
    move-object/from16 v19, v7

    goto :goto_19e

    :cond_19b
    move-object/from16 v18, v2

    goto :goto_198

    :goto_19e
    iget-object v2, v0, Lz5/t;->a:Lj5/a;

    if-eqz v2, :cond_1a9

    invoke-interface {v2}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v2

    if-eqz v2, :cond_1a9

    goto :goto_1ab

    :cond_1a9
    sget-object v2, Li4/y;->a:Li4/y;

    :goto_1ab
    invoke-static {v2, v15}, Li4/v;->S(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v15

    :goto_1af
    invoke-virtual/range {p1 .. p1}, Lz5/t;->b()Lr5/b;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "annotations"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v20, v8

    move-object/from16 v8, v16

    :goto_1c3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1f7

    move-object/from16 v21, v9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Lr5/b;->e(Ljava/lang/Object;)Lh6/c;

    move-result-object v9

    move-object/from16 v22, v2

    sget-object v2, Lr5/g0;->o:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    move-object/from16 v2, v20

    goto :goto_1ea

    :cond_1e0
    sget-object v2, Lr5/g0;->p:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    move-object/from16 v2, v19

    :goto_1ea
    if-eqz v8, :cond_1f1

    if-eq v8, v2, :cond_1f1

    move-object/from16 v8, v16

    goto :goto_1f9

    :cond_1f1
    move-object v8, v2

    :cond_1f2
    move-object/from16 v9, v21

    move-object/from16 v2, v22

    goto :goto_1c3

    :cond_1f7
    move-object/from16 v21, v9

    :goto_1f9
    invoke-virtual/range {p1 .. p1}, Lz5/t;->b()Lr5/b;

    move-result-object v2

    new-instance v7, Lz5/c;

    invoke-direct {v7, v0, v14}, Lz5/c;-><init>(Lz5/a;Lz5/a$a;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "forceWarning"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v9, v16

    :goto_213
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_252

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v15, v7}, Lr5/b;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lz5/k;

    move-result-object v15

    if-nez v9, :cond_228

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    goto :goto_244

    :cond_228
    if-eqz v15, :cond_249

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_231

    goto :goto_249

    :cond_231
    move-object/from16 v22, v2

    iget-boolean v2, v15, Lz5/k;->b:Z

    move-object/from16 v23, v3

    if-eqz v2, :cond_23e

    iget-boolean v3, v9, Lz5/k;->b:Z

    if-nez v3, :cond_23e

    goto :goto_24d

    :cond_23e
    if-nez v2, :cond_246

    iget-boolean v2, v9, Lz5/k;->b:Z

    if-eqz v2, :cond_246

    :goto_244
    move-object v9, v15

    goto :goto_24d

    :cond_246
    move-object/from16 v9, v16

    goto :goto_252

    :cond_249
    :goto_249
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    :goto_24d
    move-object/from16 v2, v22

    move-object/from16 v3, v23

    goto :goto_213

    :cond_252
    :goto_252
    if-eqz v9, :cond_267

    new-instance v10, Lz5/g;

    iget-object v1, v9, Lz5/k;->a:Lz5/j;

    if-ne v1, v6, :cond_25e

    if-eqz v13, :cond_25e

    const/4 v2, 0x1

    goto :goto_25f

    :cond_25e
    const/4 v2, 0x0

    :goto_25f
    iget-boolean v3, v9, Lz5/k;->b:Z

    invoke-direct {v10, v1, v8, v2, v3}, Lz5/g;-><init>(Lz5/j;Lz5/h;ZZ)V

    :goto_264
    const/4 v1, 0x1

    goto/16 :goto_30e

    :cond_267
    if-nez v10, :cond_26f

    if-eqz v1, :cond_26c

    goto :goto_26f

    :cond_26c
    sget-object v1, Lr5/c;->e:Lr5/c;

    goto :goto_271

    :cond_26f
    :goto_26f
    iget-object v1, v0, Lz5/t;->d:Lr5/c;

    :goto_271
    iget-object v2, v14, Lz5/a$a;->b:Lr5/b0;

    if-eqz v2, :cond_27e

    iget-object v2, v2, Lr5/b0;->a:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr5/u;

    goto :goto_280

    :cond_27e
    move-object/from16 v1, v16

    :goto_280
    if-eqz v13, :cond_287

    invoke-virtual {v0, v13}, Lz5/a;->c(Lc7/o;)Lz5/k;

    move-result-object v2

    goto :goto_289

    :cond_287
    move-object/from16 v2, v16

    :goto_289
    const/4 v3, 0x2

    if-eqz v2, :cond_292

    const/4 v7, 0x0

    invoke-static {v2, v6, v7, v3}, Lz5/k;->a(Lz5/k;Lz5/j;ZI)Lz5/k;

    move-result-object v7

    goto :goto_299

    :cond_292
    if-eqz v1, :cond_297

    iget-object v7, v1, Lr5/u;->a:Lz5/k;

    goto :goto_299

    :cond_297
    move-object/from16 v7, v16

    :goto_299
    if-eqz v2, :cond_29e

    iget-object v2, v2, Lz5/k;->a:Lz5/j;

    goto :goto_2a0

    :cond_29e
    move-object/from16 v2, v16

    :goto_2a0
    if-eq v2, v6, :cond_2b3

    if-eqz v13, :cond_2b1

    if-eqz v1, :cond_2ad

    iget-boolean v1, v1, Lr5/u;->c:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2ad

    const/4 v1, 0x1

    goto :goto_2ae

    :cond_2ad
    const/4 v1, 0x0

    :goto_2ae
    if-eqz v1, :cond_2b1

    goto :goto_2b3

    :cond_2b1
    const/4 v1, 0x0

    goto :goto_2b4

    :cond_2b3
    :goto_2b3
    const/4 v1, 0x1

    :goto_2b4
    iget-object v2, v14, Lz5/a$a;->c:Lc7/o;

    if-eqz v2, :cond_2c8

    invoke-virtual {v0, v2}, Lz5/a;->c(Lc7/o;)Lz5/k;

    move-result-object v2

    if-eqz v2, :cond_2c8

    iget-object v9, v2, Lz5/k;->a:Lz5/j;

    if-ne v9, v5, :cond_2ca

    const/4 v9, 0x0

    invoke-static {v2, v4, v9, v3}, Lz5/k;->a(Lz5/k;Lz5/j;ZI)Lz5/k;

    move-result-object v2

    goto :goto_2ca

    :cond_2c8
    move-object/from16 v2, v16

    :cond_2ca
    :goto_2ca
    if-nez v2, :cond_2cd

    goto :goto_2f6

    :cond_2cd
    if-nez v7, :cond_2d0

    goto :goto_2f5

    :cond_2d0
    iget-boolean v3, v2, Lz5/k;->b:Z

    if-eqz v3, :cond_2d9

    iget-boolean v9, v7, Lz5/k;->b:Z

    if-nez v9, :cond_2d9

    goto :goto_2f6

    :cond_2d9
    if-nez v3, :cond_2e0

    iget-boolean v3, v7, Lz5/k;->b:Z

    if-eqz v3, :cond_2e0

    goto :goto_2f5

    :cond_2e0
    iget-object v3, v2, Lz5/k;->a:Lz5/j;

    iget-object v9, v7, Lz5/k;->a:Lz5/j;

    invoke-virtual {v3, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_2eb

    goto :goto_2f6

    :cond_2eb
    iget-object v3, v2, Lz5/k;->a:Lz5/j;

    iget-object v9, v7, Lz5/k;->a:Lz5/j;

    invoke-virtual {v3, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_2f6

    :goto_2f5
    move-object v7, v2

    :cond_2f6
    :goto_2f6
    new-instance v10, Lz5/g;

    if-eqz v7, :cond_2fd

    iget-object v2, v7, Lz5/k;->a:Lz5/j;

    goto :goto_2ff

    :cond_2fd
    move-object/from16 v2, v16

    :goto_2ff
    if-eqz v7, :cond_308

    iget-boolean v3, v7, Lz5/k;->b:Z

    const/4 v7, 0x1

    if-ne v3, v7, :cond_309

    move v3, v7

    goto :goto_30a

    :cond_308
    const/4 v7, 0x1

    :cond_309
    const/4 v3, 0x0

    :goto_30a
    invoke-direct {v10, v2, v8, v1, v3}, Lz5/g;-><init>(Lz5/j;Lz5/h;ZZ)V

    move v1, v7

    :goto_30e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_317
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7, v12}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz5/a$a;

    if-eqz v7, :cond_3c7

    iget-object v7, v7, Lz5/a$a;->a:Lc7/i;

    if-eqz v7, :cond_3c7

    invoke-virtual {v0, v7}, Lz5/a;->e(Lc7/i;)Lz5/j;

    move-result-object v8

    if-nez v8, :cond_343

    invoke-virtual {v0, v7}, Lz5/t;->d(Lc7/i;)Lc7/i;

    move-result-object v9

    if-eqz v9, :cond_340

    invoke-virtual {v0, v9}, Lz5/a;->e(Lc7/i;)Lz5/j;

    move-result-object v9

    goto :goto_344

    :cond_340
    move-object/from16 v9, v16

    goto :goto_344

    :cond_343
    move-object v9, v8

    :goto_344
    sget-object v13, Lh5/c;->a:Lh5/c;

    move-object/from16 v13, v21

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object v14

    if-eqz v14, :cond_357

    invoke-static {v14}, Lz6/b$a;->W(Lc7/g;)Lc7/k;

    move-result-object v14

    if-nez v14, :cond_35e

    :cond_357
    invoke-static {v7}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_35e
    invoke-virtual {v0, v14}, Lz5/t;->g(Lc7/i;)Lh6/d;

    move-result-object v14

    sget-object v15, Lh5/c;->l:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36d

    move-object/from16 v14, v20

    goto :goto_394

    :cond_36d
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lz6/b$a;->g(Lc7/i;)Lc7/g;

    move-result-object v14

    if-eqz v14, :cond_37c

    invoke-static {v14}, Lz6/b$a;->h0(Lc7/g;)Lc7/k;

    move-result-object v14

    if-nez v14, :cond_383

    :cond_37c
    invoke-static {v7}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_383
    invoke-virtual {v0, v14}, Lz5/t;->g(Lc7/i;)Lh6/d;

    move-result-object v14

    sget-object v15, Lh5/c;->k:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_392

    move-object/from16 v14, v19

    goto :goto_394

    :cond_392
    move-object/from16 v14, v16

    :goto_394
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lz6/b$a;->i(Lc7/i;)Lc7/k;

    move-result-object v15

    if-eqz v15, :cond_3a2

    invoke-static {v15}, Lz6/b$a;->e(Lc7/k;)Lc7/e;

    move-result-object v15

    goto :goto_3a4

    :cond_3a2
    move-object/from16 v15, v16

    :goto_3a4
    if-eqz v15, :cond_3a8

    move v15, v1

    goto :goto_3a9

    :cond_3a8
    const/4 v15, 0x0

    :goto_3a9
    if-nez v15, :cond_3bb

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ly6/l0;

    invoke-virtual {v7}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v7

    instance-of v7, v7, Lz5/i;

    if-eqz v7, :cond_3b9

    goto :goto_3bb

    :cond_3b9
    const/4 v7, 0x0

    goto :goto_3bc

    :cond_3bb
    :goto_3bb
    move v7, v1

    :goto_3bc
    new-instance v15, Lz5/g;

    if-eq v9, v8, :cond_3c2

    move v8, v1

    goto :goto_3c3

    :cond_3c2
    const/4 v8, 0x0

    :goto_3c3
    invoke-direct {v15, v9, v14, v7, v8}, Lz5/g;-><init>(Lz5/j;Lz5/h;ZZ)V

    goto :goto_3cb

    :cond_3c7
    move-object/from16 v13, v21

    move-object/from16 v15, v16

    :goto_3cb
    if-eqz v15, :cond_3d0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d0
    move-object/from16 v21, v13

    goto/16 :goto_317

    :cond_3d4
    move-object/from16 v13, v21

    if-nez v12, :cond_3de

    iget-boolean v3, v0, Lz5/t;->b:Z

    if-eqz v3, :cond_3de

    move v3, v1

    goto :goto_3df

    :cond_3de
    const/4 v3, 0x0

    :goto_3df
    if-nez v12, :cond_3f5

    iget-object v7, v0, Lz5/t;->a:Lj5/a;

    instance-of v8, v7, Li5/e1;

    if-eqz v8, :cond_3f1

    check-cast v7, Li5/e1;

    invoke-interface {v7}, Li5/e1;->n0()Ly6/l0;

    move-result-object v7

    if-eqz v7, :cond_3f1

    move v7, v1

    goto :goto_3f2

    :cond_3f1
    const/4 v7, 0x0

    :goto_3f2
    if-eqz v7, :cond_3f5

    goto :goto_3f6

    :cond_3f5
    const/4 v1, 0x0

    :goto_3f6
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "superQualifiers"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_407
    :goto_407
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_422

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz5/g;

    iget-boolean v14, v9, Lz5/g;->d:Z

    if-eqz v14, :cond_41a

    move-object/from16 v9, v16

    goto :goto_41c

    :cond_41a
    iget-object v9, v9, Lz5/g;->a:Lz5/j;

    :goto_41c
    if-eqz v9, :cond_407

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_407

    :cond_422
    invoke-static {v7}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    iget-boolean v8, v10, Lz5/g;->d:Z

    if-eqz v8, :cond_42d

    move-object/from16 v8, v16

    goto :goto_42f

    :cond_42d
    iget-object v8, v10, Lz5/g;->a:Lz5/j;

    :goto_42f
    if-ne v8, v4, :cond_433

    move-object v7, v4

    goto :goto_439

    :cond_433
    invoke-static {v7, v6, v5, v8, v3}, Lz5/y;->a(Ljava/util/Set;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz5/j;

    :goto_439
    if-nez v7, :cond_469

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_444
    :goto_444
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_458

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz5/g;

    iget-object v14, v14, Lz5/g;->a:Lz5/j;

    if-eqz v14, :cond_444

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_444

    :cond_458
    invoke-static {v8}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    iget-object v9, v10, Lz5/g;->a:Lz5/j;

    if-ne v9, v4, :cond_462

    move-object v8, v4

    goto :goto_46a

    :cond_462
    invoke-static {v8, v6, v5, v9, v3}, Lz5/y;->a(Ljava/util/Set;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz5/j;

    goto :goto_46a

    :cond_469
    move-object v8, v7

    :goto_46a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_473
    :goto_473
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_487

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lz5/g;

    iget-object v15, v15, Lz5/g;->b:Lz5/h;

    if-eqz v15, :cond_473

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_473

    :cond_487
    invoke-static {v9}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    iget-object v14, v10, Lz5/g;->b:Lz5/h;

    move-object/from16 v15, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    invoke-static {v9, v15, v4, v14, v3}, Lz5/y;->a(Ljava/util/Set;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz5/h;

    if-eqz v8, :cond_4a9

    if-nez p5, :cond_4a4

    if-eqz v1, :cond_4a2

    if-ne v8, v5, :cond_4a2

    goto :goto_4a4

    :cond_4a2
    const/4 v1, 0x0

    goto :goto_4a5

    :cond_4a4
    :goto_4a4
    const/4 v1, 0x1

    :goto_4a5
    if-nez v1, :cond_4a9

    move-object v1, v8

    goto :goto_4ab

    :cond_4a9
    move-object/from16 v1, v16

    :goto_4ab
    if-ne v1, v6, :cond_4d3

    iget-boolean v9, v10, Lz5/g;->c:Z

    if-nez v9, :cond_4d1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4b8

    goto :goto_4ce

    :cond_4b8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4ce

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz5/g;

    iget-boolean v9, v9, Lz5/g;->c:Z

    if-eqz v9, :cond_4bc

    const/4 v2, 0x1

    goto :goto_4cf

    :cond_4ce
    :goto_4ce
    const/4 v2, 0x0

    :goto_4cf
    if-eqz v2, :cond_4d3

    :cond_4d1
    const/4 v2, 0x1

    goto :goto_4d4

    :cond_4d3
    const/4 v2, 0x0

    :goto_4d4
    if-eqz v1, :cond_4da

    if-eq v7, v8, :cond_4da

    const/4 v7, 0x1

    goto :goto_4db

    :cond_4da
    const/4 v7, 0x0

    :goto_4db
    new-instance v8, Lz5/g;

    invoke-direct {v8, v1, v3, v2, v7}, Lz5/g;-><init>(Lz5/j;Lz5/h;ZZ)V

    aput-object v8, v18, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, p0

    move-object/from16 v1, p2

    move-object v8, v4

    move-object v9, v13

    move-object v7, v15

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v13, p3

    goto/16 :goto_90

    :cond_4f5
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object v13, v9

    new-instance v1, Lz5/b;

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    invoke-direct {v1, v2, v3}, Lz5/b;-><init>(Lz5/w;[Lz5/g;)V

    iget-boolean v0, v0, Lz5/t;->e:Z

    invoke-static/range {v17 .. v17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "qualifiers"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v4, v17

    invoke-virtual {v4, v2, v1, v3, v0}, Lz5/f;->b(Ly6/d2;Lkotlin/jvm/functions/Function1;IZ)Lz5/f$a;

    move-result-object v0

    iget-object v0, v0, Lz5/f$a;->a:Ly6/l0;

    return-object v0
.end method

.method public final e(Lu5/g;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/b;",
            ">(",
            "Lu5/g;",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    const-string v1, "c"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "platformSignatures"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v0, v12}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_342

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Li5/b;

    instance-of v0, v14, Lt5/a;

    if-nez v0, :cond_33

    :goto_30
    move v4, v12

    goto/16 :goto_33c

    :cond_33
    move-object v0, v14

    check-cast v0, Lt5/a;

    invoke-interface {v0}, Li5/b;->f()Li5/b$a;

    move-result-object v1

    sget-object v2, Li5/b$a;->b:Li5/b$a;

    const/4 v15, 0x1

    if-ne v1, v2, :cond_4e

    invoke-interface {v0}, Li5/b;->a()Li5/b;

    move-result-object v0

    invoke-interface {v0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v15, :cond_4e

    goto :goto_30

    :cond_4e
    invoke-static {v14}, Li5/r;->a(Li5/l;)Li5/h;

    move-result-object v0

    const/4 v8, 0x0

    const/16 v16, 0x0

    if-nez v0, :cond_5d

    invoke-interface {v14}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v0

    goto/16 :goto_c9

    :cond_5d
    instance-of v1, v0, Lv5/f;

    if-eqz v1, :cond_64

    check-cast v0, Lv5/f;

    goto :goto_66

    :cond_64
    move-object/from16 v0, v16

    :goto_66
    if-eqz v0, :cond_71

    iget-object v0, v0, Lv5/f;->l:Lh4/f;

    invoke-interface {v0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_73

    :cond_71
    move-object/from16 v0, v16

    :goto_73
    if-eqz v0, :cond_7e

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7c

    goto :goto_7e

    :cond_7c
    move v1, v8

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v1, v15

    :goto_7f
    if-eqz v1, :cond_86

    invoke-interface {v14}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v0

    goto :goto_c9

    :cond_86
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_93
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5/a;

    new-instance v3, Lv5/e;

    invoke-direct {v3, v10, v2, v15}, Lv5/e;-><init>(Lu5/g;Ly5/a;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_a8
    sget v0, Lj5/h;->I:I

    invoke-interface {v14}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v0

    invoke-static {v0, v1}, Li4/v;->S(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const-string v1, "annotations"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c3

    sget-object v0, Lj5/h$a;->b:Lj5/h;

    goto :goto_c9

    :cond_c3
    new-instance v1, Lj5/i;

    invoke-direct {v1, v0}, Lj5/i;-><init>(Ljava/util/List;)V

    move-object v0, v1

    :goto_c9
    invoke-static {v10, v0}, Lu5/b;->d(Lu5/g;Lj5/h;)Lu5/g;

    move-result-object v7

    instance-of v0, v14, Lt5/f;

    if-eqz v0, :cond_e6

    move-object v0, v14

    check-cast v0, Lt5/f;

    iget-object v0, v0, Ll5/f0;->x:Ll5/g0;

    if-eqz v0, :cond_de

    iget-boolean v1, v0, Ll5/e0;->e:Z

    if-nez v1, :cond_de

    move v1, v15

    goto :goto_df

    :cond_de
    move v1, v8

    :goto_df
    if-eqz v1, :cond_e6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v0

    goto :goto_e7

    :cond_e6
    move-object v6, v14

    :goto_e7
    move-object v5, v14

    check-cast v5, Lt5/a;

    invoke-interface {v5}, Li5/a;->L()Li5/r0;

    move-result-object v0

    if-eqz v0, :cond_120

    instance-of v0, v6, Li5/x;

    if-eqz v0, :cond_f8

    move-object v0, v6

    check-cast v0, Li5/x;

    goto :goto_fa

    :cond_f8
    move-object/from16 v0, v16

    :goto_fa
    if-eqz v0, :cond_106

    sget-object v1, Lt5/e;->G:Li5/a$a;

    invoke-interface {v0, v1}, Li5/a;->P(Li5/a$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e1;

    move-object v2, v0

    goto :goto_108

    :cond_106
    move-object/from16 v2, v16

    :goto_108
    const/4 v4, 0x0

    const/16 v17, 0x0

    sget-object v18, Lz5/o;->a:Lz5/o;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v3, v7

    move-object/from16 p2, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lz5/n;->f(Li5/b;Li5/e1;Lu5/g;Lz5/w;ZLkotlin/jvm/functions/Function1;)Ly6/l0;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_126

    :cond_120
    move-object/from16 p2, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v16

    :goto_126
    instance-of v0, v14, Lt5/e;

    if-eqz v0, :cond_12e

    move-object v0, v14

    check-cast v0, Lt5/e;

    goto :goto_130

    :cond_12e
    move-object/from16 v0, v16

    :goto_130
    if-eqz v0, :cond_154

    sget-object v1, La6/a0;->a:La6/a0;

    invoke-virtual {v0}, Ll5/n;->b()Li5/l;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Li5/e;

    const/4 v3, 0x3

    invoke-static {v0, v8, v8, v3}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lv3/j0;->a(La6/a0;Li5/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_154

    sget-object v1, Lz5/l;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz5/m;

    move-object v6, v0

    goto :goto_156

    :cond_154
    move-object/from16 v6, v16

    :goto_156
    if-eqz v6, :cond_164

    iget-object v0, v6, Lz5/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface/range {p2 .. p2}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    :cond_164
    iget-object v0, v10, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->v:Lr5/a0;

    const-string v1, "javaTypeEnhancementState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lr5/a0;->b:Lkotlin/jvm/functions/Function1;

    sget-object v1, Lr5/y;->a:Lh6/c;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr5/k0;->d:Lr5/k0;

    if-ne v0, v1, :cond_17b

    move v0, v15

    goto :goto_17c

    :cond_17b
    move v0, v8

    :goto_17c
    if-nez v0, :cond_188

    iget-object v0, v7, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->t:Lu5/d;

    invoke-interface {v0}, Lu5/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1a7

    :cond_188
    const-string v0, "memberDescriptor"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, v14, Li5/x;

    if-eqz v0, :cond_1a1

    sget-object v0, Lt5/e;->H:Li5/a$a;

    invoke-interface {v14, v0}, Li5/a;->P(Li5/a$a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    move v0, v15

    goto :goto_1a2

    :cond_1a1
    move v0, v8

    :goto_1a2
    if-eqz v0, :cond_1a7

    move/from16 v19, v15

    goto :goto_1a9

    :cond_1a7
    move/from16 v19, v8

    :goto_1a9
    invoke-interface/range {v17 .. v17}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v1, "annotationOwnerForMember.valueParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1bf
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fe

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Li5/e1;

    if-eqz v6, :cond_1de

    iget-object v0, v6, Lz5/m;->b:Ljava/util/List;

    if-eqz v0, :cond_1de

    invoke-interface {v2}, Li5/e1;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz5/w;

    move-object v4, v0

    goto :goto_1e0

    :cond_1de
    move-object/from16 v4, v16

    :goto_1e0
    new-instance v3, Lz5/q;

    invoke-direct {v3, v2}, Lz5/q;-><init>(Li5/e1;)V

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v21, v3

    move-object v3, v7

    move-object v12, v5

    move/from16 v5, v19

    move-object v8, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lz5/n;->f(Li5/b;Li5/e1;Lu5/g;Lz5/w;ZLkotlin/jvm/functions/Function1;)Ly6/l0;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v8

    move-object v5, v12

    const/4 v8, 0x0

    const/16 v12, 0xa

    goto :goto_1bf

    :cond_1fe
    move-object v12, v5

    move-object v8, v6

    const/4 v3, 0x1

    instance-of v0, v14, Li5/o0;

    if-eqz v0, :cond_209

    move-object v0, v14

    check-cast v0, Li5/o0;

    goto :goto_20b

    :cond_209
    move-object/from16 v0, v16

    :goto_20b
    if-eqz v0, :cond_215

    invoke-static {v0}, Lv5/c;->a(Li5/o0;)Z

    move-result v0

    if-ne v0, v15, :cond_215

    move v0, v15

    goto :goto_216

    :cond_215
    const/4 v0, 0x0

    :goto_216
    if-eqz v0, :cond_21b

    sget-object v0, Lr5/c;->d:Lr5/c;

    goto :goto_21d

    :cond_21b
    sget-object v0, Lr5/c;->b:Lr5/c;

    :goto_21d
    move-object v5, v0

    if-eqz v8, :cond_224

    iget-object v0, v8, Lz5/m;->a:Lz5/w;

    move-object v6, v0

    goto :goto_226

    :cond_224
    move-object/from16 v6, v16

    :goto_226
    sget-object v8, Lz5/p;->a:Lz5/p;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v17

    move-object v4, v7

    move/from16 v7, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v8}, Lz5/n;->b(Li5/b;Lj5/a;ZLu5/g;Lr5/c;Lz5/w;ZLkotlin/jvm/functions/Function1;)Ly6/l0;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Lz5/n;->a(Ly6/l0;)Z

    move-result v1

    if-nez v1, :cond_297

    invoke-interface/range {p2 .. p2}, Li5/a;->L()Li5/r0;

    move-result-object v1

    if-eqz v1, :cond_256

    invoke-interface {v1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v1

    if-eqz v1, :cond_256

    invoke-virtual {v9, v1}, Lz5/n;->a(Ly6/l0;)Z

    move-result v8

    goto :goto_258

    :cond_256
    move/from16 v8, v17

    :goto_258
    if-nez v8, :cond_297

    invoke-interface/range {p2 .. p2}, Li5/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "valueParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_26e

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26e

    goto :goto_28f

    :cond_26e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_272
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/e1;

    invoke-interface {v2}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    const-string v3, "it.type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lz5/n;->a(Ly6/l0;)Z

    move-result v2

    if-eqz v2, :cond_272

    move v8, v15

    goto :goto_291

    :cond_28f
    :goto_28f
    move/from16 v8, v17

    :goto_291
    if-eqz v8, :cond_294

    goto :goto_297

    :cond_294
    move/from16 v8, v17

    goto :goto_298

    :cond_297
    :goto_297
    move v8, v15

    :goto_298
    if-eqz v8, :cond_2a7

    sget-object v1, Ln6/b;->a:Li5/a$a;

    new-instance v2, Lr5/m;

    invoke-direct {v2, v14}, Lr5/m;-><init>(Li5/l;)V

    new-instance v3, Lh4/j;

    invoke-direct {v3, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a9

    :cond_2a7
    move-object/from16 v3, v16

    :goto_2a9
    if-nez v18, :cond_2d7

    if-nez v0, :cond_2d7

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b4

    goto :goto_2cd

    :cond_2b4
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    if-eqz v2, :cond_2c8

    move v8, v15

    goto :goto_2ca

    :cond_2c8
    move/from16 v8, v17

    :goto_2ca
    if-eqz v8, :cond_2b8

    goto :goto_2cf

    :cond_2cd
    :goto_2cd
    move/from16 v15, v17

    :goto_2cf
    if-nez v15, :cond_2d7

    if-eqz v3, :cond_2d4

    goto :goto_2d7

    :cond_2d4
    const/16 v4, 0xa

    goto :goto_33c

    :cond_2d7
    :goto_2d7
    if-nez v18, :cond_2e7

    invoke-interface/range {p2 .. p2}, Li5/a;->L()Li5/r0;

    move-result-object v1

    if-eqz v1, :cond_2e4

    invoke-interface {v1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v18

    goto :goto_2e7

    :cond_2e4
    move-object/from16 v1, v16

    goto :goto_2e9

    :cond_2e7
    :goto_2e7
    move-object/from16 v1, v18

    :goto_2e9
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v12, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v8, v17

    :goto_2fa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_328

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    if-ltz v8, :cond_324

    check-cast v6, Ly6/l0;

    if-nez v6, :cond_31f

    invoke-interface/range {p2 .. p2}, Li5/a;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/e1;

    invoke-interface {v6}, Li5/d1;->getType()Ly6/l0;

    move-result-object v6

    const-string v8, "valueParameters[index].type"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_31f
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    goto :goto_2fa

    :cond_324
    invoke-static {}, Li4/o;->k()V

    throw v16

    :cond_328
    if-nez v0, :cond_331

    invoke-interface/range {p2 .. p2}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_331
    move-object/from16 v14, p2

    invoke-interface {v14, v1, v2, v0, v3}, Lt5/a;->o0(Ly6/l0;Ljava/util/List;Ly6/l0;Lh4/j;)Lt5/a;

    move-result-object v14

    const-string v0, "null cannot be cast to non-null type D of org.jetbrains.kotlin.load.java.typeEnhancement.SignatureEnhancement.enhanceSignature"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_33c
    invoke-interface {v11, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v12, v4

    goto/16 :goto_1f

    :cond_342
    return-object v11
.end method

.method public final f(Li5/b;Li5/e1;Lu5/g;Lz5/w;ZLkotlin/jvm/functions/Function1;)Ly6/l0;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b;",
            "Li5/e1;",
            "Lu5/g;",
            "Lz5/w;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Li5/b;",
            "+",
            "Ly6/l0;",
            ">;)",
            "Ly6/l0;"
        }
    .end annotation

    if-eqz p2, :cond_f

    invoke-interface {p2}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v0

    invoke-static {p3, v0}, Lu5/b;->d(Lu5/g;Lj5/h;)Lu5/g;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    move-object v4, v0

    goto :goto_10

    :cond_f
    :goto_f
    move-object v4, p3

    :goto_10
    sget-object v5, Lr5/c;->c:Lr5/c;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lz5/n;->b(Li5/b;Lj5/a;ZLu5/g;Lr5/c;Lz5/w;ZLkotlin/jvm/functions/Function1;)Ly6/l0;

    move-result-object v0

    return-object v0
.end method
