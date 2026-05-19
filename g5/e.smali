.class public final Lg5/e;
.super Ll5/j0;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFunctionInvokeDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionInvokeDescriptor.kt\norg/jetbrains/kotlin/builtins/functions/FunctionInvokeDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n2624#2,3:162\n1549#2:165\n1620#2,3:166\n1726#2,3:169\n1549#2:172\n1620#2,3:173\n1747#2,3:176\n*S KotlinDebug\n*F\n+ 1 FunctionInvokeDescriptor.kt\norg/jetbrains/kotlin/builtins/functions/FunctionInvokeDescriptor\n*L\n63#1:162,3\n64#1:165\n64#1:166,3\n88#1:169,3\n92#1:172\n92#1:173,3\n106#1:176,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Li5/l;Lg5/e;Li5/b$a;Z)V
    .registers 13

    sget v0, Lj5/h;->I:I

    sget-object v4, Lj5/h$a;->b:Lj5/h;

    sget-object v5, Lf7/t;->g:Lh6/f;

    sget-object v7, Li5/v0;->a:Li5/v0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Ll5/j0;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll5/r;->m:Z

    iput-boolean p4, p0, Ll5/r;->v:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll5/r;->w:Z

    return-void
.end method

.method public static final R0(Lg5/b;Z)Lg5/e;
    .registers 22

    move-object/from16 v0, p0

    const-string v1, "functionClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lg5/b;->k:Ljava/util/List;

    new-instance v14, Lg5/e;

    const/4 v2, 0x0

    sget-object v3, Li5/b$a;->a:Li5/b$a;

    move/from16 v4, p1

    invoke-direct {v14, v0, v2, v3, v4}, Lg5/e;-><init>(Li5/l;Lg5/e;Li5/b$a;Z)V

    invoke-virtual/range {p0 .. p0}, Ll5/b;->C0()Li5/r0;

    move-result-object v0

    sget-object v15, Li4/y;->a:Li4/y;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Li5/a1;

    invoke-interface {v6}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v6

    sget-object v7, Ly6/e2;->d:Ly6/e2;

    if-ne v6, v7, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    :goto_3a
    if-nez v5, :cond_3d

    goto :goto_41

    :cond_3d
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_41
    :goto_41
    invoke-static {v2}, Li4/v;->n0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    new-instance v13, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Li4/d0;

    invoke-virtual {v2}, Li4/d0;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_56
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li4/c0;

    iget v5, v2, Li4/c0;->a:I

    iget-object v2, v2, Li4/c0;->b:Ljava/lang/Object;

    check-cast v2, Li5/a1;

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v3

    invoke-virtual {v3}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "typeParameter.name.asString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    const-string v3, "instance"

    goto :goto_96

    :cond_80
    const-string v4, "E"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    const-string v3, "receiver"

    goto :goto_96

    :cond_8b
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_96
    new-instance v12, Ll5/o0;

    const/4 v4, 0x0

    sget-object v6, Lj5/h$a;->b:Lj5/h;

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v7

    const-string v3, "identifier(name)"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Li5/h;->m()Ly6/s0;

    move-result-object v8

    const-string v2, "typeParameter.defaultType"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    sget-object v3, Li5/v0;->a:Li5/v0;

    const-string v2, "NO_SOURCE"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v12

    move-object/from16 v18, v3

    move-object v3, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    move-object/from16 p0, v15

    move-object v15, v13

    move-object/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    move-object/from16 v2, v19

    invoke-interface {v15, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v13, v15

    move-object/from16 v15, p0

    goto :goto_56

    :cond_d2
    move-object/from16 p0, v15

    move-object v15, v13

    invoke-static {v1}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/a1;

    invoke-interface {v1}, Li5/h;->m()Ly6/s0;

    move-result-object v8

    sget-object v9, Li5/d0;->d:Li5/d0;

    sget-object v10, Li5/s;->e:Li5/t;

    const/4 v3, 0x0

    move-object v2, v14

    move-object v4, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object v7, v15

    invoke-virtual/range {v2 .. v10}, Ll5/j0;->P0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/j0;

    const/4 v0, 0x1

    iput-boolean v0, v14, Ll5/r;->x:Z

    return-object v14
.end method


# virtual methods
.method public D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 7

    const-string p4, "newOwner"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "kind"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "annotations"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "source"

    invoke-static {p6, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lg5/e;

    check-cast p2, Lg5/e;

    iget-boolean p0, p0, Ll5/r;->v:Z

    invoke-direct {p4, p1, p2, p3, p0}, Lg5/e;-><init>(Li5/l;Lg5/e;Li5/b$a;Z)V

    return-object p4
.end method

.method public E0(Ll5/r$c;)Li5/x;
    .registers 11

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ll5/r;->E0(Ll5/r$c;)Li5/x;

    move-result-object p0

    check-cast p0, Lg5/e;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object p1

    const-string v0, "substituted.valueParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Ljava/util/Collection;

    const-string v2, "it.type"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_4b

    :cond_27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/e1;

    invoke-interface {v1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lf5/f;->c(Ly6/l0;)Lh6/f;

    move-result-object v1

    if-eqz v1, :cond_46

    move v1, v4

    goto :goto_47

    :cond_46
    move v1, v3

    :goto_47
    if-eqz v1, :cond_2b

    move p1, v3

    goto :goto_4c

    :cond_4b
    :goto_4b
    move p1, v4

    :goto_4c
    if-eqz p1, :cond_4f

    return-object p0

    :cond_4f
    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/e1;

    invoke-interface {v5}, Li5/d1;->getType()Ly6/l0;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lf5/f;->c(Ly6/l0;)Lh6/f;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    :cond_80
    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p1, v2

    const-string v2, "valueParameters"

    if-nez p1, :cond_ce

    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a5

    goto :goto_c9

    :cond_a5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh4/j;

    iget-object v7, v6, Lh4/j;->a:Ljava/lang/Object;

    check-cast v7, Lh6/f;

    iget-object v6, v6, Lh4/j;->b:Ljava/lang/Object;

    check-cast v6, Li5/e1;

    invoke-interface {v6}, Li5/l;->getName()Lh6/f;

    move-result-object v6

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a9

    move v5, v3

    goto :goto_ca

    :cond_c9
    :goto_c9
    move v5, v4

    :goto_ca
    if-eqz v5, :cond_ce

    goto/16 :goto_14f

    :cond_ce
    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v5, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/e1;

    invoke-interface {v5}, Li5/l;->getName()Lh6/f;

    move-result-object v6

    const-string v7, "it.name"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Li5/e1;->getIndex()I

    move-result v7

    sub-int v8, v7, p1

    if-ltz v8, :cond_108

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh6/f;

    if-eqz v8, :cond_108

    move-object v6, v8

    :cond_108
    invoke-interface {v5, p0, v6, v7}, Li5/e1;->E(Li5/a;Lh6/f;I)Li5/e1;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    :cond_110
    sget-object p1, Ly6/x1;->b:Ly6/x1;

    invoke-virtual {p0, p1}, Ll5/r;->H0(Ly6/x1;)Ll5/r$c;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11d

    goto :goto_135

    :cond_11d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_121
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/f;

    if-nez v1, :cond_131

    move v1, v4

    goto :goto_132

    :cond_131
    move v1, v3

    :goto_132
    if-eqz v1, :cond_121

    move v3, v4

    :cond_135
    :goto_135
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ll5/r$c;->v:Ljava/lang/Boolean;

    iput-object v2, p1, Ll5/r$c;->g:Ljava/util/List;

    invoke-virtual {p0}, Ll5/j0;->O0()Li5/u0;

    move-result-object v0

    iput-object v0, p1, Ll5/r$c;->e:Li5/x;

    const-string v0, "newCopyBuilder(TypeSubst…   .setOriginal(original)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ll5/r;->E0(Ll5/r$c;)Li5/x;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_14f
    return-object p0
.end method

.method public isExternal()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public y()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
