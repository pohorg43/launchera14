.class public final Lu6/f0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeDeserializer.kt\norg/jetbrains/kotlin/serialization/deserialization/TypeDeserializer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n1549#2:306\n1620#2,3:307\n1559#2:310\n1590#2,4:311\n1549#2:316\n1620#2,3:317\n1#3:315\n*S KotlinDebug\n*F\n+ 1 TypeDeserializer.kt\norg/jetbrains/kotlin/serialization/deserialization/TypeDeserializer\n*L\n76#1:306\n76#1:307,3\n105#1:310\n105#1:311,4\n251#1:316\n251#1:317,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lu6/m;

.field public final b:Lu6/f0;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Li5/h;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Li5/h;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu6/m;Lu6/f0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/m;",
            "Lu6/f0;",
            "Ljava/util/List<",
            "Lc6/s;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterProtos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerPresentableName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/f0;->a:Lu6/m;

    iput-object p2, p0, Lu6/f0;->b:Lu6/f0;

    iput-object p4, p0, Lu6/f0;->c:Ljava/lang/String;

    iput-object p5, p0, Lu6/f0;->d:Ljava/lang/String;

    iget-object p2, p1, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p4, Lu6/f0$a;

    invoke-direct {p4, p0}, Lu6/f0$a;-><init>(Lu6/f0;)V

    invoke-interface {p2, p4}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p2

    iput-object p2, p0, Lu6/f0;->e:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance p2, Lu6/f0$c;

    invoke-direct {p2, p0}, Lu6/f0$c;-><init>(Lu6/f0;)V

    invoke-interface {p1, p2}, Lx6/m;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    iput-object p1, p0, Lu6/f0;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object p1, Li4/z;->a:Li4/z;

    goto :goto_73

    :cond_49
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_53
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_73

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lc6/s;

    iget v0, p5, Lc6/s;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lw6/p;

    iget-object v2, p0, Lu6/f0;->a:Lu6/m;

    invoke-direct {v1, v2, p5, p3}, Lw6/p;-><init>(Lu6/m;Lc6/s;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_53

    :cond_73
    :goto_73
    iput-object p1, p0, Lu6/f0;->g:Ljava/util/Map;

    return-void
.end method

.method public static final f(Lc6/q;Lu6/f0;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6/q;",
            "Lu6/f0;",
            ")",
            "Ljava/util/List<",
            "Lc6/q$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc6/q;->d:Ljava/util/List;

    const-string v1, "argumentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lu6/f0;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->d:Le6/g;

    invoke-static {p0, v1}, Le6/f;->c(Lc6/q;Le6/g;)Lc6/q;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-static {p0, p1}, Lu6/f0;->f(Lc6/q;Lu6/f0;)Ljava/util/List;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-nez p0, :cond_1b

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_1b
    invoke-static {v0, p0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lu6/f0;Lc6/q;ZI)Ly6/s0;
    .registers 4

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lu6/f0;->e(Lc6/q;Z)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lu6/f0;Lc6/q;I)Li5/e;
    .registers 7

    iget-object v0, p0, Lu6/f0;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->b:Le6/c;

    invoke-static {v0, p2}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object p2

    new-instance v0, Lu6/f0$e;

    invoke-direct {v0, p0}, Lu6/f0$e;-><init>(Lu6/f0;)V

    invoke-static {p1, v0}, Lj7/l;->i(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p1

    sget-object v0, Lu6/f0$f;->a:Lu6/f0$f;

    invoke-static {p1, v0}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lj7/s;

    iget-object v0, p1, Lj7/s;->a:Lj7/h;

    invoke-interface {v0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p1, Lj7/s;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_45
    sget-object p1, Lu6/f0$d;->a:Lu6/f0$d;

    invoke-static {p2, p1}, Lj7/l;->i(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p1

    invoke-static {p1}, Lj7/p;->l(Lj7/h;)I

    move-result p1

    :goto_4f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_5e

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_5e
    iget-object p0, p0, Lu6/f0;->a:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    iget-object p0, p0, Lu6/k;->l:Li5/g0;

    invoke-virtual {p0, p2, v1}, Li5/g0;->a(Lh6/b;Ljava/util/List;)Li5/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Ly6/s0;
    .registers 3

    iget-object v0, p0, Lu6/f0;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->b:Le6/c;

    invoke-static {v0, p1}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object p1

    iget-boolean p1, p1, Lh6/b;->c:Z

    if-eqz p1, :cond_17

    iget-object p0, p0, Lu6/f0;->a:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    iget-object p0, p0, Lu6/k;->g:Lu6/u;

    invoke-interface {p0}, Lu6/u;->a()Ly6/s0;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ly6/l0;Ly6/l0;)Ly6/s0;
    .registers 11

    invoke-static {p1}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object v0

    invoke-virtual {p1}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v1

    invoke-static {p1}, Lf5/f;->f(Ly6/l0;)Ly6/l0;

    move-result-object v2

    invoke-static {p1}, Lf5/f;->d(Ly6/l0;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1}, Lf5/f;->h(Ly6/l0;)Ljava/util/List;

    move-result-object p0

    const/4 v4, 0x1

    invoke-static {p0, v4}, Li4/v;->B(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p0, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly6/q1;

    invoke-interface {v5}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3c
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lf5/f;->b(Lf5/g;Lj5/h;Ly6/l0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Z)Ly6/s0;

    move-result-object p0

    invoke-virtual {p1}, Ly6/l0;->G0()Z

    move-result p1

    invoke-virtual {p0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lu6/f0;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(I)Li5/a1;
    .registers 4

    iget-object v0, p0, Lu6/f0;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/a1;

    if-nez v0, :cond_18

    iget-object p0, p0, Lu6/f0;->b:Lu6/f0;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1}, Lu6/f0;->d(I)Li5/a1;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    :goto_18
    return-object v0
.end method

.method public final e(Lc6/q;Z)Ly6/s0;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "proto"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lc6/q;->n()Z

    move-result v2

    if-eqz v2, :cond_16

    iget v2, v1, Lc6/q;->i:I

    invoke-virtual {v0, v2}, Lu6/f0;->a(I)Ly6/s0;

    move-result-object v2

    goto :goto_24

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lc6/q;->q()Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, v1, Lc6/q;->l:I

    invoke-virtual {v0, v2}, Lu6/f0;->a(I)Ly6/s0;

    move-result-object v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-eqz v2, :cond_27

    return-object v2

    :cond_27
    invoke-virtual/range {p1 .. p1}, Lc6/q;->n()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_48

    iget-object v2, v0, Lu6/f0;->e:Lkotlin/jvm/functions/Function1;

    iget v6, v1, Lc6/q;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/h;

    if-nez v2, :cond_e8

    iget v2, v1, Lc6/q;->i:I

    invoke-static {v0, v1, v2}, Lu6/f0;->j(Lu6/f0;Lc6/q;I)Li5/e;

    move-result-object v2

    goto/16 :goto_e8

    :cond_48
    iget v2, v1, Lc6/q;->c:I

    and-int/lit8 v6, v2, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_52

    move v6, v4

    goto :goto_53

    :cond_52
    move v6, v5

    :goto_53
    if-eqz v6, :cond_75

    iget v2, v1, Lc6/q;->j:I

    invoke-virtual {v0, v2}, Lu6/f0;->d(I)Li5/a1;

    move-result-object v2

    if-nez v2, :cond_e8

    sget-object v2, La7/j;->a:La7/j;

    sget-object v6, La7/i;->S:La7/i;

    new-array v7, v3, [Ljava/lang/String;

    iget v8, v1, Lc6/q;->j:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, v0, Lu6/f0;->d:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, La7/j;->d(La7/i;[Ljava/lang/String;)La7/h;

    move-result-object v2

    goto/16 :goto_fc

    :cond_75
    const/16 v6, 0x40

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_7c

    move v2, v4

    goto :goto_7d

    :cond_7c
    move v2, v5

    :goto_7d
    if-eqz v2, :cond_cc

    iget-object v2, v0, Lu6/f0;->a:Lu6/m;

    iget-object v2, v2, Lu6/m;->b:Le6/c;

    iget v6, v1, Lc6/q;->k:I

    invoke-interface {v2, v6}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lu6/f0;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_91
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Li5/a1;

    invoke-interface {v8}, Li5/l;->getName()Lh6/f;

    move-result-object v8

    invoke-virtual {v8}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    goto :goto_ae

    :cond_ad
    const/4 v7, 0x0

    :goto_ae
    move-object v6, v7

    check-cast v6, Li5/a1;

    if-nez v6, :cond_ca

    sget-object v6, La7/j;->a:La7/j;

    sget-object v7, La7/i;->T:La7/i;

    new-array v8, v3, [Ljava/lang/String;

    aput-object v2, v8, v5

    iget-object v2, v0, Lu6/f0;->a:Lu6/m;

    iget-object v2, v2, Lu6/m;->c:Li5/l;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, La7/j;->d(La7/i;[Ljava/lang/String;)La7/h;

    move-result-object v2

    goto :goto_fc

    :cond_ca
    move-object v2, v6

    goto :goto_e8

    :cond_cc
    invoke-virtual/range {p1 .. p1}, Lc6/q;->q()Z

    move-result v2

    if-eqz v2, :cond_f2

    iget-object v2, v0, Lu6/f0;->f:Lkotlin/jvm/functions/Function1;

    iget v6, v1, Lc6/q;->l:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/h;

    if-nez v2, :cond_e8

    iget v2, v1, Lc6/q;->l:I

    invoke-static {v0, v1, v2}, Lu6/f0;->j(Lu6/f0;Lc6/q;I)Li5/e;

    move-result-object v2

    :cond_e8
    :goto_e8
    invoke-interface {v2}, Li5/h;->h()Ly6/j1;

    move-result-object v2

    const-string v6, "classifier.typeConstructor"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_fc

    :cond_f2
    sget-object v2, La7/j;->a:La7/j;

    sget-object v6, La7/i;->W:La7/i;

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, La7/j;->d(La7/i;[Ljava/lang/String;)La7/h;

    move-result-object v2

    :goto_fc
    invoke-interface {v2}, Ly6/j1;->e()Li5/h;

    move-result-object v6

    invoke-static {v6}, La7/j;->f(Li5/l;)Z

    move-result v6

    if-eqz v6, :cond_12e

    sget-object v0, La7/j;->a:La7/j;

    sget-object v1, La7/i;->z0:La7/i;

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v5, "kind"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeConstructor"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "formatParams"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Li4/y;->a:Li4/y;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v2, v3}, La7/j;->e(La7/i;Ljava/util/List;Ly6/j1;[Ljava/lang/String;)La7/g;

    move-result-object v0

    return-object v0

    :cond_12e
    new-instance v6, Lw6/a;

    iget-object v7, v0, Lu6/f0;->a:Lu6/m;

    iget-object v7, v7, Lu6/m;->a:Lu6/k;

    iget-object v7, v7, Lu6/k;->a:Lx6/m;

    new-instance v8, Lu6/f0$b;

    invoke-direct {v8, v0, v1}, Lu6/f0$b;-><init>(Lu6/f0;Lc6/q;)V

    invoke-direct {v6, v7, v8}, Lw6/a;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    iget-object v7, v0, Lu6/f0;->a:Lu6/m;

    iget-object v8, v7, Lu6/m;->a:Lu6/k;

    iget-object v8, v8, Lu6/k;->t:Ljava/util/List;

    iget-object v7, v7, Lu6/m;->c:Li5/l;

    invoke-virtual {v0, v8, v6, v2, v7}, Lu6/f0;->h(Ljava/util/List;Lj5/h;Ly6/j1;Li5/l;)Ly6/g1;

    move-result-object v9

    invoke-static {v1, v0}, Lu6/f0;->f(Lc6/q;Lu6/f0;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v15, "typeTable"

    const-string v14, "<this>"

    if-eqz v10, :cond_232

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    if-ltz v5, :cond_22d

    check-cast v10, Lc6/q$b;

    invoke-interface {v2}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v13

    const-string v12, "constructor.parameters"

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v5}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/a1;

    iget-object v12, v10, Lc6/q$b;->c:Lc6/q$b$c;

    sget-object v13, Lc6/q$b$c;->e:Lc6/q$b$c;

    if-ne v12, v13, :cond_1a3

    if-nez v5, :cond_19b

    new-instance v5, Ly6/x0;

    iget-object v10, v0, Lu6/f0;->a:Lu6/m;

    iget-object v10, v10, Lu6/m;->a:Lu6/k;

    iget-object v10, v10, Lu6/k;->b:Li5/e0;

    invoke-interface {v10}, Li5/e0;->k()Lf5/g;

    move-result-object v10

    invoke-direct {v5, v10}, Ly6/x0;-><init>(Lf5/g;)V

    goto/16 :goto_227

    :cond_19b
    new-instance v10, Ly6/y0;

    invoke-direct {v10, v5}, Ly6/y0;-><init>(Li5/a1;)V

    :goto_1a0
    move-object v5, v10

    goto/16 :goto_227

    :cond_1a3
    const-string v5, "typeArgumentProto.projection"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "projection"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_1dd

    if-eq v5, v4, :cond_1da

    if-eq v5, v3, :cond_1d7

    const/4 v0, 0x3

    if-eq v5, v0, :cond_1c0

    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0

    :cond_1c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d7
    sget-object v5, Ly6/e2;->c:Ly6/e2;

    goto :goto_1df

    :cond_1da
    sget-object v5, Ly6/e2;->e:Ly6/e2;

    goto :goto_1df

    :cond_1dd
    sget-object v5, Ly6/e2;->d:Ly6/e2;

    :goto_1df
    iget-object v12, v0, Lu6/f0;->a:Lu6/m;

    iget-object v12, v12, Lu6/m;->d:Le6/g;

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lc6/q$b;->e()Z

    move-result v13

    if-eqz v13, :cond_1f2

    iget-object v12, v10, Lc6/q$b;->d:Lc6/q;

    goto :goto_205

    :cond_1f2
    iget v13, v10, Lc6/q$b;->b:I

    const/4 v14, 0x4

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_1fa

    move v13, v4

    goto :goto_1fb

    :cond_1fa
    const/4 v13, 0x0

    :goto_1fb
    if-eqz v13, :cond_204

    iget v13, v10, Lc6/q$b;->e:I

    invoke-virtual {v12, v13}, Le6/g;->a(I)Lc6/q;

    move-result-object v12

    goto :goto_205

    :cond_204
    const/4 v12, 0x0

    :goto_205
    if-nez v12, :cond_21c

    new-instance v5, Ly6/s1;

    sget-object v12, La7/i;->E0:La7/i;

    new-array v13, v4, [Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-static {v12, v13}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v10

    invoke-direct {v5, v10}, Ly6/s1;-><init>(Ly6/l0;)V

    goto :goto_227

    :cond_21c
    new-instance v10, Ly6/s1;

    invoke-virtual {v0, v12}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v12

    invoke-direct {v10, v5, v12}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto/16 :goto_1a0

    :goto_227
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v11

    goto/16 :goto_15f

    :cond_22d
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_232
    const/4 v3, 0x0

    invoke-static {v8}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2}, Ly6/j1;->e()Li5/h;

    move-result-object v7

    if-eqz p2, :cond_292

    instance-of v8, v7, Li5/z0;

    if-eqz v8, :cond_292

    sget-object v8, Ly6/m0;->a:Ly6/m0;

    check-cast v7, Li5/z0;

    invoke-static {v7, v5}, Ly6/m0;->b(Li5/z0;Ljava/util/List;)Ly6/s0;

    move-result-object v5

    iget-object v7, v0, Lu6/f0;->a:Lu6/m;

    iget-object v7, v7, Lu6/m;->a:Lu6/k;

    iget-object v7, v7, Lu6/k;->t:Ljava/util/List;

    invoke-virtual {v5}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v8

    invoke-static {v6, v8}, Li4/v;->S(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    const-string v8, "annotations"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_268

    sget-object v6, Lj5/h$a;->b:Lj5/h;

    goto :goto_26e

    :cond_268
    new-instance v8, Lj5/i;

    invoke-direct {v8, v6}, Lj5/i;-><init>(Ljava/util/List;)V

    move-object v6, v8

    :goto_26e
    iget-object v8, v0, Lu6/f0;->a:Lu6/m;

    iget-object v8, v8, Lu6/m;->c:Li5/l;

    invoke-virtual {v0, v7, v6, v2, v8}, Lu6/f0;->h(Ljava/util/List;Lj5/h;Ly6/j1;Li5/l;)Ly6/g1;

    move-result-object v2

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v6

    if-nez v6, :cond_286

    iget-boolean v6, v1, Lc6/q;->e:Z

    if-eqz v6, :cond_284

    goto :goto_286

    :cond_284
    const/4 v6, 0x0

    goto :goto_287

    :cond_286
    :goto_286
    move v6, v4

    :goto_287
    invoke-virtual {v5, v6}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v5

    invoke-virtual {v5, v2}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object v2

    move-object v13, v14

    goto/16 :goto_3d7

    :cond_292
    sget-object v6, Le6/b;->a:Le6/b$b;

    iget v7, v1, Lc6/q;->q:I

    const-string v8, "SUSPEND_TYPE.get(proto.flags)"

    invoke-static {v6, v7, v8}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38f

    iget-boolean v12, v1, Lc6/q;->e:Z

    invoke-interface {v2}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-eqz v6, :cond_2db

    if-eq v6, v4, :cond_2b2

    goto :goto_2d7

    :cond_2b2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ltz v6, :cond_2d7

    invoke-interface {v2}, Ly6/j1;->k()Lf5/g;

    move-result-object v7

    invoke-virtual {v7, v6}, Lf5/g;->x(I)Li5/e;

    move-result-object v6

    invoke-interface {v6}, Li5/h;->h()Ly6/j1;

    move-result-object v10

    const-string v6, "functionTypeConstructor.…on(arity).typeConstructor"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/16 v6, 0x10

    move-object v11, v5

    move-object v8, v14

    move v14, v6

    invoke-static/range {v9 .. v14}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object v6

    move-object v13, v8

    goto/16 :goto_37f

    :cond_2d7
    :goto_2d7
    move-object v8, v14

    move-object v13, v8

    goto/16 :goto_37e

    :cond_2db
    move-object v8, v14

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v6, v9

    move-object v7, v2

    move-object v13, v8

    move-object v8, v5

    move v9, v12

    invoke-static/range {v6 .. v11}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    invoke-interface {v7}, Ly6/j1;->e()Li5/h;

    move-result-object v7

    if-eqz v7, :cond_2fa

    invoke-static {v7}, Lf5/f;->e(Li5/l;)Lg5/c;

    move-result-object v7

    goto :goto_2fb

    :cond_2fa
    move-object v7, v3

    :goto_2fb
    sget-object v8, Lg5/c;->d:Lg5/c;

    if-ne v7, v8, :cond_301

    move v7, v4

    goto :goto_302

    :cond_301
    const/4 v7, 0x0

    :goto_302
    if-nez v7, :cond_306

    goto/16 :goto_37e

    :cond_306
    invoke-static {v6}, Lf5/f;->h(Ly6/l0;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly6/q1;

    if-eqz v7, :cond_37e

    invoke-interface {v7}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v7

    if-nez v7, :cond_31a

    goto/16 :goto_37e

    :cond_31a
    invoke-virtual {v7}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v8

    invoke-interface {v8}, Ly6/j1;->e()Li5/h;

    move-result-object v8

    if-eqz v8, :cond_329

    invoke-static {v8}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v8

    goto :goto_32a

    :cond_329
    move-object v8, v3

    :goto_32a
    invoke-virtual {v7}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v4, :cond_37f

    sget-object v9, Lf5/j;->f:Lh6/c;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_345

    sget-object v9, Lu6/g0;->a:Lh6/c;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_345

    goto :goto_37f

    :cond_345
    invoke-virtual {v7}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly6/q1;

    invoke-interface {v7}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v7

    const-string v8, "continuationArgumentType.arguments.single().type"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lu6/f0;->a:Lu6/m;

    iget-object v8, v8, Lu6/m;->c:Li5/l;

    instance-of v9, v8, Li5/a;

    if-eqz v9, :cond_363

    check-cast v8, Li5/a;

    goto :goto_364

    :cond_363
    move-object v8, v3

    :goto_364
    if-eqz v8, :cond_36b

    invoke-static {v8}, Lo6/c;->c(Li5/l;)Lh6/c;

    move-result-object v8

    goto :goto_36c

    :cond_36b
    move-object v8, v3

    :goto_36c
    sget-object v9, Lu6/e0;->a:Lh6/c;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_379

    invoke-virtual {v0, v6, v7}, Lu6/f0;->b(Ly6/l0;Ly6/l0;)Ly6/s0;

    move-result-object v6

    goto :goto_37f

    :cond_379
    invoke-virtual {v0, v6, v7}, Lu6/f0;->b(Ly6/l0;Ly6/l0;)Ly6/s0;

    move-result-object v6

    goto :goto_37f

    :cond_37e
    :goto_37e
    move-object v6, v3

    :cond_37f
    :goto_37f
    if-nez v6, :cond_38d

    sget-object v6, La7/j;->a:La7/j;

    sget-object v7, La7/i;->U:La7/i;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v7, v5, v2, v8}, La7/j;->e(La7/i;Ljava/util/List;Ly6/j1;[Ljava/lang/String;)La7/g;

    move-result-object v2

    goto :goto_3d7

    :cond_38d
    move-object v2, v6

    goto :goto_3d7

    :cond_38f
    move-object v13, v14

    iget-boolean v10, v1, Lc6/q;->e:Z

    const/4 v11, 0x0

    const/16 v12, 0x10

    move-object v6, v9

    move-object v7, v2

    move-object v8, v5

    move v9, v10

    move-object v10, v11

    move v11, v12

    invoke-static/range {v6 .. v11}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object v2

    sget-object v5, Le6/b;->b:Le6/b$b;

    iget v6, v1, Lc6/q;->q:I

    const-string v7, "DEFINITELY_NOT_NULL_TYPE.get(proto.flags)"

    invoke-static {v5, v6, v7}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d7

    sget-object v5, Ly6/u;->d:Ly6/u$a;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v5, v2, v4, v6, v7}, Ly6/u$a;->a(Ly6/u$a;Ly6/d2;ZZI)Ly6/u;

    move-result-object v5

    if-eqz v5, :cond_3b7

    move-object v2, v5

    goto :goto_3d7

    :cond_3b7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null DefinitelyNotNullType for \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d7
    :goto_3d7
    iget-object v5, v0, Lu6/f0;->a:Lu6/m;

    iget-object v5, v5, Lu6/m;->d:Le6/g;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lc6/q;->m()Z

    move-result v6

    if-eqz v6, :cond_3ea

    iget-object v3, v1, Lc6/q;->o:Lc6/q;

    goto :goto_3fb

    :cond_3ea
    iget v6, v1, Lc6/q;->c:I

    const/16 v7, 0x800

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_3f2

    goto :goto_3f3

    :cond_3f2
    const/4 v4, 0x0

    :goto_3f3
    if-eqz v4, :cond_3fb

    iget v3, v1, Lc6/q;->p:I

    invoke-virtual {v5, v3}, Le6/g;->a(I)Lc6/q;

    move-result-object v3

    :cond_3fb
    :goto_3fb
    if-eqz v3, :cond_40a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lu6/f0;->e(Lc6/q;Z)Ly6/s0;

    move-result-object v3

    invoke-static {v2, v3}, Ly6/w0;->e(Ly6/s0;Ly6/s0;)Ly6/s0;

    move-result-object v3

    if-nez v3, :cond_409

    goto :goto_40a

    :cond_409
    move-object v2, v3

    :cond_40a
    :goto_40a
    invoke-virtual/range {p1 .. p1}, Lc6/q;->n()Z

    move-result v3

    if-eqz v3, :cond_425

    iget-object v3, v0, Lu6/f0;->a:Lu6/m;

    iget-object v3, v3, Lu6/m;->b:Le6/c;

    iget v1, v1, Lc6/q;->i:I

    invoke-static {v3, v1}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object v1

    iget-object v0, v0, Lu6/f0;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->s:Lk5/e;

    invoke-interface {v0, v1, v2}, Lk5/e;->a(Lh6/b;Ly6/s0;)Ly6/s0;

    move-result-object v0

    return-object v0

    :cond_425
    return-object v2
.end method

.method public final h(Ljava/util/List;Lj5/h;Ly6/j1;Li5/l;)Ly6/g1;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly6/f1;",
            ">;",
            "Lj5/h;",
            "Ly6/j1;",
            "Li5/l;",
            ")",
            "Ly6/g1;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/f1;

    invoke-interface {v0, p2, p3, p4}, Ly6/f1;->a(Lj5/h;Ly6/j1;Li5/l;)Ly6/g1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_31

    :cond_41
    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-virtual {p0, p1}, Ly6/g1$a;->c(Ljava/util/List;)Ly6/g1;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lc6/q;)Ly6/l0;
    .registers 9

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lc6/q;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_f

    move v0, v3

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-eqz v0, :cond_5b

    iget-object v0, p0, Lu6/f0;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->b:Le6/c;

    iget v1, p1, Lc6/q;->f:I

    invoke-interface {v0, v1}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v3}, Lu6/f0;->e(Lc6/q;Z)Ly6/s0;

    move-result-object v1

    iget-object v4, p0, Lu6/f0;->a:Lu6/m;

    iget-object v4, v4, Lu6/m;->d:Le6/g;

    const-string v5, "<this>"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeTable"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lc6/q;->o()Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v2, p1, Lc6/q;->g:Lc6/q;

    goto :goto_49

    :cond_37
    iget v5, p1, Lc6/q;->c:I

    const/16 v6, 0x8

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3f

    move v2, v3

    :cond_3f
    if-eqz v2, :cond_48

    iget v2, p1, Lc6/q;->h:I

    invoke-virtual {v4, v2}, Le6/g;->a(I)Lc6/q;

    move-result-object v2

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lu6/f0;->e(Lc6/q;Z)Ly6/s0;

    move-result-object v2

    iget-object p0, p0, Lu6/f0;->a:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    iget-object p0, p0, Lu6/k;->j:Lu6/r;

    invoke-interface {p0, p1, v0, v1, v2}, Lu6/r;->a(Lc6/q;Ljava/lang/String;Ly6/s0;Ly6/s0;)Ly6/l0;

    move-result-object p0

    return-object p0

    :cond_5b
    invoke-virtual {p0, p1, v3}, Lu6/f0;->e(Lc6/q;Z)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu6/f0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu6/f0;->b:Lu6/f0;

    if-nez v1, :cond_11

    const-string p0, ""

    goto :goto_22

    :cond_11
    const-string v1, ". Child of "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lu6/f0;->b:Lu6/f0;

    iget-object p0, p0, Lu6/f0;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
