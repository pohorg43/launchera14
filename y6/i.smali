.class public final Ly6/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractTypeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/AbstractTypeChecker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/TypeCheckerState\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 TypeSystemContext.kt\norg/jetbrains/kotlin/types/model/TypeSystemContextKt\n*L\n1#1,835:1\n1#2:836\n1#2:853\n1#2:905\n1#2:943\n132#3,16:837\n148#3,13:854\n46#3,8:875\n132#3,16:889\n148#3,13:906\n132#3,16:927\n148#3,13:944\n1549#4:867\n1620#4,3:868\n1549#4:871\n1620#4,3:872\n1726#4,3:883\n1726#4,3:886\n766#4:919\n857#4:920\n858#4:926\n1360#4:957\n1446#4,5:958\n1747#4,3:963\n1747#4,3:966\n556#5,5:921\n*S KotlinDebug\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/AbstractTypeChecker\n*L\n342#1:853\n622#1:905\n692#1:943\n342#1:837,16\n342#1:854,13\n475#1:875,8\n622#1:889,16\n622#1:906,13\n692#1:927,16\n692#1:944,13\n378#1:867\n378#1:868,3\n389#1:871\n389#1:872,3\n561#1:883,3\n572#1:886,3\n667#1:919\n667#1:920\n667#1:926\n701#1:957\n701#1:958,5\n295#1:963,3\n303#1:966,3\n668#1:921,5\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ly6/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly6/i;

    invoke-direct {v0}, Ly6/i;-><init>()V

    sput-object v0, Ly6/i;->a:Ly6/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lc7/p;Lc7/k;)Z
    .registers 5

    invoke-interface {p0, p1}, Lc7/p;->D(Lc7/k;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_30

    instance-of v0, p1, Lc7/d;

    if-nez v0, :cond_d

    goto :goto_2d

    :cond_d
    check-cast p1, Lc7/d;

    invoke-interface {p0, p1}, Lc7/p;->K(Lc7/d;)Lc7/c;

    move-result-object p1

    invoke-interface {p0, p1}, Lc7/p;->d0(Lc7/c;)Lc7/m;

    move-result-object p1

    invoke-interface {p0, p1}, Lc7/p;->h0(Lc7/m;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-interface {p0, p1}, Lc7/p;->g0(Lc7/m;)Lc7/i;

    move-result-object p1

    invoke-interface {p0, p1}, Lc7/p;->o(Lc7/i;)Lc7/k;

    move-result-object p1

    invoke-interface {p0, p1}, Lc7/p;->D(Lc7/k;)Z

    move-result p0

    if-eqz p0, :cond_2d

    move p0, v2

    goto :goto_2e

    :cond_2d
    :goto_2d
    move p0, v1

    :goto_2e
    if-eqz p0, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    return v1
.end method

.method public static final b(Lc7/p;Ly6/i1;Lc7/k;Lc7/k;Z)Z
    .registers 14

    invoke-interface {p0, p2}, Lc7/p;->u(Lc7/k;)Ljava/util/Collection;

    move-result-object p2

    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_46

    :cond_11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lc7/i;

    invoke-interface {p0, v6}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object v0

    invoke-interface {p0, p3}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    if-eqz p4, :cond_40

    sget-object v3, Ly6/i;->a:Ly6/i;

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_42

    :cond_40
    move v0, v2

    goto :goto_43

    :cond_42
    :goto_42
    move v0, v1

    :goto_43
    if-eqz v0, :cond_15

    goto :goto_47

    :cond_46
    :goto_46
    move v1, v2

    :goto_47
    return v1
.end method

.method public static j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z
    .registers 31

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v7, "state"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "subType"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "superType"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1a

    goto/16 :goto_6ba

    :cond_1a
    invoke-virtual/range {p1 .. p3}, Ly6/i1;->c(Lc7/i;Lc7/i;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_6b9

    :cond_22
    iget-object v10, v6, Ly6/i1;->d:Lc7/p;

    invoke-virtual/range {p1 .. p2}, Ly6/i1;->f(Lc7/i;)Lc7/i;

    move-result-object v0

    invoke-virtual {v6, v0}, Ly6/i1;->e(Lc7/i;)Lc7/i;

    move-result-object v11

    invoke-virtual {v6, v1}, Ly6/i1;->f(Lc7/i;)Lc7/i;

    move-result-object v0

    invoke-virtual {v6, v0}, Ly6/i1;->e(Lc7/i;)Lc7/i;

    move-result-object v12

    sget-object v0, Ly6/i;->a:Ly6/i;

    invoke-interface {v10, v11}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object v13

    invoke-interface {v10, v12}, Lc7/p;->o(Lc7/i;)Lc7/k;

    move-result-object v14

    iget-object v15, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v15, v13}, Lc7/p;->R(Lc7/i;)Z

    move-result v1

    const/16 v16, 0x0

    if-nez v1, :cond_19e

    invoke-interface {v15, v14}, Lc7/p;->R(Lc7/i;)Z

    move-result v1

    if-eqz v1, :cond_50

    goto/16 :goto_19e

    :cond_50
    invoke-interface {v15, v13}, Lc7/p;->N(Lc7/k;)Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v15, v14}, Lc7/p;->N(Lc7/k;)Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v15, v13}, Lc7/p;->s0(Lc7/k;)Lc7/e;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-interface {v15, v0}, Lc7/p;->C(Lc7/e;)Lc7/k;

    move-result-object v0

    if-nez v0, :cond_69

    :cond_68
    move-object v0, v13

    :cond_69
    invoke-interface {v15, v14}, Lc7/p;->s0(Lc7/k;)Lc7/e;

    move-result-object v1

    if-eqz v1, :cond_75

    invoke-interface {v15, v1}, Lc7/p;->C(Lc7/e;)Lc7/k;

    move-result-object v1

    if-nez v1, :cond_76

    :cond_75
    move-object v1, v14

    :cond_76
    invoke-interface {v15, v0}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v0

    invoke-interface {v15, v1}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v1

    if-eq v0, v1, :cond_81

    goto :goto_9a

    :cond_81
    invoke-interface {v15, v13}, Lc7/p;->t(Lc7/i;)Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-interface {v15, v14}, Lc7/p;->t(Lc7/i;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_9a

    :cond_8e
    invoke-interface {v15, v13}, Lc7/p;->p(Lc7/k;)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v15, v14}, Lc7/p;->p(Lc7/k;)Z

    move-result v0

    if-nez v0, :cond_9c

    :goto_9a
    const/4 v0, 0x0

    goto :goto_9d

    :cond_9c
    move v0, v2

    :goto_9d
    if-nez v0, :cond_a5

    iget-boolean v0, v6, Ly6/i1;->b:Z

    if-eqz v0, :cond_a4

    goto :goto_a5

    :cond_a4
    const/4 v2, 0x0

    :cond_a5
    :goto_a5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1d4

    :cond_ab
    invoke-interface {v15, v13}, Lc7/p;->l(Lc7/k;)Z

    move-result v1

    if-nez v1, :cond_197

    invoke-interface {v15, v14}, Lc7/p;->l(Lc7/k;)Z

    move-result v1

    if-eqz v1, :cond_b9

    goto/16 :goto_197

    :cond_b9
    invoke-interface {v15, v14}, Lc7/p;->s0(Lc7/k;)Lc7/e;

    move-result-object v1

    if-eqz v1, :cond_c5

    invoke-interface {v15, v1}, Lc7/p;->C(Lc7/e;)Lc7/k;

    move-result-object v1

    if-nez v1, :cond_c6

    :cond_c5
    move-object v1, v14

    :cond_c6
    invoke-interface {v15, v1}, Lc7/p;->b(Lc7/k;)Lc7/d;

    move-result-object v1

    if-eqz v1, :cond_d1

    invoke-interface {v15, v1}, Lc7/p;->y(Lc7/d;)Lc7/i;

    move-result-object v3

    goto :goto_d3

    :cond_d1
    move-object/from16 v3, v16

    :goto_d3
    if-eqz v1, :cond_103

    if-eqz v3, :cond_103

    invoke-interface {v15, v14}, Lc7/p;->p(Lc7/k;)Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-interface {v15, v3, v2}, Lc7/p;->E(Lc7/i;Z)Lc7/i;

    move-result-object v2

    goto :goto_ec

    :cond_e2
    invoke-interface {v15, v14}, Lc7/p;->t(Lc7/i;)Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-interface {v15, v3}, Lc7/p;->q0(Lc7/i;)Lc7/i;

    move-result-object v2

    :goto_ec
    move-object v3, v2

    :cond_ed
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-static/range {v0 .. v5}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result v0

    if-eqz v0, :cond_103

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1d4

    :cond_103
    invoke-interface {v15, v14}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v0

    invoke-interface {v15, v0}, Lc7/p;->B(Lc7/n;)Z

    move-result v1

    if-eqz v1, :cond_147

    invoke-interface {v15, v14}, Lc7/p;->p(Lc7/k;)Z

    invoke-interface {v15, v0}, Lc7/p;->Y(Lc7/n;)Ljava/util/Collection;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_11f

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11f

    goto :goto_140

    :cond_11f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_123
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lc7/i;

    sget-object v0, Ly6/i;->a:Ly6/i;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-static/range {v0 .. v5}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result v0

    if-nez v0, :cond_123

    const/4 v0, 0x0

    goto :goto_141

    :cond_140
    :goto_140
    const/4 v0, 0x1

    :goto_141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1d4

    :cond_147
    invoke-interface {v15, v13}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v0

    instance-of v1, v13, Lc7/d;

    if-nez v1, :cond_17d

    invoke-interface {v15, v0}, Lc7/p;->B(Lc7/n;)Z

    move-result v1

    if-eqz v1, :cond_194

    invoke-interface {v15, v0}, Lc7/p;->Y(Lc7/n;)Ljava/util/Collection;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_164

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_164

    goto :goto_17a

    :cond_164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_168
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc7/i;

    instance-of v1, v1, Lc7/d;

    if-nez v1, :cond_168

    const/4 v0, 0x0

    goto :goto_17b

    :cond_17a
    :goto_17a
    const/4 v0, 0x1

    :goto_17b
    if-eqz v0, :cond_194

    :cond_17d
    sget-object v0, Ly6/i;->a:Ly6/i;

    iget-object v1, v6, Ly6/i1;->d:Lc7/p;

    invoke-virtual {v0, v1, v14, v13}, Ly6/i;->f(Lc7/p;Lc7/i;Lc7/i;)Lc7/o;

    move-result-object v0

    if-eqz v0, :cond_194

    invoke-interface {v15, v14}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Lc7/p;->k(Lc7/o;Lc7/n;)Z

    move-result v0

    if-eqz v0, :cond_194

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1d4

    :cond_194
    move-object/from16 v0, v16

    goto :goto_1d4

    :cond_197
    :goto_197
    iget-boolean v0, v6, Ly6/i1;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1d4

    :cond_19e
    :goto_19e
    iget-boolean v0, v6, Ly6/i1;->a:Z

    if-eqz v0, :cond_1a5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1d4

    :cond_1a5
    invoke-interface {v15, v13}, Lc7/p;->p(Lc7/k;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    invoke-interface {v15, v14}, Lc7/p;->p(Lc7/k;)Z

    move-result v0

    if-nez v0, :cond_1b4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1d4

    :cond_1b4
    const/4 v0, 0x0

    invoke-interface {v15, v13, v0}, Lc7/p;->a(Lc7/k;Z)Lc7/k;

    move-result-object v1

    invoke-interface {v15, v14, v0}, Lc7/p;->a(Lc7/k;Z)Lc7/k;

    move-result-object v0

    const-string v2, "context"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "a"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v1, v0}, Ly6/e;->b(Lc7/p;Lc7/i;Lc7/i;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1d4
    if-eqz v0, :cond_1df

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v6, v11, v12}, Ly6/i1;->a(Lc7/i;Lc7/i;)Ljava/lang/Boolean;

    goto/16 :goto_6ba

    :cond_1df
    invoke-virtual {v6, v11, v12}, Ly6/i1;->a(Lc7/i;Lc7/i;)Ljava/lang/Boolean;

    invoke-interface {v10, v11}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object v0

    invoke-interface {v10, v12}, Lc7/p;->o(Lc7/i;)Lc7/k;

    move-result-object v1

    iget-object v2, v6, Ly6/i1;->d:Lc7/p;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v3, v1}, Lc7/p;->p(Lc7/k;)Z

    move-result v4

    const-string v5, "current"

    const-string v9, ". Supertypes = "

    const-string v10, "Too many supertypes for type: "

    const/16 v11, 0x3e8

    if-eqz v4, :cond_207

    goto/16 :goto_33a

    :cond_207
    invoke-interface {v3, v0}, Lc7/p;->t(Lc7/i;)Z

    move-result v4

    if-nez v4, :cond_33a

    invoke-interface {v3, v0}, Lc7/p;->m(Lc7/i;)Z

    move-result v4

    if-eqz v4, :cond_215

    goto/16 :goto_33a

    :cond_215
    instance-of v4, v0, Lc7/d;

    if-eqz v4, :cond_224

    move-object v4, v0

    check-cast v4, Lc7/d;

    invoke-interface {v3, v4}, Lc7/p;->k0(Lc7/d;)Z

    move-result v4

    if-eqz v4, :cond_224

    goto/16 :goto_33a

    :cond_224
    sget-object v4, Ly6/i1$b$b;->a:Ly6/i1$b$b;

    invoke-static {v6, v0, v4}, Ly6/d;->a(Ly6/i1;Lc7/k;Ly6/i1$b;)Z

    move-result v4

    if-eqz v4, :cond_22e

    goto/16 :goto_33a

    :cond_22e
    invoke-interface {v3, v1}, Lc7/p;->t(Lc7/i;)Z

    move-result v4

    if-eqz v4, :cond_236

    goto/16 :goto_338

    :cond_236
    sget-object v4, Ly6/i1$b$d;->a:Ly6/i1$b$d;

    invoke-static {v6, v1, v4}, Ly6/d;->a(Ly6/i1;Lc7/k;Ly6/i1$b;)Z

    move-result v4

    if-eqz v4, :cond_240

    goto/16 :goto_338

    :cond_240
    invoke-interface {v3, v0}, Lc7/p;->H(Lc7/k;)Z

    move-result v4

    if-eqz v4, :cond_248

    goto/16 :goto_338

    :cond_248
    invoke-interface {v3, v1}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v3

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "start"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "end"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v6, Ly6/i1;->d:Lc7/p;

    invoke-static {v6, v0, v3}, Ly6/d;->b(Ly6/i1;Lc7/k;Lc7/n;)Z

    move-result v12

    if-eqz v12, :cond_263

    goto/16 :goto_33a

    :cond_263
    invoke-virtual/range {p1 .. p1}, Ly6/i1;->d()V

    iget-object v12, v6, Ly6/i1;->h:Ljava/util/ArrayDeque;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v6, Ly6/i1;->i:Ljava/util/Set;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_273
    :goto_273
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_335

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v14

    if-gt v14, v11, :cond_30c

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc7/k;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_273

    invoke-interface {v4, v14}, Lc7/p;->p(Lc7/k;)Z

    move-result v11

    if-eqz v11, :cond_299

    sget-object v11, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    goto :goto_29b

    :cond_299
    sget-object v11, Ly6/i1$b$b;->a:Ly6/i1$b$b;

    :goto_29b
    sget-object v15, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_2a6

    goto :goto_2a8

    :cond_2a6
    move-object/from16 v11, v16

    :goto_2a8
    if-nez v11, :cond_2ad

    :cond_2aa
    move-object/from16 v17, v4

    goto :goto_306

    :cond_2ad
    iget-object v15, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v15, v14}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v14

    invoke-interface {v15, v14}, Lc7/p;->Y(Lc7/n;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2bb
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2aa

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc7/i;

    invoke-virtual {v11, v6, v15}, Ly6/i1$b;->a(Ly6/i1;Lc7/i;)Lc7/k;

    move-result-object v15

    move-object/from16 v17, v4

    iget-object v4, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v4, v15}, Lc7/p;->z(Lc7/i;)Z

    move-result v18

    if-eqz v18, :cond_2d8

    move-object/from16 p0, v11

    goto :goto_2ee

    :cond_2d8
    invoke-interface {v4, v15}, Lc7/p;->p(Lc7/k;)Z

    move-result v18

    if-eqz v18, :cond_2e2

    const/4 v4, 0x0

    move-object/from16 p0, v11

    goto :goto_2f8

    :cond_2e2
    move-object/from16 p0, v11

    iget-boolean v11, v6, Ly6/i1;->b:Z

    if-eqz v11, :cond_2f0

    invoke-interface {v4, v15}, Lc7/p;->l(Lc7/k;)Z

    move-result v11

    if-eqz v11, :cond_2f0

    :goto_2ee
    const/4 v4, 0x1

    goto :goto_2f8

    :cond_2f0
    invoke-interface {v4, v15}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v11

    invoke-interface {v4, v11, v3}, Lc7/p;->w(Lc7/n;Lc7/n;)Z

    move-result v4

    :goto_2f8
    if-eqz v4, :cond_2fe

    invoke-virtual/range {p1 .. p1}, Ly6/i1;->b()V

    goto :goto_33a

    :cond_2fe
    invoke-virtual {v12, v15}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p0

    move-object/from16 v4, v17

    goto :goto_2bb

    :goto_306
    const/16 v11, 0x3e8

    move-object/from16 v4, v17

    goto/16 :goto_273

    :cond_30c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10, v0, v9}, Ly6/c;->a(Ljava/lang/String;Lc7/k;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v13

    invoke-static/range {v17 .. v24}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_335
    invoke-virtual/range {p1 .. p1}, Ly6/i1;->b()V

    :goto_338
    const/4 v3, 0x0

    goto :goto_33b

    :cond_33a
    :goto_33a
    const/4 v3, 0x1

    :goto_33b
    if-nez v3, :cond_33f

    goto/16 :goto_6b9

    :cond_33f
    invoke-interface {v2, v0}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object v3

    invoke-interface {v2, v1}, Lc7/p;->o(Lc7/i;)Lc7/k;

    move-result-object v4

    iget-object v11, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v11, v3}, Lc7/p;->D(Lc7/k;)Z

    move-result v12

    if-nez v12, :cond_358

    invoke-interface {v11, v4}, Lc7/p;->D(Lc7/k;)Z

    move-result v12

    if-nez v12, :cond_358

    move-object/from16 v3, v16

    goto :goto_366

    :cond_358
    invoke-static {v11, v3}, Ly6/i;->a(Lc7/p;Lc7/k;)Z

    move-result v12

    if-eqz v12, :cond_369

    invoke-static {v11, v4}, Ly6/i;->a(Lc7/p;Lc7/k;)Z

    move-result v12

    if-eqz v12, :cond_369

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_366
    const/4 v4, 0x0

    goto/16 :goto_3d1

    :cond_369
    invoke-interface {v11, v3}, Lc7/p;->D(Lc7/k;)Z

    move-result v12

    if-eqz v12, :cond_37a

    const/4 v12, 0x0

    invoke-static {v11, v6, v3, v4, v12}, Ly6/i;->b(Lc7/p;Ly6/i1;Lc7/k;Lc7/k;Z)Z

    move-result v3

    if-eqz v3, :cond_3ce

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_378
    move v4, v12

    goto :goto_3d1

    :cond_37a
    const/4 v12, 0x0

    invoke-interface {v11, v4}, Lc7/p;->D(Lc7/k;)Z

    move-result v13

    if-eqz v13, :cond_3ce

    invoke-interface {v11, v3}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v13

    instance-of v14, v13, Lc7/h;

    if-eqz v14, :cond_3c1

    invoke-interface {v11, v13}, Lc7/p;->Y(Lc7/n;)Ljava/util/Collection;

    move-result-object v13

    instance-of v14, v13, Ljava/util/Collection;

    if-eqz v14, :cond_398

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_398

    goto :goto_3bc

    :cond_398
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_39c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3bc

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc7/i;

    invoke-interface {v11, v14}, Lc7/p;->e(Lc7/i;)Lc7/k;

    move-result-object v14

    if-eqz v14, :cond_3b7

    invoke-interface {v11, v14}, Lc7/p;->D(Lc7/k;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3b7

    const/4 v14, 0x1

    goto :goto_3b8

    :cond_3b7
    move v14, v12

    :goto_3b8
    if-eqz v14, :cond_39c

    const/4 v13, 0x1

    goto :goto_3bd

    :cond_3bc
    :goto_3bc
    move v13, v12

    :goto_3bd
    if-eqz v13, :cond_3c1

    const/4 v13, 0x1

    goto :goto_3c2

    :cond_3c1
    move v13, v12

    :goto_3c2
    if-nez v13, :cond_3cb

    const/4 v13, 0x1

    invoke-static {v11, v6, v4, v3, v13}, Ly6/i;->b(Lc7/p;Ly6/i1;Lc7/k;Lc7/k;Z)Z

    move-result v3

    if-eqz v3, :cond_3ce

    :cond_3cb
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_378

    :cond_3ce
    move v4, v12

    move-object/from16 v3, v16

    :goto_3d1
    if-eqz v3, :cond_3dc

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v6, v0, v1}, Ly6/i1;->a(Lc7/i;Lc7/i;)Ljava/lang/Boolean;

    goto/16 :goto_6ba

    :cond_3dc
    invoke-interface {v2, v1}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v3

    invoke-interface {v2, v0}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lc7/p;->w(Lc7/n;Lc7/n;)Z

    move-result v11

    if-eqz v11, :cond_3f2

    invoke-interface {v2, v3}, Lc7/p;->e0(Lc7/n;)I

    move-result v11

    if-nez v11, :cond_3f2

    goto/16 :goto_5ca

    :cond_3f2
    invoke-interface {v2, v1}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v11

    invoke-interface {v2, v11}, Lc7/p;->o0(Lc7/n;)Z

    move-result v11

    if-eqz v11, :cond_3fe

    goto/16 :goto_5ca

    :cond_3fe
    sget-object v11, Ly6/i;->a:Ly6/i;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "superConstructor"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v7, v0}, Lc7/p;->H(Lc7/k;)Z

    move-result v8

    if-eqz v8, :cond_419

    invoke-virtual {v11, v6, v0, v3}, Ly6/i;->d(Ly6/i1;Lc7/k;Lc7/n;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_4ef

    :cond_419
    invoke-interface {v7, v3}, Lc7/p;->Q(Lc7/n;)Z

    move-result v8

    if-nez v8, :cond_42b

    invoke-interface {v7, v3}, Lc7/p;->j(Lc7/n;)Z

    move-result v8

    if-nez v8, :cond_42b

    invoke-virtual {v11, v6, v0, v3}, Ly6/i;->c(Ly6/i1;Lc7/k;Lc7/n;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_4ef

    :cond_42b
    new-instance v8, Li7/d;

    invoke-direct {v8}, Li7/d;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ly6/i1;->d()V

    iget-object v11, v6, Ly6/i1;->h:Ljava/util/ArrayDeque;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v6, Ly6/i1;->i:Ljava/util/Set;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_440
    :goto_440
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_4c8

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v13

    const/16 v14, 0x3e8

    if-gt v13, v14, :cond_49f

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc7/k;

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_440

    invoke-interface {v7, v13}, Lc7/p;->H(Lc7/k;)Z

    move-result v14

    if-eqz v14, :cond_46b

    invoke-virtual {v8, v13}, Li7/d;->add(Ljava/lang/Object;)Z

    sget-object v14, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    goto :goto_46d

    :cond_46b
    sget-object v14, Ly6/i1$b$b;->a:Ly6/i1$b$b;

    :goto_46d
    sget-object v15, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_478

    goto :goto_47a

    :cond_478
    move-object/from16 v14, v16

    :goto_47a
    if-nez v14, :cond_47d

    goto :goto_440

    :cond_47d
    iget-object v15, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v15, v13}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v13

    invoke-interface {v15, v13}, Lc7/p;->Y(Lc7/n;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_48b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_440

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc7/i;

    invoke-virtual {v14, v6, v15}, Ly6/i1$b;->a(Ly6/i1;Lc7/i;)Lc7/k;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_48b

    :cond_49f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10, v0, v9}, Ly6/c;->a(Ljava/lang/String;Lc7/k;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v12

    invoke-static/range {v17 .. v24}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c8
    invoke-virtual/range {p1 .. p1}, Ly6/i1;->b()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Li7/d;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4d4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4ef

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc7/k;

    sget-object v12, Ly6/i;->a:Ly6/i;

    const-string v13, "it"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v6, v11, v3}, Ly6/i;->d(Ly6/i1;Lc7/k;Lc7/n;)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_4d4

    :cond_4ef
    :goto_4ef
    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v7, v11}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4fe
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_51a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc7/k;

    invoke-virtual {v6, v12}, Ly6/i1;->e(Lc7/i;)Lc7/i;

    move-result-object v13

    invoke-interface {v2, v13}, Lc7/p;->e(Lc7/i;)Lc7/k;

    move-result-object v13

    if-nez v13, :cond_515

    goto :goto_516

    :cond_515
    move-object v12, v13

    :goto_516
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4fe

    :cond_51a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_5f5

    const/4 v5, 0x1

    if-eq v7, v5, :cond_5e3

    new-instance v5, Lc7/a;

    invoke-interface {v2, v3}, Lc7/p;->e0(Lc7/n;)I

    move-result v7

    invoke-direct {v5, v7}, Lc7/a;-><init>(I)V

    invoke-interface {v2, v3}, Lc7/p;->e0(Lc7/n;)I

    move-result v7

    move v9, v4

    move v10, v9

    :goto_532
    if-ge v4, v7, :cond_5c0

    if-nez v9, :cond_545

    invoke-interface {v2, v3, v4}, Lc7/p;->i0(Lc7/n;I)Lc7/o;

    move-result-object v9

    invoke-interface {v2, v9}, Lc7/p;->n(Lc7/o;)Lc7/t;

    move-result-object v9

    sget-object v12, Lc7/t;->c:Lc7/t;

    if-eq v9, v12, :cond_543

    goto :goto_545

    :cond_543
    move v9, v10

    goto :goto_546

    :cond_545
    :goto_545
    const/4 v9, 0x1

    :goto_546
    if-nez v9, :cond_5b9

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8, v11}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_555
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5ae

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc7/k;

    invoke-interface {v2, v12, v4}, Lc7/p;->g(Lc7/k;I)Lc7/m;

    move-result-object v13

    if-eqz v13, :cond_583

    invoke-interface {v2, v13}, Lc7/p;->r0(Lc7/m;)Lc7/t;

    move-result-object v14

    sget-object v15, Lc7/t;->d:Lc7/t;

    if-ne v14, v15, :cond_571

    const/4 v14, 0x1

    goto :goto_572

    :cond_571
    const/4 v14, 0x0

    :goto_572
    if-eqz v14, :cond_575

    goto :goto_577

    :cond_575
    move-object/from16 v13, v16

    :goto_577
    if-eqz v13, :cond_583

    invoke-interface {v2, v13}, Lc7/p;->g0(Lc7/m;)Lc7/i;

    move-result-object v13

    if-eqz v13, :cond_583

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_555

    :cond_583
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", superType: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5ae
    invoke-interface {v2, v10}, Lc7/p;->Z(Ljava/util/List;)Lc7/i;

    move-result-object v10

    invoke-interface {v2, v10}, Lc7/p;->U(Lc7/i;)Lc7/m;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b9
    add-int/lit8 v4, v4, 0x1

    const/16 v11, 0xa

    const/4 v10, 0x0

    goto/16 :goto_532

    :cond_5c0
    if-nez v9, :cond_5cd

    sget-object v0, Ly6/i;->a:Ly6/i;

    invoke-virtual {v0, v6, v5, v1}, Ly6/i;->h(Ly6/i1;Lc7/l;Lc7/k;)Z

    move-result v0

    if-eqz v0, :cond_5cd

    :goto_5ca
    const/4 v2, 0x1

    goto/16 :goto_6ba

    :cond_5cd
    new-instance v0, Ly6/h;

    invoke-direct {v0, v8, v6, v2, v1}, Ly6/h;-><init>(Ljava/util/List;Ly6/i1;Lc7/p;Lc7/k;)V

    const-string v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ly6/i1$a$a;

    invoke-direct {v1}, Ly6/i1$a$a;-><init>()V

    invoke-virtual {v0, v1}, Ly6/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Ly6/i1$a$a;->a:Z

    goto/16 :goto_6ba

    :cond_5e3
    sget-object v0, Ly6/i;->a:Ly6/i;

    invoke-static {v8}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc7/k;

    invoke-interface {v2, v3}, Lc7/p;->F(Lc7/k;)Lc7/l;

    move-result-object v2

    invoke-virtual {v0, v6, v2, v1}, Ly6/i;->h(Ly6/i1;Lc7/l;Lc7/k;)Z

    move-result v2

    goto/16 :goto_6ba

    :cond_5f5
    iget-object v1, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v1, v0}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v2

    invoke-interface {v1, v2}, Lc7/p;->Q(Lc7/n;)Z

    move-result v3

    if-eqz v3, :cond_607

    invoke-interface {v1, v2}, Lc7/p;->b0(Lc7/n;)Z

    move-result v2

    goto/16 :goto_6ba

    :cond_607
    invoke-interface {v1, v0}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v2

    invoke-interface {v1, v2}, Lc7/p;->b0(Lc7/n;)Z

    move-result v2

    if-eqz v2, :cond_612

    goto :goto_5ca

    :cond_612
    invoke-virtual/range {p1 .. p1}, Ly6/i1;->d()V

    iget-object v2, v6, Ly6/i1;->h:Ljava/util/ArrayDeque;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v6, Ly6/i1;->i:Ljava/util/Set;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_622
    :goto_622
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6b6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v7, 0x3e8

    if-gt v4, v7, :cond_68d

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc7/k;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_622

    invoke-interface {v1, v4}, Lc7/p;->H(Lc7/k;)Z

    move-result v7

    if-eqz v7, :cond_64a

    sget-object v7, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    goto :goto_64c

    :cond_64a
    sget-object v7, Ly6/i1$b$b;->a:Ly6/i1$b$b;

    :goto_64c
    sget-object v8, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    if-eqz v8, :cond_657

    goto :goto_659

    :cond_657
    move-object/from16 v7, v16

    :goto_659
    if-nez v7, :cond_65c

    goto :goto_622

    :cond_65c
    iget-object v8, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v8, v4}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v4

    invoke-interface {v8, v4}, Lc7/p;->Y(Lc7/n;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_622

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc7/i;

    invoke-virtual {v7, v6, v8}, Ly6/i1$b;->a(Ly6/i1;Lc7/i;)Lc7/k;

    move-result-object v8

    invoke-interface {v1, v8}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v12

    invoke-interface {v1, v12}, Lc7/p;->b0(Lc7/n;)Z

    move-result v12

    if-eqz v12, :cond_689

    invoke-virtual/range {p1 .. p1}, Ly6/i1;->b()V

    move v2, v11

    goto :goto_6ba

    :cond_689
    invoke-virtual {v2, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_66a

    :cond_68d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10, v0, v9}, Ly6/c;->a(Ljava/lang/String;Lc7/k;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v24}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b6
    invoke-virtual/range {p1 .. p1}, Ly6/i1;->b()V

    :goto_6b9
    const/4 v2, 0x0

    :goto_6ba
    return v2
.end method


# virtual methods
.method public final c(Ly6/i1;Lc7/k;Lc7/n;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/i1;",
            "Lc7/k;",
            "Lc7/n;",
            ")",
            "Ljava/util/List<",
            "Lc7/k;",
            ">;"
        }
    .end annotation

    sget-object p0, Lc7/b;->a:Lc7/b;

    iget-object v0, p1, Ly6/i1;->d:Lc7/p;

    invoke-interface {v0, p2, p3}, Lc7/p;->j0(Lc7/k;Lc7/n;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    invoke-interface {v0, p3}, Lc7/p;->Q(Lc7/n;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {v0, p2}, Lc7/p;->H(Lc7/k;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_1a
    invoke-interface {v0, p3}, Lc7/p;->X(Lc7/n;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0, p2}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lc7/p;->w(Lc7/n;Lc7/n;)Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-interface {v0, p2, p0}, Lc7/p;->n0(Lc7/k;Lc7/b;)Lc7/k;

    move-result-object p0

    if-nez p0, :cond_31

    goto :goto_32

    :cond_31
    move-object p2, p0

    :goto_32
    invoke-static {p2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_39

    :cond_37
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_39
    return-object p0

    :cond_3a
    new-instance v1, Li7/d;

    invoke-direct {v1}, Li7/d;-><init>()V

    invoke-virtual {p1}, Ly6/i1;->d()V

    iget-object v2, p1, Ly6/i1;->h:Ljava/util/ArrayDeque;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p1, Ly6/i1;->i:Ljava/util/Set;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_4f
    :goto_4f
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_ec

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_c7

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc7/k;

    const-string v5, "current"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v0, v4, p0}, Lc7/p;->n0(Lc7/k;Lc7/b;)Lc7/k;

    move-result-object v5

    if-nez v5, :cond_77

    move-object v5, v4

    :cond_77
    invoke-interface {v0, v5}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v6

    invoke-interface {v0, v6, p3}, Lc7/p;->w(Lc7/n;Lc7/n;)Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    goto :goto_96

    :cond_87
    invoke-interface {v0, v5}, Lc7/p;->I(Lc7/i;)I

    move-result v6

    if-nez v6, :cond_90

    sget-object v5, Ly6/i1$b$b;->a:Ly6/i1$b$b;

    goto :goto_96

    :cond_90
    iget-object v6, p1, Ly6/i1;->d:Lc7/p;

    invoke-interface {v6, v5}, Lc7/p;->W(Lc7/k;)Ly6/i1$b;

    move-result-object v5

    :goto_96
    sget-object v6, Ly6/i1$b$c;->a:Ly6/i1$b$c;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a1

    goto :goto_a2

    :cond_a1
    const/4 v5, 0x0

    :goto_a2
    if-nez v5, :cond_a5

    goto :goto_4f

    :cond_a5
    iget-object v6, p1, Ly6/i1;->d:Lc7/p;

    invoke-interface {v6, v4}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v4

    invoke-interface {v6, v4}, Lc7/p;->Y(Lc7/n;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc7/i;

    invoke-virtual {v5, p1, v6}, Ly6/i1$b;->a(Ly6/i1;Lc7/i;)Lc7/k;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    :cond_c7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too many supertypes for type: "

    const-string p3, ". Supertypes = "

    invoke-static {p1, p2, p3}, Ly6/c;->a(Ljava/lang/String;Lc7/k;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    invoke-static/range {v3 .. v10}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ec
    invoke-virtual {p1}, Ly6/i1;->b()V

    return-object v1
.end method

.method public final d(Ly6/i1;Lc7/k;Lc7/n;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/i1;",
            "Lc7/k;",
            "Lc7/n;",
            ")",
            "Ljava/util/List<",
            "Lc7/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ly6/i;->c(Ly6/i1;Lc7/k;Lc7/n;)Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Ly6/i1;->d:Lc7/p;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_e

    goto :goto_57

    :cond_e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_17
    :goto_17
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lc7/k;

    invoke-interface {p1, v2}, Lc7/p;->F(Lc7/k;)Lc7/l;

    move-result-object v2

    invoke-interface {p1, v2}, Lc7/p;->S(Lc7/l;)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2f
    if-ge v5, v3, :cond_49

    invoke-interface {p1, v2, v5}, Lc7/p;->l0(Lc7/l;I)Lc7/m;

    move-result-object v6

    invoke-interface {p1, v6}, Lc7/p;->g0(Lc7/m;)Lc7/i;

    move-result-object v6

    invoke-interface {p1, v6}, Lc7/p;->q(Lc7/i;)Lc7/g;

    move-result-object v6

    if-nez v6, :cond_41

    move v6, v1

    goto :goto_42

    :cond_41
    move v6, v4

    :goto_42
    if-nez v6, :cond_46

    move v1, v4

    goto :goto_49

    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_49
    :goto_49
    if-eqz v1, :cond_17

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_4f
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_57

    move-object p0, p2

    :cond_57
    :goto_57
    return-object p0
.end method

.method public final e(Ly6/i1;Lc7/i;Lc7/i;)Z
    .registers 13

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "a"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Ly6/i1;->d:Lc7/p;

    const/4 v0, 0x1

    if-ne p2, p3, :cond_15

    return v0

    :cond_15
    sget-object v7, Ly6/i;->a:Ly6/i;

    invoke-virtual {v7, p0, p2}, Ly6/i;->g(Lc7/p;Lc7/i;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_6b

    invoke-virtual {v7, p0, p3}, Ly6/i;->g(Lc7/p;Lc7/i;)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-virtual {p1, p2}, Ly6/i1;->f(Lc7/i;)Lc7/i;

    move-result-object v1

    invoke-virtual {p1, v1}, Ly6/i1;->e(Lc7/i;)Lc7/i;

    move-result-object v1

    invoke-virtual {p1, p3}, Ly6/i1;->f(Lc7/i;)Lc7/i;

    move-result-object v2

    invoke-virtual {p1, v2}, Ly6/i1;->e(Lc7/i;)Lc7/i;

    move-result-object v2

    invoke-interface {p0, v1}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object v3

    invoke-interface {p0, v1}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object v4

    invoke-interface {p0, v2}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lc7/p;->w(Lc7/n;Lc7/n;)Z

    move-result v4

    if-nez v4, :cond_47

    return v8

    :cond_47
    invoke-interface {p0, v3}, Lc7/p;->I(Lc7/i;)I

    move-result v4

    if-nez v4, :cond_6b

    invoke-interface {p0, v1}, Lc7/p;->x(Lc7/i;)Z

    move-result p1

    if-nez p1, :cond_6a

    invoke-interface {p0, v2}, Lc7/p;->x(Lc7/i;)Z

    move-result p1

    if-eqz p1, :cond_5a

    goto :goto_6a

    :cond_5a
    invoke-interface {p0, v3}, Lc7/p;->p(Lc7/k;)Z

    move-result p1

    invoke-interface {p0, v2}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object p2

    invoke-interface {p0, p2}, Lc7/p;->p(Lc7/k;)Z

    move-result p0

    if-ne p1, p0, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v8

    :cond_6a
    :goto_6a
    return v0

    :cond_6b
    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result p0

    if-eqz p0, :cond_86

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v7

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result p0

    if-eqz p0, :cond_86

    goto :goto_87

    :cond_86
    move v0, v8

    :goto_87
    return v0
.end method

.method public final f(Lc7/p;Lc7/i;Lc7/i;)Lc7/o;
    .registers 11

    invoke-interface {p1, p2}, Lc7/p;->I(Lc7/i;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/4 v3, 0x0

    if-ge v2, v0, :cond_67

    invoke-interface {p1, p2, v2}, Lc7/p;->A(Lc7/i;I)Lc7/m;

    move-result-object v4

    invoke-interface {p1, v4}, Lc7/p;->h0(Lc7/m;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_16

    move-object v3, v4

    :cond_16
    if-eqz v3, :cond_64

    invoke-interface {p1, v3}, Lc7/p;->g0(Lc7/m;)Lc7/i;

    move-result-object v3

    if-nez v3, :cond_1f

    goto :goto_64

    :cond_1f
    invoke-interface {p1, v3}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object v4

    invoke-interface {p1, v4}, Lc7/p;->G(Lc7/k;)Lc7/k;

    move-result-object v4

    invoke-interface {p1, v4}, Lc7/p;->s(Lc7/i;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {p1, p3}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object v4

    invoke-interface {p1, v4}, Lc7/p;->G(Lc7/k;)Lc7/k;

    move-result-object v4

    invoke-interface {p1, v4}, Lc7/p;->s(Lc7/i;)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v6, v1

    :goto_3d
    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    if-eqz v6, :cond_54

    invoke-interface {p1, v3}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object v4

    invoke-interface {p1, p3}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_5b

    :cond_54
    invoke-virtual {p0, p1, v3, p3}, Ly6/i;->f(Lc7/p;Lc7/i;Lc7/i;)Lc7/o;

    move-result-object v3

    if-eqz v3, :cond_64

    return-object v3

    :cond_5b
    :goto_5b
    invoke-interface {p1, p2}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lc7/p;->i0(Lc7/n;I)Lc7/o;

    move-result-object p0

    return-object p0

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_67
    return-object v3
.end method

.method public final g(Lc7/p;Lc7/i;)Z
    .registers 3

    invoke-interface {p1, p2}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object p0

    invoke-interface {p1, p0}, Lc7/p;->V(Lc7/n;)Z

    move-result p0

    if-eqz p0, :cond_34

    invoke-interface {p1, p2}, Lc7/p;->J(Lc7/i;)Z

    move-result p0

    if-nez p0, :cond_34

    invoke-interface {p1, p2}, Lc7/p;->t(Lc7/i;)Z

    move-result p0

    if-nez p0, :cond_34

    invoke-interface {p1, p2}, Lc7/p;->m(Lc7/i;)Z

    move-result p0

    if-nez p0, :cond_34

    invoke-interface {p1, p2}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object p0

    invoke-interface {p1, p0}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object p0

    invoke-interface {p1, p2}, Lc7/p;->o(Lc7/i;)Lc7/k;

    move-result-object p2

    invoke-interface {p1, p2}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    return p0
.end method

.method public final h(Ly6/i1;Lc7/l;Lc7/k;)Z
    .registers 20

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "<this>"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capturedSubArguments"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v6, Ly6/i1;->d:Lc7/p;

    invoke-interface {v9, v8}, Lc7/p;->d(Lc7/k;)Lc7/n;

    move-result-object v10

    invoke-interface {v9, v7}, Lc7/p;->S(Lc7/l;)I

    move-result v0

    invoke-interface {v9, v10}, Lc7/p;->e0(Lc7/n;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v0, v11, :cond_ec

    invoke-interface {v9, v8}, Lc7/p;->I(Lc7/i;)I

    move-result v1

    if-eq v0, v1, :cond_2e

    goto/16 :goto_ec

    :cond_2e
    move v13, v12

    :goto_2f
    const/4 v0, 0x1

    if-ge v13, v11, :cond_eb

    invoke-interface {v9, v8, v13}, Lc7/p;->A(Lc7/i;I)Lc7/m;

    move-result-object v1

    invoke-interface {v9, v1}, Lc7/p;->h0(Lc7/m;)Z

    move-result v2

    if-nez v2, :cond_e7

    invoke-interface {v9, v1}, Lc7/p;->g0(Lc7/m;)Lc7/i;

    move-result-object v3

    invoke-interface {v9, v7, v13}, Lc7/p;->l0(Lc7/l;I)Lc7/m;

    move-result-object v2

    invoke-interface {v9, v2}, Lc7/p;->r0(Lc7/m;)Lc7/t;

    sget-object v4, Lc7/t;->d:Lc7/t;

    invoke-interface {v9, v2}, Lc7/p;->g0(Lc7/m;)Lc7/i;

    move-result-object v5

    sget-object v2, Ly6/i;->a:Ly6/i;

    invoke-interface {v9, v10, v13}, Lc7/p;->i0(Lc7/n;I)Lc7/o;

    move-result-object v14

    invoke-interface {v9, v14}, Lc7/p;->n(Lc7/o;)Lc7/t;

    move-result-object v14

    invoke-interface {v9, v1}, Lc7/p;->r0(Lc7/m;)Lc7/t;

    move-result-object v1

    const-string v15, "declared"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "useSite"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v14, v4, :cond_69

    move-object v14, v1

    goto :goto_70

    :cond_69
    if-ne v1, v4, :cond_6c

    goto :goto_70

    :cond_6c
    if-ne v14, v1, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v14, 0x0

    :goto_70
    if-nez v14, :cond_75

    iget-boolean v0, v6, Ly6/i1;->a:Z

    return v0

    :cond_75
    if-ne v14, v4, :cond_85

    invoke-virtual {v2, v9, v5, v3, v10}, Ly6/i;->k(Lc7/p;Lc7/i;Lc7/i;Lc7/n;)Z

    move-result v1

    if-nez v1, :cond_83

    invoke-virtual {v2, v9, v3, v5, v10}, Ly6/i;->k(Lc7/p;Lc7/i;Lc7/i;Lc7/n;)Z

    move-result v1

    if-eqz v1, :cond_85

    :cond_83
    move v1, v0

    goto :goto_86

    :cond_85
    move v1, v12

    :goto_86
    if-eqz v1, :cond_89

    goto :goto_e7

    :cond_89
    iget v1, v6, Ly6/i1;->g:I

    const/16 v4, 0x64

    if-gt v1, v4, :cond_cc

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Ly6/i1;->g:I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_b6

    if-eq v1, v0, :cond_a9

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a3

    invoke-virtual {v2, v6, v5, v3}, Ly6/i;->e(Ly6/i1;Lc7/i;Lc7/i;)Z

    move-result v0

    goto :goto_c3

    :cond_a3
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0

    :cond_a9
    const/4 v4, 0x0

    const/16 v14, 0x8

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v2, v5

    move v5, v14

    invoke-static/range {v0 .. v5}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result v0

    goto :goto_c3

    :cond_b6
    const/4 v4, 0x0

    const/16 v14, 0x8

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move v5, v14

    invoke-static/range {v0 .. v5}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result v0

    :goto_c3
    iget v1, v6, Ly6/i1;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v6, Ly6/i1;->g:I

    if-nez v0, :cond_e7

    return v12

    :cond_cc
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arguments depth is too high. Some related argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e7
    :goto_e7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2f

    :cond_eb
    return v0

    :cond_ec
    :goto_ec
    return v12
.end method

.method public final i(Ly6/i1;Lc7/i;Lc7/i;)Z
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Ly6/i;->j(Ly6/i;Ly6/i1;Lc7/i;Lc7/i;ZI)Z

    move-result p0

    return p0
.end method

.method public final k(Lc7/p;Lc7/i;Lc7/i;Lc7/n;)Z
    .registers 6

    invoke-interface {p1, p2}, Lc7/p;->e(Lc7/i;)Lc7/k;

    move-result-object p0

    instance-of p2, p0, Lc7/d;

    const/4 v0, 0x0

    if-eqz p2, :cond_46

    check-cast p0, Lc7/d;

    invoke-interface {p1, p0}, Lc7/p;->L(Lc7/d;)Z

    move-result p2

    if-nez p2, :cond_46

    invoke-interface {p1, p0}, Lc7/p;->K(Lc7/d;)Lc7/c;

    move-result-object p2

    invoke-interface {p1, p2}, Lc7/p;->d0(Lc7/c;)Lc7/m;

    move-result-object p2

    invoke-interface {p1, p2}, Lc7/p;->h0(Lc7/m;)Z

    move-result p2

    if-nez p2, :cond_20

    goto :goto_46

    :cond_20
    invoke-interface {p1, p0}, Lc7/p;->r(Lc7/d;)Lc7/b;

    move-result-object p0

    sget-object p2, Lc7/b;->a:Lc7/b;

    if-eq p0, p2, :cond_29

    return v0

    :cond_29
    invoke-interface {p1, p3}, Lc7/p;->p0(Lc7/i;)Lc7/n;

    move-result-object p0

    instance-of p2, p0, Lc7/s;

    if-eqz p2, :cond_34

    check-cast p0, Lc7/s;

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    if-nez p0, :cond_38

    return v0

    :cond_38
    invoke-interface {p1, p0}, Lc7/p;->i(Lc7/s;)Lc7/o;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p0, :cond_46

    invoke-interface {p1, p0, p4}, Lc7/p;->k(Lc7/o;Lc7/n;)Z

    move-result p0

    if-ne p0, p2, :cond_46

    move v0, p2

    :cond_46
    :goto_46
    return v0
.end method
