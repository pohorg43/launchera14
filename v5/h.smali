.class public final Lv5/h;
.super Lv5/l;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaClassMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaClassMemberScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassMemberScope\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,890:1\n1446#2,5:891\n1747#2,2:897\n1747#2,3:899\n1749#2:902\n1603#2,9:903\n1855#2:912\n1856#2:914\n1612#2:915\n1747#2,3:916\n1549#2:919\n1620#2,3:920\n819#2:923\n847#2,2:924\n766#2:926\n857#2,2:927\n1747#2,3:929\n1747#2,3:932\n2624#2,3:935\n766#2:938\n857#2,2:939\n766#2:941\n857#2,2:942\n1549#2:944\n1620#2,3:945\n2624#2,3:948\n288#2,2:951\n1549#2:953\n1620#2,3:954\n1446#2,5:957\n2624#2,3:962\n1360#2:965\n1446#2,2:966\n1549#2:968\n1620#2,3:969\n1448#2,3:972\n1549#2:975\n1620#2,3:976\n3190#2,10:979\n1446#2,5:989\n1#3:896\n1#3:913\n*S KotlinDebug\n*F\n+ 1 LazyJavaClassMemberScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassMemberScope\n*L\n74#1:891,5\n160#1:897,2\n161#1:899,3\n160#1:902\n189#1:903,9\n189#1:912\n189#1:914\n189#1:915\n193#1:916,3\n199#1:919\n199#1:920,3\n202#1:923\n202#1:924,2\n211#1:926\n211#1:927,2\n216#1:929,3\n222#1:932,3\n322#1:935,3\n327#1:938\n327#1:939,2\n354#1:941\n354#1:942,2\n376#1:944\n376#1:945,3\n461#1:948,3\n470#1:951,2\n476#1:953\n476#1:954,3\n489#1:957,5\n495#1:962,3\n649#1:965\n649#1:966,2\n650#1:968\n650#1:969,3\n649#1:972,3\n698#1:975\n698#1:976,3\n749#1:979,10\n879#1:989,5\n189#1:913\n*E\n"
    }
.end annotation


# instance fields
.field public final n:Li5/e;

.field public final o:Ly5/g;

.field public final p:Z

.field public final q:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/List<",
            "Li5/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final r:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final s:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final t:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Map<",
            "Lh6/f;",
            "Ly5/n;",
            ">;>;"
        }
    .end annotation
.end field

