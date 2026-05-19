.class public final Lw6/o;
.super Ll5/f;
.source ""

# interfaces
.implements Lw6/j;


# instance fields
.field public final h:Lx6/m;

.field public final i:Lc6/r;

.field public final j:Le6/c;

.field public final k:Le6/g;

.field public final l:Le6/h;

.field public final m:Lw6/i;

.field public n:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Ll5/l0;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ly6/s0;

.field public p:Ly6/s0;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ly6/s0;


# direct methods
.method public constructor <init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Li5/t;Lc6/r;Le6/c;Le6/g;Le6/h;Lw6/i;)V
    .registers 23

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    move-object v1, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Li5/v0;->a:Li5/v0;

    const-string v0, "NO_SOURCE"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ll5/f;-><init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;Li5/t;)V

    iput-object v7, v6, Lw6/o;->h:Lx6/m;

    iput-object v8, v6, Lw6/o;->i:Lc6/r;

    iput-object v9, v6, Lw6/o;->j:Le6/c;

    iput-object v10, v6, Lw6/o;->k:Le6/g;

    iput-object v11, v6, Lw6/o;->l:Le6/h;

    move-object/from16 v0, p10

    iput-object v0, v6, Lw6/o;->m:Lw6/i;

    return-void
.end method


# virtual methods
.method public B()Le6/g;
    .registers 1

    iget-object p0, p0, Lw6/o;->k:Le6/g;

    return-object p0
.end method

.method public D()Ly6/s0;
    .registers 1

    iget-object p0, p0, Lw6/o;->p:Ly6/s0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "expandedType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public G()Le6/c;
    .registers 1

    iget-object p0, p0, Lw6/o;->j:Le6/c;

    return-object p0
.end method

.method public H()Lw6/i;
    .registers 1

    iget-object p0, p0, Lw6/o;->m:Lw6/i;

    return-object p0
.end method

