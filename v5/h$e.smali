.class public final Lv5/h$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/h;-><init>(Lu5/g;Li5/e;Ly5/g;ZLv5/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Li5/d;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaClassMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaClassMemberScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 collections.kt\norg/jetbrains/kotlin/utils/CollectionsKt\n*L\n1#1,890:1\n2624#2,3:891\n1#3:894\n55#4:895\n*S KotlinDebug\n*F\n+ 1 LazyJavaClassMemberScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1\n*L\n95#1:891,3\n105#1:895\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/h;

.field public final synthetic b:Lu5/g;


# direct methods
.method public constructor <init>(Lv5/h;Lu5/g;)V
    .registers 3

    iput-object p1, p0, Lv5/h$e;->a:Lv5/h;

    iput-object p2, p0, Lv5/h$e;->b:Lu5/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 27

    move-object/from16 v0, p0

    sget-object v1, Ly6/z1;->b:Ly6/z1;

    iget-object v2, v0, Lv5/h$e;->a:Lv5/h;

    iget-object v2, v2, Lv5/h;->o:Ly5/g;

    invoke-interface {v2}, Ly5/g;->i()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly5/k;

    iget-object v6, v0, Lv5/h$e;->a:Lv5/h;

    iget-object v7, v6, Lv5/h;->n:Li5/e;

    iget-object v8, v6, Lv5/l;->b:Lu5/g;

    invoke-static {v8, v4}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object v8

    iget-object v9, v6, Lv5/l;->b:Lu5/g;

    iget-object v9, v9, Lu5/g;->a:Lu5/c;

    iget-object v9, v9, Lu5/c;->j:Lx5/b;

    invoke-interface {v9, v4}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v9

    invoke-static {v7, v8, v5, v9}, Lt5/b;->Q0(Li5/e;Lj5/h;ZLi5/v0;)Lt5/b;

    move-result-object v8

    const-string v9, "createJavaConstructor(\n …ce(constructor)\n        )"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v6, Lv5/l;->b:Lu5/g;

    invoke-interface {v7}, Li5/e;->n()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v8, v4, v10}, Lu5/b;->b(Lu5/g;Li5/l;Ly5/z;I)Lu5/g;

    move-result-object v9

    invoke-interface {v4}, Ly5/k;->g()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v9, v8, v10}, Lv5/l;->u(Lu5/g;Li5/x;Ljava/util/List;)Lv5/l$b;

    move-result-object v6

    invoke-interface {v7}, Li5/e;->n()Ljava/util/List;

    move-result-object v10

    const-string v11, "classDescriptor.declaredTypeParameters"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ly5/z;->getTypeParameters()Ljava/util/List;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_75
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ly5/y;

    iget-object v14, v9, Lu5/g;->b:Lu5/k;

    invoke-interface {v14, v13}, Lu5/k;->a(Ly5/y;)Li5/a1;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :cond_8e
    invoke-static {v10, v12}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    iget-object v11, v6, Lv5/l$b;->a:Ljava/util/List;

    invoke-interface {v4}, Ly5/s;->getVisibility()Li5/i1;

    move-result-object v12

    invoke-static {v12}, Lr5/n0;->a(Li5/i1;)Li5/t;

    move-result-object v12

    invoke-virtual {v8, v11, v12, v10}, Ll5/i;->P0(Ljava/util/List;Li5/t;Ljava/util/List;)Ll5/i;

    invoke-virtual {v8, v5}, Lt5/b;->J0(Z)V

    iget-boolean v5, v6, Lv5/l$b;->b:Z

    invoke-virtual {v8, v5}, Lt5/b;->K0(Z)V

    invoke-interface {v7}, Li5/e;->m()Ly6/s0;

    move-result-object v5

    invoke-virtual {v8, v5}, Ll5/r;->L0(Ly6/l0;)V

    iget-object v5, v9, Lu5/g;->a:Lu5/c;

    iget-object v5, v5, Lu5/c;->g:Ls5/g;

    check-cast v5, Ls5/g$a;

    invoke-virtual {v5, v4, v8}, Ls5/g$a;->b(Ly5/l;Li5/k;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_bc
    iget-object v2, v0, Lv5/h$e;->a:Lv5/h;

    iget-object v2, v2, Lv5/h;->o:Ly5/g;

    invoke-interface {v2}, Ly5/g;->n()Z

    move-result v2

    const-string v4, "createJavaConstructor(\n ….source(jClass)\n        )"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_1cb

    iget-object v2, v0, Lv5/h$e;->a:Lv5/h;

    iget-object v9, v2, Lv5/h;->n:Li5/e;

    sget v10, Lj5/h;->I:I

    sget-object v10, Lj5/h$a;->b:Lj5/h;

    iget-object v11, v2, Lv5/l;->b:Lu5/g;

    iget-object v11, v11, Lu5/g;->a:Lu5/c;

    iget-object v11, v11, Lu5/c;->j:Lx5/b;

    iget-object v12, v2, Lv5/h;->o:Ly5/g;

    invoke-interface {v11, v12}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v11

    invoke-static {v9, v10, v8, v11}, Lt5/b;->Q0(Li5/e;Lj5/h;ZLi5/v0;)Lt5/b;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v2, Lv5/h;->o:Ly5/g;

    invoke-interface {v11}, Ly5/g;->k()Ljava/util/Collection;

    move-result-object v11

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v5, v5, v7, v6}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v14

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v16, v5

    :goto_ff
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_176

    add-int/lit8 v24, v16, 0x1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly5/w;

    iget-object v13, v2, Lv5/l;->b:Lu5/g;

    iget-object v13, v13, Lu5/g;->e:Lw5/e;

    invoke-interface {v12}, Ly5/w;->getType()Ly5/x;

    move-result-object v6

    invoke-virtual {v13, v6, v14}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v6

    invoke-interface {v12}, Ly5/w;->a()Z

    move-result v13

    if-eqz v13, :cond_130

    iget-object v13, v2, Lv5/l;->b:Lu5/g;

    iget-object v13, v13, Lu5/g;->a:Lu5/c;

    iget-object v13, v13, Lu5/c;->o:Li5/e0;

    invoke-interface {v13}, Li5/e0;->k()Lf5/g;

    move-result-object v13

    invoke-virtual {v13, v6}, Lf5/g;->g(Ly6/l0;)Ly6/l0;

    move-result-object v13

    move-object/from16 v22, v13

    goto :goto_132

    :cond_130
    move-object/from16 v22, v7

    :goto_132
    new-instance v13, Ll5/o0;

    const/16 v17, 0x0

    sget v18, Lj5/h;->I:I

    sget-object v18, Lj5/h$a;->b:Lj5/h;

    invoke-interface {v12}, Ly5/t;->getName()Lh6/f;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    iget-object v7, v2, Lv5/l;->b:Lu5/g;

    iget-object v7, v7, Lu5/g;->a:Lu5/c;

    iget-object v7, v7, Lu5/c;->j:Lx5/b;

    invoke-interface {v7, v12}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v7

    move-object v12, v13

    move-object v8, v13

    move-object v13, v10

    move-object/from16 v25, v14

    move-object/from16 v14, v17

    move-object v5, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v6

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v23

    move-object/from16 v23, v7

    invoke-direct/range {v12 .. v23}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v5

    move/from16 v16, v24

    move-object/from16 v14, v25

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_ff

    :cond_176
    move v6, v5

    move-object v5, v15

    invoke-virtual {v10, v6}, Lt5/b;->K0(Z)V

    invoke-virtual {v2, v9}, Lv5/h;->K(Li5/e;)Li5/t;

    move-result-object v2

    invoke-virtual {v10, v5, v2}, Ll5/i;->O0(Ljava/util/List;Li5/t;)Ll5/i;

    invoke-virtual {v10, v6}, Lt5/b;->J0(Z)V

    invoke-interface {v9}, Li5/e;->m()Ly6/s0;

    move-result-object v2

    invoke-virtual {v10, v2}, Ll5/r;->L0(Ly6/l0;)V

    const/4 v2, 0x2

    invoke-static {v10, v6, v6, v2}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_198

    goto :goto_1b6

    :cond_198
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Li5/d;

    invoke-static {v8, v6, v6, v2}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b4

    const/4 v2, 0x0

    goto :goto_1b7

    :cond_1b4
    const/4 v6, 0x0

    goto :goto_19c

    :cond_1b6
    :goto_1b6
    const/4 v2, 0x1

    :goto_1b7
    if-eqz v2, :cond_1cb

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lv5/h$e;->b:Lu5/g;

    iget-object v2, v2, Lu5/g;->a:Lu5/c;

    iget-object v2, v2, Lu5/c;->g:Ls5/g;

    iget-object v5, v0, Lv5/h$e;->a:Lv5/h;

    iget-object v5, v5, Lv5/h;->o:Ly5/g;

    check-cast v2, Ls5/g$a;

    invoke-virtual {v2, v5, v10}, Ls5/g$a;->b(Ly5/l;Li5/k;)V

    :cond_1cb
    iget-object v2, v0, Lv5/h$e;->b:Lu5/g;

    iget-object v5, v0, Lv5/h$e;->a:Lv5/h;

    iget-object v6, v2, Lu5/g;->a:Lu5/c;

    iget-object v6, v6, Lu5/c;->x:Lp6/e;

    iget-object v5, v5, Lv5/h;->n:Li5/e;

    invoke-interface {v6, v2, v5, v3}, Lp6/e;->a(Lu5/g;Li5/e;Ljava/util/List;)V

    iget-object v2, v0, Lv5/h$e;->b:Lu5/g;

    iget-object v5, v2, Lu5/g;->a:Lu5/c;

    iget-object v5, v5, Lu5/c;->r:Lz5/n;

    iget-object v0, v0, Lv5/h$e;->a:Lv5/h;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_30f

    iget-object v3, v0, Lv5/h;->o:Ly5/g;

    invoke-interface {v3}, Ly5/g;->m()Z

    move-result v3

    iget-object v6, v0, Lv5/h;->o:Ly5/g;

    invoke-interface {v6}, Ly5/g;->F()Z

    move-result v6

    if-nez v6, :cond_1fc

    iget-object v6, v0, Lv5/h;->o:Ly5/g;

    invoke-interface {v6}, Ly5/g;->o()Z

    move-result v6

    if-nez v6, :cond_201

    :cond_1fc
    if-nez v3, :cond_201

    const/4 v7, 0x0

    goto/16 :goto_30b

    :cond_201
    iget-object v13, v0, Lv5/h;->n:Li5/e;

    sget v6, Lj5/h;->I:I

    sget-object v6, Lj5/h$a;->b:Lj5/h;

    iget-object v7, v0, Lv5/l;->b:Lu5/g;

    iget-object v7, v7, Lu5/g;->a:Lu5/c;

    iget-object v7, v7, Lu5/c;->j:Lx5/b;

    iget-object v8, v0, Lv5/h;->o:Ly5/g;

    invoke-interface {v7, v8}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v13, v6, v8, v7}, Lt5/b;->Q0(Li5/e;Lj5/h;ZLi5/v0;)Lt5/b;

    move-result-object v14

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_2e3

    iget-object v3, v0, Lv5/h;->o:Ly5/g;

    invoke-interface {v3}, Ly5/g;->x()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v9, v7, v6}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_241
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_262

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ly5/r;

    invoke-interface {v8}, Ly5/t;->getName()Lh6/f;

    move-result-object v8

    sget-object v9, Lr5/f0;->b:Lh6/f;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25e

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_241

    :cond_25e
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_241

    :cond_262
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    invoke-static {v6}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly5/r;

    if-eqz v3, :cond_2b2

    invoke-interface {v3}, Ly5/r;->getReturnType()Ly5/x;

    move-result-object v6

    instance-of v7, v6, Ly5/f;

    if-eqz v7, :cond_292

    new-instance v7, Lh4/j;

    iget-object v8, v0, Lv5/l;->b:Lu5/g;

    iget-object v8, v8, Lu5/g;->e:Lw5/e;

    check-cast v6, Ly5/f;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v1, v9}, Lw5/e;->c(Ly5/f;Lw5/a;Z)Ly6/l0;

    move-result-object v8

    iget-object v9, v0, Lv5/l;->b:Lu5/g;

    iget-object v9, v9, Lu5/g;->e:Lw5/e;

    invoke-interface {v6}, Ly5/f;->l()Ly5/x;

    move-result-object v6

    invoke-virtual {v9, v6, v1}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a0

    :cond_292
    new-instance v7, Lh4/j;

    iget-object v8, v0, Lv5/l;->b:Lu5/g;

    iget-object v8, v8, Lu5/g;->e:Lw5/e;

    invoke-virtual {v8, v6, v1}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2a0
    iget-object v6, v7, Lh4/j;->a:Ljava/lang/Object;

    move-object v11, v6

    check-cast v11, Ly6/l0;

    iget-object v6, v7, Lh4/j;->b:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Ly6/l0;

    const/4 v9, 0x0

    move-object v6, v0

    move-object v7, v4

    move-object v8, v14

    move-object v10, v3

    invoke-virtual/range {v6 .. v12}, Lv5/h;->x(Ljava/util/List;Li5/k;ILy5/r;Ly6/l0;Ly6/l0;)V

    :cond_2b2
    if-eqz v3, :cond_2b6

    const/4 v3, 0x1

    goto :goto_2b7

    :cond_2b6
    const/4 v3, 0x0

    :goto_2b7
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v6, 0x0

    :goto_2bc
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e7

    add-int/lit8 v16, v6, 0x1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ly5/r;

    iget-object v7, v0, Lv5/l;->b:Lu5/g;

    iget-object v7, v7, Lu5/g;->e:Lw5/e;

    invoke-interface {v10}, Ly5/r;->getReturnType()Ly5/x;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v11

    add-int v9, v6, v3

    const/4 v12, 0x0

    move-object v6, v0

    move-object v7, v4

    move-object v8, v14

    invoke-virtual/range {v6 .. v12}, Lv5/h;->x(Ljava/util/List;Li5/k;ILy5/r;Ly6/l0;Ly6/l0;)V

    move/from16 v6, v16

    goto :goto_2bc

    :cond_2e3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_2e7
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lt5/b;->K0(Z)V

    invoke-virtual {v0, v13}, Lv5/h;->K(Li5/e;)Li5/t;

    move-result-object v1

    invoke-virtual {v14, v4, v1}, Ll5/i;->O0(Ljava/util/List;Li5/t;)Ll5/i;

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lt5/b;->J0(Z)V

    invoke-interface {v13}, Li5/e;->m()Ly6/s0;

    move-result-object v1

    invoke-virtual {v14, v1}, Ll5/r;->L0(Ly6/l0;)V

    iget-object v1, v0, Lv5/l;->b:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->g:Ls5/g;

    iget-object v0, v0, Lv5/h;->o:Ly5/g;

    check-cast v1, Ls5/g$a;

    invoke-virtual {v1, v0, v14}, Ls5/g$a;->b(Ly5/l;Li5/k;)V

    move-object v7, v14

    :goto_30b
    invoke-static {v7}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_30f
    invoke-virtual {v5, v2, v3}, Lz5/n;->e(Lu5/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