.field public final u:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Lh6/f;",
            "Li5/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu5/g;Li5/e;Ly5/g;ZLv5/h;)V
    .registers 7

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5}, Lv5/l;-><init>(Lu5/g;Lv5/l;)V

    iput-object p2, p0, Lv5/h;->n:Li5/e;

    iput-object p3, p0, Lv5/h;->o:Ly5/g;

    iput-boolean p4, p0, Lv5/h;->p:Z

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance p3, Lv5/h$e;

    invoke-direct {p3, p0, p1}, Lv5/h$e;-><init>(Lv5/h;Lu5/g;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/h;->q:Lx6/i;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance p3, Lv5/h$i;

    invoke-direct {p3, p0}, Lv5/h$i;-><init>(Lv5/h;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/h;->r:Lx6/i;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance p3, Lv5/h$g;

    invoke-direct {p3, p1, p0}, Lv5/h$g;-><init>(Lu5/g;Lv5/h;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/h;->s:Lx6/i;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance p3, Lv5/h$f;

    invoke-direct {p3, p0}, Lv5/h$f;-><init>(Lv5/h;)V

    invoke-interface {p2, p3}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Lv5/h;->t:Lx6/i;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->a:Lx6/m;

    new-instance p3, Lv5/h$j;

    invoke-direct {p3, p0, p1}, Lv5/h$j;-><init>(Lv5/h;Lu5/g;)V

    invoke-interface {p2, p3}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lv5/h;->u:Lx6/h;

    return-void
.end method

.method public static final v(Lv5/h;Lh6/f;)Ljava/util/Collection;
    .registers 4

    iget-object v0, p0, Lv5/l;->e:Lx6/i;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv5/b;

    invoke-interface {v0, p1}, Lv5/b;->c(Lh6/f;)Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly5/r;

    invoke-virtual {p0, v1}, Lv5/l;->t(Ly5/r;)Lt5/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2f
    return-object v0
.end method

.method public static final w(Lv5/h;Lh6/f;)Ljava/util/Collection;
    .registers 7

    invoke-virtual {p0, p1}, Lv5/h;->L(Lh6/f;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li5/u0;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lr5/l0;->b(Li5/b;)Li5/b;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v4

    :goto_2a
    if-nez v2, :cond_34

    invoke-static {v1}, Lr5/h;->a(Li5/x;)Li5/x;

    move-result-object v1

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    move v3, v4

    :cond_34
    :goto_34
    if-nez v3, :cond_d

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_3a
    return-object p1
.end method


# virtual methods
.method public final A(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Li5/o0;",
            ">;",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;",
            "Ljava/util/Set<",
            "Li5/o0;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/o0;

    invoke-virtual {v0, v3, v1}, Lv5/h;->E(Li5/o0;Lkotlin/jvm/functions/Function1;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v5, 0x0

    goto/16 :goto_c5

    :cond_1d
    invoke-virtual {v0, v3, v1}, Lv5/h;->I(Li5/o0;Lkotlin/jvm/functions/Function1;)Li5/u0;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Li5/f1;->K()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {v0, v3, v1}, Lv5/h;->J(Li5/o0;Lkotlin/jvm/functions/Function1;)Li5/u0;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    :goto_33
    if-eqz v6, :cond_3b

    invoke-interface {v6}, Li5/c0;->o()Li5/d0;

    invoke-interface {v4}, Li5/c0;->o()Li5/d0;

    :cond_3b
    new-instance v15, Lt5/d;

    iget-object v7, v0, Lv5/h;->n:Li5/e;

    invoke-direct {v15, v7, v4, v6, v3}, Lt5/d;-><init>(Li5/e;Li5/u0;Li5/u0;Li5/o0;)V

    invoke-interface {v4}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v12, Li4/y;->a:Li4/y;

    invoke-virtual/range {p0 .. p0}, Lv5/h;->p()Li5/r0;

    move-result-object v10

    const/4 v11, 0x0

    move-object v7, v15

    move-object v9, v12

    invoke-virtual/range {v7 .. v12}, Ll5/f0;->L0(Ly6/l0;Ljava/util/List;Li5/r0;Li5/r0;Ljava/util/List;)V

    invoke-interface {v4}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v4}, Li5/o;->getSource()Li5/v0;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lk6/h;->i(Li5/o0;Lj5/h;ZZZLi5/v0;)Ll5/g0;

    move-result-object v14

    iput-object v4, v14, Ll5/e0;->l:Li5/x;

    invoke-virtual {v15}, Ll5/p0;->getType()Ly6/l0;

    move-result-object v4

    invoke-virtual {v14, v4}, Ll5/g0;->F0(Ly6/l0;)V

    const-string v4, "createGetter(\n          …escriptor.type)\n        }"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_b9

    invoke-interface {v6}, Li5/a;->g()Ljava/util/List;

    move-result-object v4

    const-string v7, "setterMethod.valueParameters"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/e1;

    if-eqz v4, :cond_a2

    invoke-interface {v6}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v8

    invoke-interface {v4}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v6}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v13

    invoke-interface {v6}, Li5/o;->getSource()Li5/v0;

    move-result-object v4

    move-object v7, v15

    move-object v5, v14

    move-object v14, v4

    invoke-static/range {v7 .. v14}, Lk6/h;->j(Li5/o0;Lj5/h;Lj5/h;ZZZLi5/t;Li5/v0;)Ll5/h0;

    move-result-object v4

    iput-object v6, v4, Ll5/e0;->l:Li5/x;

    goto :goto_bb

    :cond_a2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No parameter found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_b9
    move-object v5, v14

    const/4 v4, 0x0

    :goto_bb
    iput-object v5, v15, Ll5/f0;->x:Ll5/g0;

    iput-object v4, v15, Ll5/f0;->y:Li5/q0;

    const/4 v4, 0x0

    iput-object v4, v15, Ll5/f0;->A:Li5/v;

    iput-object v4, v15, Ll5/f0;->B:Li5/v;

    move-object v5, v15

    :goto_c5
    move-object/from16 v4, p2

    if-eqz v5, :cond_8

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_d5

    move-object/from16 v0, p3

    check-cast v0, Li7/e;

    invoke-virtual {v0, v3}, Li7/e;->add(Ljava/lang/Object;)Z

    :cond_d5
    return-void
.end method

.method public final B()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lv5/h;->p:Z

    if-eqz v0, :cond_14

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_14
    iget-object v0, p0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->u:Lz6/l;

    invoke-interface {v0}, Lz6/l;->c()Lz6/f;

    move-result-object v0

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    invoke-virtual {v0, p0}, Lz6/f;->g(Li5/e;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final C(Li5/u0;Li5/a;Ljava/util/Collection;)Li5/u0;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/u0;",
            "Li5/a;",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;)",
            "Li5/u0;"
        }
    .end annotation

    instance-of v0, p3, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_35

    :cond_d
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_11
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/u0;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-interface {v0}, Li5/x;->l0()Li5/x;

    move-result-object v3

    if-nez v3, :cond_31

    invoke-virtual {p0, v0, p2}, Lv5/h;->F(Li5/a;Li5/a;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    if-eqz v0, :cond_11

    goto :goto_36

    :cond_35
    :goto_35
    move v1, v2

    :goto_36
    if-eqz v1, :cond_39

    goto :goto_4b

    :cond_39
    invoke-interface {p1}, Li5/u0;->q()Li5/x$a;

    move-result-object p0

    invoke-interface {p0}, Li5/x$a;->h()Li5/x$a;

    move-result-object p0

    invoke-interface {p0}, Li5/x$a;->build()Li5/x;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, Li5/u0;

    :goto_4b
    return-object p1
.end method

.method public final D(Li5/u0;)Li5/u0;
    .registers 6

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    const-string v0, "valueParameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e1;

    const/4 v1, 0x0

    if-eqz p0, :cond_7d

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    invoke-virtual {v2}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v2

    invoke-interface {v2}, Ly6/j1;->e()Li5/h;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {v2}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lh6/d;->f()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v2, v1

    :goto_2e
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lh6/d;->i()Lh6/c;

    move-result-object v2

    goto :goto_36

    :cond_35
    move-object v2, v1

    :goto_36
    sget-object v3, Lf5/j;->f:Lh6/c;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_40

    :cond_3f
    move-object p0, v1

    :goto_40
    if-nez p0, :cond_43

    goto :goto_7d

    :cond_43
    invoke-interface {p1}, Li5/u0;->q()Li5/x$a;

    move-result-object v1

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Li4/v;->B(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Li5/x$a;->c(Ljava/util/List;)Li5/x$a;

    move-result-object p1

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/q1;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    invoke-interface {p1, p0}, Li5/x$a;->a(Ly6/l0;)Li5/x$a;

    move-result-object p0

    invoke-interface {p0}, Li5/x$a;->build()Li5/x;

    move-result-object p0

    check-cast p0, Li5/u0;

    move-object p1, p0

    check-cast p1, Ll5/j0;

    if-nez p1, :cond_7a

    goto :goto_7c

    :cond_7a
    iput-boolean v0, p1, Ll5/r;->v:Z

    :goto_7c
    return-object p0

    :cond_7d
    :goto_7d
    return-object v1
.end method

.method public final E(Li5/o0;Lkotlin/jvm/functions/Function1;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/o0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lv5/c;->a(Li5/o0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1, p2}, Lv5/h;->I(Li5/o0;Lkotlin/jvm/functions/Function1;)Li5/u0;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lv5/h;->J(Li5/o0;Lkotlin/jvm/functions/Function1;)Li5/u0;

    move-result-object p0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-interface {p1}, Li5/f1;->K()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1b

    return p2

    :cond_1b
    if-eqz p0, :cond_28

    invoke-interface {p0}, Li5/c0;->o()Li5/d0;

    move-result-object p0

    invoke-interface {v0}, Li5/c0;->o()Li5/d0;

    move-result-object p1

    if-ne p0, p1, :cond_28

    move v1, p2

    :cond_28
    return v1
.end method

.method public final F(Li5/a;Li5/a;)Z
    .registers 5

    sget-object p0, Lk6/o;->f:Lk6/o;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lk6/o;->n(Li5/a;Li5/a;Z)Lk6/o$c;

    move-result-object p0

    invoke-virtual {p0}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object p0

    const-string v1, "DEFAULT.isOverridableByW…iptor, this, true).result"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lk6/o$c$a;->a:Lk6/o$c$a;

    if-ne p0, v1, :cond_1b

    invoke-static {p2, p1}, Lr5/w;->c(Li5/a;Li5/a;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public final G(Li5/u0;Li5/x;)Z
    .registers 5

    sget-object v0, Lr5/g;->m:Lr5/g;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeAt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p1}, La6/x;->c(Li5/a;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lr5/m0;->h:Lr5/m0$a$a;

    iget-object v1, v1, Lr5/m0$a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2e

    invoke-interface {p2}, Li5/x;->a()Li5/x;

    move-result-object p2

    :cond_2e
    const-string v0, "if (superDescriptor.isRe…iginal else subDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lv5/h;->F(Li5/a;Li5/a;)Z

    move-result p0

    return p0
.end method

.method public final H(Li5/o0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Li5/u0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/o0;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;>;)",
            "Li5/u0;"
        }
    .end annotation

    invoke-static {p2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string p2, "identifier(getterName)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5/u0;

    invoke-interface {p2}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_42

    :cond_2b
    sget-object v0, Lz6/d;->a:Lz6/d;

    invoke-interface {p2}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v1

    if-nez v1, :cond_35

    const/4 v0, 0x0

    goto :goto_3f

    :cond_35
    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    check-cast v0, Lz6/m;

    invoke-virtual {v0, v1, v2}, Lz6/m;->d(Ly6/l0;Ly6/l0;)Z

    move-result v0

    :goto_3f
    if-eqz v0, :cond_42

    move-object p3, p2

    :cond_42
    :goto_42
    if-eqz p3, :cond_13

    :cond_44
    return-object p3
.end method

.method public final I(Li5/o0;Lkotlin/jvm/functions/Function1;)Li5/u0;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/o0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;>;)",
            "Li5/u0;"
        }
    .end annotation

    invoke-interface {p1}, Li5/o0;->getGetter()Li5/p0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lr5/l0;->b(Li5/b;)Li5/b;

    move-result-object v0

    check-cast v0, Li5/p0;

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-eqz v0, :cond_3c

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lf5/g;->B(Li5/l;)Z

    invoke-static {v0}, Lo6/c;->m(Li5/b;)Li5/b;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lr5/k;->a:Lr5/k;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lo6/c;->b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_3c

    :cond_28
    sget-object v3, Lr5/j;->a:Lr5/j;

    sget-object v3, Lr5/j;->b:Ljava/util/Map;

    invoke-static {v2}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/f;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v1

    :cond_3c
    :goto_3c
    if-eqz v1, :cond_4b

    iget-object v2, p0, Lv5/h;->n:Li5/e;

    invoke-static {v2, v0}, Lr5/l0;->d(Li5/e;Li5/a;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p0, p1, v1, p2}, Lv5/h;->H(Li5/o0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Li5/u0;

    move-result-object p0

    return-object p0

    :cond_4b
    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr5/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lv5/h;->H(Li5/o0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Li5/u0;

    move-result-object p0

    return-object p0
.end method

.method public final J(Li5/o0;Lkotlin/jvm/functions/Function1;)Li5/u0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/o0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;>;)",
            "Li5/u0;"
        }
    .end annotation

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr5/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string v0, "identifier(JvmAbi.setterName(name.asString()))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5/u0;

    invoke-interface {p2}, Li5/a;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3d

    goto :goto_6d

    :cond_3d
    invoke-interface {p2}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v1

    if-nez v1, :cond_44

    goto :goto_6d

    :cond_44
    invoke-static {v1}, Lf5/g;->Q(Ly6/l0;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_6d

    :cond_4b
    sget-object v1, Lz6/d;->a:Lz6/d;

    invoke-interface {p2}, Li5/a;->g()Ljava/util/List;

    move-result-object v2

    const-string v3, "descriptor.valueParameters"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/e1;

    invoke-interface {v2}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v3

    check-cast v1, Lz6/m;

    invoke-virtual {v1, v2, v3}, Lz6/m;->b(Ly6/l0;Ly6/l0;)Z

    move-result v1

    if-eqz v1, :cond_6d

    move-object v0, p2

    :cond_6d
    :goto_6d
    if-eqz v0, :cond_24

    :cond_6f
    return-object v0
.end method

.method public final K(Li5/e;)Li5/t;
    .registers 2

    invoke-interface {p1}, Li5/e;->getVisibility()Li5/t;

    move-result-object p0

    const-string p1, "classDescriptor.visibility"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lr5/v;->b:Li5/t;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p0, Lr5/v;->c:Li5/t;

    const-string p1, "PROTECTED_AND_PACKAGE"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    return-object p0
.end method

.method public final L(Lh6/f;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Set<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lv5/h;->B()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/l0;

    invoke-virtual {v1}, Ly6/l0;->l()Lr6/i;

    move-result-object v1

    sget-object v2, Lq5/d;->o:Lq5/d;

    invoke-interface {v1, p1, v2}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_d

    :cond_27
    return-object v0
.end method

.method public final M(Lh6/f;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Set<",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lv5/h;->B()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/l0;

    invoke-virtual {v1}, Ly6/l0;->l()Lr6/i;

    move-result-object v1

    sget-object v2, Lq5/d;->o:Lq5/d;

    invoke-interface {v1, p1, v2}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/o0;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_42
    invoke-static {v0, v2}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_d

    :cond_46
    invoke-static {v0}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final N(Li5/u0;Li5/x;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v0, v1}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Li5/x;->a()Li5/x;

    move-result-object v3

    const-string v4, "builtinWithErasedParameters.original"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v0, v1}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0, p1, p2}, Lv5/h;->F(Li5/a;Li5/a;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public final O(Li5/u0;)Z
    .registers 13

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    const-string v1, "function.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name.asString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lr5/e0;->a:Lr5/e0;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "get"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v7, "is"

    const/4 v8, 0x1

    if-nez v6, :cond_32

    invoke-static {v2, v7, v4, v5}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_30

    goto :goto_32

    :cond_30
    move v6, v4

    goto :goto_33

    :cond_32
    :goto_32
    move v6, v8

    :goto_33
    const-string v9, "methodName"

    const-string v10, "set"

    if-eqz v6, :cond_50

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v6, 0xc

    invoke-static {v0, v3, v4, v2, v6}, Lr5/j0;->b(Lh6/f;Ljava/lang/String;ZLjava/lang/String;I)Lh6/f;

    move-result-object v3

    if-nez v3, :cond_4b

    const/16 v3, 0x8

    invoke-static {v0, v7, v4, v2, v3}, Lr5/j0;->b(Lh6/f;Ljava/lang/String;ZLjava/lang/String;I)Lh6/f;

    move-result-object v3

    :cond_4b
    invoke-static {v3}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_89

    :cond_50
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v10, v4, v5}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v5, [Lh6/f;

    invoke-static {v0, v4}, Lr5/j0;->a(Lh6/f;Z)Lh6/f;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v8}, Lr5/j0;->a(Lh6/f;Z)Lh6/f;

    move-result-object v0

    aput-object v0, v2, v8

    const-string v0, "elements"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Li4/k;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_89

    :cond_74
    sget-object v2, Lr5/j;->a:Lr5/j;

    const-string v2, "name1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lr5/j;->c:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_89

    sget-object v0, Li4/y;->a:Li4/y;

    :cond_89
    :goto_89
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_95

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_95

    goto/16 :goto_f7

    :cond_95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/f;

    invoke-virtual {p0, v2}, Lv5/h;->M(Lh6/f;)Ljava/util/Set;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_b4

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b4

    goto :goto_f2

    :cond_b4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/o0;

    new-instance v6, Lv5/h$h;

    invoke-direct {v6, p1, p0}, Lv5/h$h;-><init>(Li5/u0;Lv5/h;)V

    invoke-virtual {p0, v3, v6}, Lv5/h;->E(Li5/o0;Lkotlin/jvm/functions/Function1;)Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-interface {v3}, Li5/f1;->K()Z

    move-result v3

    if-nez v3, :cond_eb

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v3

    invoke-virtual {v3}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "function.name.asString()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10, v4, v5}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_ed

    :cond_eb
    move v3, v8

    goto :goto_ee

    :cond_ed
    move v3, v4

    :goto_ee
    if-eqz v3, :cond_b8

    move v2, v8

    goto :goto_f3

    :cond_f2
    :goto_f2
    move v2, v4

    :goto_f3
    if-eqz v2, :cond_99

    move v0, v8

    goto :goto_f8

    :cond_f7
    :goto_f7
    move v0, v4

    :goto_f8
    if-eqz v0, :cond_fb

    return v4

    :cond_fb
    sget-object v0, Lr5/m0;->a:Lr5/m0$a;

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lr5/m0;->l:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh6/f;

    if-nez v0, :cond_115

    goto/16 :goto_17f

    :cond_115
    invoke-virtual {p0, v0}, Lv5/h;->L(Lh6/f;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_122
    :goto_122
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_143

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Li5/u0;

    const-string v7, "<this>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lr5/l0;->b(Li5/b;)Li5/b;

    move-result-object v6

    if-eqz v6, :cond_13c

    move v6, v8

    goto :goto_13d

    :cond_13c
    move v6, v4

    :goto_13d
    if-eqz v6, :cond_122

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_122

    :cond_143
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14a

    goto :goto_17f

    :cond_14a
    invoke-interface {p1}, Li5/u0;->q()Li5/x$a;

    move-result-object v2

    invoke-interface {v2, v0}, Li5/x$a;->f(Lh6/f;)Li5/x$a;

    invoke-interface {v2}, Li5/x$a;->r()Li5/x$a;

    invoke-interface {v2}, Li5/x$a;->k()Li5/x$a;

    invoke-interface {v2}, Li5/x$a;->build()Li5/x;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Li5/u0;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_167

    goto :goto_17f

    :cond_167
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/u0;

    invoke-virtual {p0, v3, v0}, Lv5/h;->G(Li5/u0;Li5/x;)Z

    move-result v3

    if-eqz v3, :cond_16b

    move v0, v8

    goto :goto_180

    :cond_17f
    :goto_17f
    move v0, v4

    :goto_180
    if-nez v0, :cond_21e

    sget-object v0, Lr5/h;->m:Lr5/h;

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lr5/h;->b(Lh6/f;)Z

    move-result v0

    if-nez v0, :cond_192

    goto :goto_1db

    :cond_192
    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lv5/h;->L(Lh6/f;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a6
    :goto_1a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1bc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/u0;

    invoke-static {v3}, Lr5/h;->a(Li5/x;)Li5/x;

    move-result-object v3

    if-eqz v3, :cond_1a6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a6

    :cond_1bc
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c3

    goto :goto_1db

    :cond_1c3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/x;

    invoke-virtual {p0, p1, v2}, Lv5/h;->N(Li5/u0;Li5/x;)Z

    move-result v2

    if-eqz v2, :cond_1c7

    move v0, v8

    goto :goto_1dc

    :cond_1db
    :goto_1db
    move v0, v4

    :goto_1dc
    if-nez v0, :cond_21e

    invoke-virtual {p0, p1}, Lv5/h;->D(Li5/u0;)Li5/u0;

    move-result-object v0

    if-nez v0, :cond_1e5

    goto :goto_21a

    :cond_1e5
    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lv5/h;->L(Lh6/f;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f7

    goto :goto_21a

    :cond_1f7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1fb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/u0;

    invoke-interface {v1}, Li5/x;->isSuspend()Z

    move-result v2

    if-eqz v2, :cond_215

    invoke-virtual {p0, v0, v1}, Lv5/h;->F(Li5/a;Li5/a;)Z

    move-result v1

    if-eqz v1, :cond_215

    move v1, v8

    goto :goto_216

    :cond_215
    move v1, v4

    :goto_216
    if-eqz v1, :cond_1fb

    move p0, v8

    goto :goto_21b

    :cond_21a
    :goto_21a
    move p0, v4

    :goto_21b
    if-nez p0, :cond_21e

    move v4, v8

    :cond_21e
    return v4
.end method

.method public P(Lh6/f;Lq5/b;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->n:Lq5/c;

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    invoke-static {v0, p2, p0, p1}, Lp5/a;->a(Lq5/c;Lq5/b;Li5/e;Lh6/f;)V

    return-void
.end method

.method public b(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lv5/h;->P(Lh6/f;Lq5/b;)V

    invoke-super {p0, p1, p2}, Lv5/l;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public c(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lv5/h;->P(Lh6/f;Lq5/b;)V

    invoke-super {p0, p1, p2}, Lv5/l;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lv5/h;->P(Lh6/f;Lq5/b;)V

    iget-object p2, p0, Lv5/l;->c:Lv5/l;

    check-cast p2, Lv5/h;

    if-eqz p2, :cond_20

    iget-object p2, p2, Lv5/h;->u:Lx6/h;

    if-eqz p2, :cond_20

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5/e;

    if-eqz p2, :cond_20

    goto :goto_29

    :cond_20
    iget-object p0, p0, Lv5/h;->u:Lx6/h;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Li5/h;

    :goto_29
    return-object p2
.end method

.method public h(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lv5/h;->r:Lx6/i;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p0, p0, Lv5/h;->t:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public i(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .registers 6

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/h;->n:Li5/e;

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v2}, Ly6/l0;->l()Lr6/i;

    move-result-object v2

    invoke-interface {v2}, Lr6/i;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1d

    :cond_35
    iget-object v0, p0, Lv5/l;->e:Lx6/i;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv5/b;

    invoke-interface {v0}, Lv5/b;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lv5/l;->e:Lx6/i;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv5/b;

    invoke-interface {v0}, Lv5/b;->d()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2}, Lv5/h;->h(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lv5/l;->b:Lu5/g;

    iget-object p2, p1, Lu5/g;->a:Lu5/c;

    iget-object p2, p2, Lu5/c;->x:Lp6/e;

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    invoke-interface {p2, p1, p0}, Lp6/e;->g(Lu5/g;Li5/e;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public j(Ljava/util/Collection;Lh6/f;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;",
            "Lh6/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "result"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lv5/h;->o:Ly5/g;

    invoke-interface {v3}, Ly5/g;->n()Z

    move-result v3

    if-eqz v3, :cond_b4

    iget-object v3, v0, Lv5/l;->e:Lx6/i;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv5/b;

    invoke-interface {v3, v2}, Lv5/b;->f(Lh6/f;)Ly5/w;

    move-result-object v3

    if-eqz v3, :cond_b4

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2f

    goto :goto_4b

    :cond_2f
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/u0;

    invoke-interface {v6}, Li5/a;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_33

    move v3, v4

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v3, v5

    :goto_4c
    if-eqz v3, :cond_b4

    iget-object v3, v0, Lv5/l;->e:Lx6/i;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv5/b;

    invoke-interface {v3, v2}, Lv5/b;->f(Lh6/f;)Ly5/w;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v0, Lv5/l;->b:Lu5/g;

    invoke-static {v6, v3}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object v6

    iget-object v7, v0, Lv5/h;->n:Li5/e;

    invoke-interface {v3}, Ly5/t;->getName()Lh6/f;

    move-result-object v8

    iget-object v9, v0, Lv5/l;->b:Lu5/g;

    iget-object v9, v9, Lu5/g;->a:Lu5/c;

    iget-object v9, v9, Lu5/c;->j:Lx5/b;

    invoke-interface {v9, v3}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v9

    invoke-static {v7, v6, v8, v9, v5}, Lt5/e;->R0(Li5/l;Lj5/h;Lh6/f;Li5/v0;Z)Lt5/e;

    move-result-object v5

    const-string v6, "createJavaMethod(\n      …omponent), true\n        )"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ly6/z1;->b:Ly6/z1;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-static {v6, v4, v4, v7, v8}, Lw5/b;->a(Ly6/z1;ZZLi5/a1;I)Lw5/a;

    move-result-object v6

    iget-object v7, v0, Lv5/l;->b:Lu5/g;

    iget-object v7, v7, Lu5/g;->e:Lw5/e;

    invoke-interface {v3}, Ly5/w;->getType()Ly5/x;

    move-result-object v3

    invoke-virtual {v7, v3, v6}, Lw5/e;->e(Ly5/x;Lw5/a;)Ly6/l0;

    move-result-object v16

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lv5/h;->p()Li5/r0;

    move-result-object v12

    sget-object v15, Li4/y;->a:Li4/y;

    sget-object v17, Li5/d0;->c:Li5/d0;

    sget-object v18, Li5/s;->e:Li5/t;

    const/16 v19, 0x0

    move-object v10, v5

    move-object v13, v15

    move-object v14, v15

    invoke-virtual/range {v10 .. v19}, Lt5/e;->Q0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;Ljava/util/Map;)Ll5/j0;

    invoke-virtual {v5, v4, v4}, Lt5/e;->S0(ZZ)V

    iget-object v3, v0, Lv5/l;->b:Lu5/g;

    iget-object v3, v3, Lu5/g;->a:Lu5/c;

    iget-object v3, v3, Lu5/c;->g:Ls5/g;

    check-cast v3, Ls5/g$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b4
    iget-object v3, v0, Lv5/l;->b:Lu5/g;

    iget-object v4, v3, Lu5/g;->a:Lu5/c;

    iget-object v4, v4, Lu5/c;->x:Lp6/e;

    iget-object v0, v0, Lv5/h;->n:Li5/e;

    invoke-interface {v4, v3, v0, v2, v1}, Lp6/e;->c(Lu5/g;Li5/e;Lh6/f;Ljava/util/Collection;)V

    return-void
.end method

.method public k()Lv5/b;
    .registers 3

    new-instance v0, Lv5/a;

    iget-object p0, p0, Lv5/h;->o:Ly5/g;

    sget-object v1, Lv5/g;->a:Lv5/g;

    invoke-direct {v0, p0, v1}, Lv5/a;-><init>(Ly5/g;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public m(Ljava/util/Collection;Lh6/f;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;",
            "Lh6/f;",
            ")V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lv5/h;->L(Lh6/f;)Ljava/util/Set;

    move-result-object v6

    sget-object v0, Lr5/m0;->a:Lr5/m0$a;

    const-string v0, "<this>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr5/m0;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_6f

    sget-object v0, Lr5/h;->m:Lr5/h;

    invoke-virtual {v0, p2}, Lr5/h;->b(Lh6/f;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    goto :goto_48

    :cond_30
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/x;

    invoke-interface {v2}, Li5/x;->isSuspend()Z

    move-result v2

    if-eqz v2, :cond_34

    move v0, v1

    goto :goto_49

    :cond_48
    :goto_48
    move v0, v7

    :goto_49
    if-eqz v0, :cond_6f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Li5/u0;

    invoke-virtual {p0, v4}, Lv5/h;->O(Li5/u0;)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_6b
    invoke-virtual {p0, p1, p2, v0, v1}, Lv5/h;->y(Ljava/util/Collection;Lh6/f;Ljava/util/Collection;Z)V

    return-void

    :cond_6f
    invoke-static {}, Li7/e$b;->a()Li7/e;

    move-result-object v8

    sget-object v2, Li4/y;->a:Li4/y;

    iget-object v3, p0, Lv5/h;->n:Li5/e;

    sget-object v4, Lu6/q;->a:Lu6/q;

    iget-object v0, p0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->u:Lz6/l;

    invoke-interface {v0}, Lz6/l;->a()Lk6/o;

    move-result-object v5

    move-object v0, p2

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Ls5/a;->d(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;)Ljava/util/Collection;

    move-result-object v9

    const-string v0, "resolveOverridesForNonSt….overridingUtil\n        )"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lv5/h$a;

    invoke-direct {v5, p0}, Lv5/h$a;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v9

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lv5/h;->z(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    new-instance v5, Lv5/h$b;

    invoke-direct {v5, p0}, Lv5/h$b;-><init>(Ljava/lang/Object;)V

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lv5/h;->z(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ad
    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Li5/u0;

    invoke-virtual {p0, v3}, Lv5/h;->O(Li5/u0;)Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    :cond_c4
    invoke-static {v0, v8}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v7}, Lv5/h;->y(Ljava/util/Collection;Lh6/f;Ljava/util/Collection;Z)V

    return-void
.end method

.method public n(Lh6/f;Ljava/util/Collection;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "result"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lv5/h;->o:Ly5/g;

    invoke-interface {v2}, Ly5/g;->m()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8c

    iget-object v2, v0, Lv5/l;->e:Lx6/i;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/b;

    invoke-interface {v2, v1}, Lv5/b;->c(Lh6/f;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Li4/v;->Y(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5/r;

    if-nez v2, :cond_2e

    goto :goto_8c

    :cond_2e
    sget-object v9, Li5/d0;->a:Li5/d0;

    iget-object v4, v0, Lv5/l;->b:Lu5/g;

    invoke-static {v4, v2}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object v8

    iget-object v7, v0, Lv5/h;->n:Li5/e;

    invoke-interface {v2}, Ly5/s;->getVisibility()Li5/i1;

    move-result-object v4

    invoke-static {v4}, Lr5/n0;->a(Li5/i1;)Li5/t;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v2}, Ly5/t;->getName()Lh6/f;

    move-result-object v12

    iget-object v4, v0, Lv5/l;->b:Lu5/g;

    iget-object v4, v4, Lu5/g;->a:Lu5/c;

    iget-object v4, v4, Lu5/c;->j:Lx5/b;

    invoke-interface {v4, v2}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Lt5/f;->M0(Li5/l;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/v0;Z)Lt5/f;

    move-result-object v4

    const-string v5, "create(\n            owne…inal = */ false\n        )"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lj5/h$a;->b:Lj5/h;

    invoke-static {v4, v5}, Lk6/h;->c(Li5/o0;Lj5/h;)Ll5/g0;

    move-result-object v5

    const-string v7, "createDefaultGetter(prop…iptor, Annotations.EMPTY)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ll5/f0;->x:Ll5/g0;

    iput-object v3, v4, Ll5/f0;->y:Li5/q0;

    iput-object v3, v4, Ll5/f0;->A:Li5/v;

    iput-object v3, v4, Ll5/f0;->B:Li5/v;

    iget-object v7, v0, Lv5/l;->b:Lu5/g;

    const/4 v8, 0x0

    invoke-static {v7, v4, v2, v8}, Lu5/b;->b(Lu5/g;Li5/l;Ly5/z;I)Lu5/g;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lv5/l;->l(Ly5/r;Lu5/g;)Ly6/l0;

    move-result-object v2

    sget-object v20, Li4/y;->a:Li4/y;

    invoke-virtual/range {p0 .. p0}, Lv5/h;->p()Li5/r0;

    move-result-object v18

    const/16 v19, 0x0

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v20

    invoke-virtual/range {v15 .. v20}, Ll5/f0;->L0(Ly6/l0;Ljava/util/List;Li5/r0;Li5/r0;Ljava/util/List;)V

    iput-object v2, v5, Ll5/g0;->m:Ly6/l0;

    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8c
    :goto_8c
    invoke-virtual/range {p0 .. p1}, Lv5/h;->M(Lh6/f;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_97

    return-void

    :cond_97
    invoke-static {}, Li7/e$b;->a()Li7/e;

    move-result-object v4

    invoke-static {}, Li7/e$b;->a()Li7/e;

    move-result-object v5

    new-instance v7, Lv5/h$c;

    invoke-direct {v7, v0}, Lv5/h$c;-><init>(Lv5/h;)V

    invoke-virtual {v0, v2, v6, v4, v7}, Lv5/h;->A(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    const-string v7, "<this>"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "elements"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Li4/t;->s(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c0

    invoke-static {v2}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    goto :goto_ea

    :cond_c0
    instance-of v7, v4, Ljava/util/Set;

    if-eqz v7, :cond_e1

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_cd
    :goto_cd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_cd

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    :cond_e1
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_e9
    move-object v4, v7

    :goto_ea
    new-instance v7, Lv5/h$d;

    invoke-direct {v7, v0}, Lv5/h$d;-><init>(Lv5/h;)V

    invoke-virtual {v0, v4, v5, v3, v7}, Lv5/h;->A(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, v5}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, v0, Lv5/h;->n:Li5/e;

    iget-object v0, v0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v4, v0, Lu5/c;->f:Lu6/q;

    iget-object v0, v0, Lu5/c;->u:Lz6/l;

    invoke-interface {v0}, Lz6/l;->a()Lk6/o;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Ls5/a;->d(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "resolveOverridesForNonSt…rridingUtil\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public o(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lv5/h;->o:Ly5/g;

    invoke-interface {p1}, Ly5/g;->m()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lv5/l;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p2, p0, Lv5/l;->e:Lx6/i;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv5/b;

    invoke-interface {p2}, Lv5/b;->e()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    const-string p2, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly6/l0;

    invoke-virtual {p2}, Ly6/l0;->l()Lr6/i;

    move-result-object p2

    invoke-interface {p2}, Lr6/i;->d()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_36

    :cond_4e
    return-object p1
.end method

.method public p()Li5/r0;
    .registers 2

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    sget v0, Lk6/i;->a:I

    if-eqz p0, :cond_b

    invoke-interface {p0}, Li5/e;->C0()Li5/r0;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    invoke-static {p0}, Lk6/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public q()Li5/l;
    .registers 1

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    return-object p0
.end method

.method public r(Lt5/e;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/h;->o:Ly5/g;

    invoke-interface {v0}, Ly5/g;->m()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    invoke-virtual {p0, p1}, Lv5/h;->O(Li5/u0;)Z

    move-result p0

    return p0
.end method

.method public s(Ly5/r;Ljava/util/List;Ly6/l0;Ljava/util/List;)Lv5/l$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/r;",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ly6/l0;",
            "Ljava/util/List<",
            "+",
            "Li5/e1;",
            ">;)",
            "Lv5/l$a;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "methodTypeParameters"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "returnType"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "valueParameters"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lv5/l;->b:Lu5/g;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->e:Ls5/j;

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    check-cast p1, Ls5/j$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p0, :cond_68

    if-eqz p3, :cond_63

    if-eqz p4, :cond_5e

    new-instance p0, Ls5/j$b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ls5/j$b;-><init>(Ly6/l0;Ly6/l0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    const-string v0, "c.components.signaturePr…dTypeParameters\n        )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lv5/l$a;

    const-string v0, "propagated.returnType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propagated.valueParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propagated.typeParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v0, "propagated.errors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lv5/l$a;-><init>(Ly6/l0;Ly6/l0;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    return-object p0

    :cond_5e
    const/4 p0, 0x3

    invoke-static {p0}, Ls5/j$a;->a(I)V

    throw p1

    :cond_63
    const/4 p0, 0x2

    invoke-static {p0}, Ls5/j$a;->a(I)V

    throw p1

    :cond_68
    const/4 p0, 0x1

    invoke-static {p0}, Ls5/j$a;->a(I)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Lazy Java member scope for "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lv5/h;->o:Ly5/g;

    invoke-interface {p0}, Ly5/g;->e()Lh6/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Ljava/util/List;Li5/k;ILy5/r;Ly6/l0;Ly6/l0;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Li5/k;",
            "I",
            "Ly5/r;",
            "Ly6/l0;",
            "Ly6/l0;",
            ")V"
        }
    .end annotation

    sget v0, Lj5/h;->I:I

    sget-object v5, Lj5/h$a;->b:Lj5/h;

    invoke-interface/range {p4 .. p4}, Ly5/t;->getName()Lh6/f;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ly6/a2;->i(Ly6/l0;)Ly6/l0;

    move-result-object v7

    const-string v0, "makeNotNullable(returnType)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ly5/r;->H()Z

    move-result v8

    if-eqz p6, :cond_1c

    invoke-static/range {p6 .. p6}, Ly6/a2;->i(Ly6/l0;)Ly6/l0;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move-object v11, v0

    move-object v0, p0

    iget-object v0, v0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->j:Lx5/b;

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object v12

    new-instance v0, Ll5/o0;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    move-object v1, p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final y(Ljava/util/Collection;Lh6/f;Ljava/util/Collection;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p0, Lv5/h;->n:Li5/e;

    iget-object v0, p0, Lv5/l;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v4, v0, Lu5/c;->f:Lu6/q;

    iget-object v0, v0, Lu5/c;->u:Lz6/l;

    invoke-interface {v0}, Lz6/l;->a()Lk6/o;

    move-result-object v5

    move-object v0, p2

    move-object v1, p3

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Ls5/a;->d(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;)Ljava/util/Collection;

    move-result-object p2

    const-string p3, "resolveOverridesForNonSt….overridingUtil\n        )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_20

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_5b

    :cond_20
    invoke-static {p1, p2}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/u0;

    invoke-static {v0}, Lr5/l0;->c(Li5/b;)Li5/b;

    move-result-object v1

    check-cast v1, Li5/u0;

    const-string v2, "resolvedOverride"

    if-nez v1, :cond_4d

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_54

    :cond_4d
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p3}, Lv5/h;->C(Li5/u0;Li5/a;Ljava/util/Collection;)Li5/u0;

    move-result-object v0

    :goto_54
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_58
    invoke-interface {p1, p4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_5b
    return-void
.end method

.method public final z(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/u0;

    invoke-static {v0}, Lr5/l0;->b(Li5/b;)Li5/b;

    move-result-object v1

    check-cast v1, Li5/u0;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    goto :goto_61

    :cond_1a
    invoke-static {v1}, Lr5/l0;->a(Li5/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    const-string v4, "identifier(nameInJava)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/u0;

    invoke-interface {v4}, Li5/u0;->q()Li5/x$a;

    move-result-object v4

    invoke-interface {v4, p1}, Li5/x$a;->f(Lh6/f;)Li5/x$a;

    invoke-interface {v4}, Li5/x$a;->r()Li5/x$a;

    invoke-interface {v4}, Li5/x$a;->k()Li5/x$a;

    invoke-interface {v4}, Li5/x$a;->build()Li5/x;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Li5/u0;

    invoke-virtual {p0, v1, v4}, Lv5/h;->G(Li5/u0;Li5/x;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {p0, v4, v1, p2}, Lv5/h;->C(Li5/u0;Li5/a;Ljava/util/Collection;)Li5/u0;

    move-result-object v1

    goto :goto_62

    :cond_61
    :goto_61
    move-object v1, v2

    :goto_62
    invoke-static {p4, v1}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-static {v0}, Lr5/h;->a(Li5/x;)Li5/x;

    move-result-object v1

    if-nez v1, :cond_6d

    goto/16 :goto_ff

    :cond_6d
    invoke-interface {v1}, Li5/l;->getName()Lh6/f;

    move-result-object v3

    const-string v4, "overridden.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Li5/u0;

    invoke-virtual {p0, v5, v1}, Lv5/h;->N(Li5/u0;Li5/x;)Z

    move-result v5

    if-eqz v5, :cond_80

    goto :goto_95

    :cond_94
    move-object v4, v2

    :goto_95
    check-cast v4, Li5/u0;

    if-eqz v4, :cond_ed

    invoke-interface {v4}, Li5/u0;->q()Li5/x$a;

    move-result-object v3

    invoke-interface {v1}, Li5/a;->g()Ljava/util/List;

    move-result-object v5

    const-string v6, "overridden.valueParameters"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li5/e1;

    invoke-interface {v7}, Li5/d1;->getType()Ly6/l0;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    :cond_c9
    invoke-interface {v4}, Li5/a;->g()Ljava/util/List;

    move-result-object v4

    const-string v5, "override.valueParameters"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4, v1}, Lt5/h;->a(Ljava/util/Collection;Ljava/util/Collection;Li5/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Li5/x$a;->c(Ljava/util/List;)Li5/x$a;

    invoke-interface {v3}, Li5/x$a;->r()Li5/x$a;

    invoke-interface {v3}, Li5/x$a;->k()Li5/x$a;

    sget-object v4, Lt5/e;->H:Li5/a$a;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Li5/x$a;->d(Li5/a$a;Ljava/lang/Object;)Li5/x$a;

    invoke-interface {v3}, Li5/x$a;->build()Li5/x;

    move-result-object v3

    check-cast v3, Li5/u0;

    goto :goto_ee

    :cond_ed
    move-object v3, v2

    :goto_ee
    if-eqz v3, :cond_ff

    invoke-virtual {p0, v3}, Lv5/h;->O(Li5/u0;)Z

    move-result v4

    if-eqz v4, :cond_f7

    goto :goto_f8

    :cond_f7
    move-object v3, v2

    :goto_f8
    if-eqz v3, :cond_ff

    invoke-virtual {p0, v3, v1, p2}, Lv5/h;->C(Li5/u0;Li5/a;Ljava/util/Collection;)Li5/u0;

    move-result-object v1

    goto :goto_100

    :cond_ff
    :goto_ff
    move-object v1, v2

    :goto_100
    invoke-static {p4, v1}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-interface {v0}, Li5/x;->isSuspend()Z

    move-result v1

    if-nez v1, :cond_10a

    goto :goto_13a

    :cond_10a
    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    const-string v3, "descriptor.name"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/u0;

    invoke-virtual {p0, v3}, Lv5/h;->D(Li5/u0;)Li5/u0;

    move-result-object v3

    if-eqz v3, :cond_136

    invoke-virtual {p0, v3, v0}, Lv5/h;->F(Li5/a;Li5/a;)Z

    move-result v4

    if-eqz v4, :cond_136

    goto :goto_137

    :cond_136
    move-object v3, v2

    :goto_137
    if-eqz v3, :cond_11d

    move-object v2, v3

    :cond_13a
    :goto_13a
    invoke-static {p4, v2}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_13f
    return-void
.end method