.method public c(Ly6/x1;)Li5/m;
    .registers 14

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/x1;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_65

    :cond_c
    new-instance v0, Lw6/o;

    iget-object v2, p0, Lw6/o;->h:Lx6/m;

    invoke-virtual {p0}, Ll5/n;->b()Li5/l;

    move-result-object v3

    const-string v1, "containingDeclaration"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object v5

    const-string v1, "name"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Ll5/f;->e:Li5/t;

    iget-object v7, p0, Lw6/o;->i:Lc6/r;

    iget-object v8, p0, Lw6/o;->j:Le6/c;

    iget-object v9, p0, Lw6/o;->k:Le6/g;

    iget-object v10, p0, Lw6/o;->l:Le6/h;

    iget-object v11, p0, Lw6/o;->m:Lw6/i;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lw6/o;-><init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Li5/t;Lc6/r;Le6/c;Le6/g;Le6/h;Lw6/i;)V

    invoke-virtual {p0}, Ll5/f;->n()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lw6/o;->m0()Ly6/s0;

    move-result-object v2

    sget-object v3, Ly6/e2;->c:Ly6/e2;

    invoke-virtual {p1, v2, v3}, Ly6/x1;->i(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v2

    const-string v4, "substitutor.safeSubstitu…Type, Variance.INVARIANT)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ly6/v1;->a(Ly6/l0;)Ly6/s0;

    move-result-object v2

    invoke-virtual {p0}, Lw6/o;->D()Ly6/s0;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Ly6/x1;->i(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly6/v1;->a(Ly6/l0;)Ly6/s0;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lw6/o;->z0(Ljava/util/List;Ly6/s0;Ly6/s0;)V

    move-object p0, v0

    :goto_65
    return-object p0
.end method

.method public m()Ly6/s0;
    .registers 1

    iget-object p0, p0, Lw6/o;->r:Ly6/s0;

    if-nez p0, :cond_a

    const-string p0, "defaultTypeImpl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    return-object p0
.end method

.method public m0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Lw6/o;->o:Ly6/s0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "underlyingType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public p()Li5/e;
    .registers 3

    invoke-virtual {p0}, Lw6/o;->D()Ly6/s0;

    move-result-object v0

    invoke-static {v0}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    goto :goto_1f

    :cond_c
    invoke-virtual {p0}, Lw6/o;->D()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_1f

    move-object v1, p0

    check-cast v1, Li5/e;

    :cond_1f
    :goto_1f
    return-object v1
.end method

.method public final z0(Ljava/util/List;Ly6/s0;Ly6/s0;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ly6/s0;",
            "Ly6/s0;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "declaredTypeParameters"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "underlyingType"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "expandedType"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Ll5/f;->f:Ljava/util/List;

    iput-object v1, v8, Lw6/o;->o:Ly6/s0;

    iput-object v2, v8, Lw6/o;->p:Ly6/s0;

    invoke-static/range {p0 .. p0}, Li5/b1;->b(Li5/i;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lw6/o;->q:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lw6/o;->p()Li5/e;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Li5/e;->U()Lr6/i;

    move-result-object v0

    if-nez v0, :cond_34

    :cond_32
    sget-object v0, Lr6/i$b;->b:Lr6/i$b;

    :cond_34
    new-instance v1, Ll5/e;

    invoke-direct {v1, v8}, Ll5/e;-><init>(Ll5/f;)V

    invoke-static {v8, v0, v1}, Ly6/a2;->o(Li5/h;Lr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;

    move-result-object v0

    const-string v1, "@OptIn(TypeRefinement::c…s)?.defaultType\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lw6/o;->r:Ly6/s0;

    invoke-virtual/range {p0 .. p0}, Lw6/o;->p()Li5/e;

    move-result-object v0

    if-nez v0, :cond_4e

    sget-object v0, Li4/y;->a:Li4/y;

    goto/16 :goto_1ac

    :cond_4e
    invoke-interface {v0}, Li5/e;->i()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "classDescriptor.constructors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_60
    :goto_60
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ab

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Li5/d;

    sget-object v0, Ll5/m0;->N:Ll5/m0$a;

    iget-object v1, v8, Lw6/o;->h:Lx6/m;

    const-string v2, "it"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Ly6/e2;->c:Ly6/e2;

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasDescriptor"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lw6/o;->p()Li5/e;

    move-result-object v0

    const/4 v13, 0x0

    if-nez v0, :cond_93

    move-object v14, v13

    goto :goto_9c

    :cond_93
    invoke-virtual/range {p0 .. p0}, Lw6/o;->D()Ly6/s0;

    move-result-object v0

    invoke-static {v0}, Ly6/x1;->d(Ly6/l0;)Ly6/x1;

    move-result-object v0

    move-object v14, v0

    :goto_9c
    if-nez v14, :cond_a0

    goto/16 :goto_19e

    :cond_a0
    invoke-interface {v11, v14}, Li5/d;->c(Ly6/x1;)Li5/d;

    move-result-object v15

    if-nez v15, :cond_a8

    goto/16 :goto_19e

    :cond_a8
    new-instance v7, Ll5/m0;

    const/4 v4, 0x0

    invoke-interface {v11}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v5

    invoke-interface {v11}, Li5/b;->f()Li5/b$a;

    move-result-object v6

    const-string v0, "constructor.kind"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ll5/n;->getSource()Li5/v0;

    move-result-object v3

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v16, v3

    move-object v3, v15

    move-object/from16 p1, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Ll5/m0;-><init>(Lx6/m;Li5/z0;Li5/d;Ll5/l0;Lj5/h;Li5/b$a;Li5/v0;)V

    invoke-interface {v11}, Li5/a;->g()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1a5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v4, v14

    invoke-static/range {v2 .. v7}, Ll5/r;->F0(Li5/x;Ljava/util/List;Ly6/x1;ZZ[Z)Ljava/util/List;

    move-result-object v21

    if-nez v21, :cond_e2

    goto/16 :goto_19e

    :cond_e2
    invoke-interface {v15}, Li5/k;->getReturnType()Ly6/l0;

    move-result-object v0

    invoke-virtual {v0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v0

    invoke-static {v0}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lw6/o;->m()Ly6/s0;

    move-result-object v1

    const-string v2, "typeAliasDescriptor.defaultType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ly6/w0;->e(Ly6/s0;Ly6/s0;)Ly6/s0;

    move-result-object v22

    invoke-interface {v11}, Li5/a;->I()Li5/r0;

    move-result-object v0

    if-eqz v0, :cond_116

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    invoke-virtual {v14, v0, v12}, Ly6/x1;->i(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v0

    sget v1, Lj5/h;->I:I

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lk6/h;->h(Li5/a;Ly6/l0;Lj5/h;)Li5/r0;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_11a

    :cond_116
    move-object/from16 v2, p1

    move-object/from16 v17, v13

    :goto_11a
    invoke-virtual/range {p0 .. p0}, Lw6/o;->p()Li5/e;

    move-result-object v0

    if-eqz v0, :cond_188

    invoke-interface {v11}, Li5/a;->q0()Ljava/util/List;

    move-result-object v1

    const-string v3, "constructor.contextReceiverParameters"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_139
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_185

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_181

    check-cast v5, Li5/r0;

    invoke-interface {v5}, Li5/d1;->getType()Ly6/l0;

    move-result-object v7

    invoke-virtual {v14, v7, v12}, Ly6/x1;->i(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v7

    invoke-interface {v5}, Li5/r0;->getValue()Ls6/g;

    move-result-object v5

    const-string v11, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ls6/f;

    invoke-interface {v5}, Ls6/f;->a()Lh6/f;

    move-result-object v5

    sget v11, Lj5/h;->I:I

    sget-object v11, Lj5/h$a;->b:Lj5/h;

    if-nez v7, :cond_16a

    move-object/from16 p1, v1

    move-object v15, v13

    goto :goto_17a

    :cond_16a
    new-instance v15, Ll5/i0;

    move-object/from16 p1, v1

    new-instance v1, Ls6/b;

    invoke-direct {v1, v0, v7, v5, v13}, Ls6/b;-><init>(Li5/e;Ly6/l0;Lh6/f;Ls6/g;)V

    invoke-static {v4}, Lh6/g;->a(I)Lh6/f;

    move-result-object v4

    invoke-direct {v15, v0, v1, v11, v4}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;Lh6/f;)V

    :goto_17a
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move v4, v6

    goto :goto_139

    :cond_181
    invoke-static {}, Li4/o;->k()V

    throw v13

    :cond_185
    move-object/from16 v19, v3

    goto :goto_18c

    :cond_188
    sget-object v0, Li4/y;->a:Li4/y;

    move-object/from16 v19, v0

    :goto_18c
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Ll5/f;->n()Ljava/util/List;

    move-result-object v20

    sget-object v23, Li5/d0;->a:Li5/d0;

    invoke-virtual/range {p0 .. p0}, Ll5/f;->getVisibility()Li5/t;

    move-result-object v24

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v24}, Ll5/r;->G0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/r;

    move-object v13, v2

    :goto_19e
    if-eqz v13, :cond_60

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_60

    :cond_1a5
    const/16 v0, 0x1c

    invoke-static {v0}, Ll5/r;->z(I)V

    throw v13

    :cond_1ab
    move-object v0, v9

    :goto_1ac
    iput-object v0, v8, Lw6/o;->n:Ljava/util/Collection;

    return-void
.end method
