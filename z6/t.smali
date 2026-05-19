.class public final Lz6/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/t$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIntersectionType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntersectionType.kt\norg/jetbrains/kotlin/types/checker/TypeIntersector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1549#2:184\n1620#2,2:185\n1622#2:188\n1789#2,3:189\n1620#2,3:192\n1549#2:195\n1620#2,3:196\n2661#2,7:199\n1747#2,3:206\n1#3:187\n*S KotlinDebug\n*F\n+ 1 IntersectionType.kt\norg/jetbrains/kotlin/types/checker/TypeIntersector\n*L\n80#1:184\n80#1:185,2\n80#1:188\n87#1:189,3\n98#1:192,3\n104#1:195\n104#1:196,3\n104#1:199,7\n137#1:206,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lz6/t;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz6/t;

    invoke-direct {v0}, Lz6/t;-><init>()V

    sput-object v0, Lz6/t;->a:Lz6/t;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ly6/s0;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ly6/s0;",
            "-",
            "Ly6/s0;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "filteredTypes.iterator()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/s0;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    goto :goto_51

    :cond_23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/s0;

    if-eq v4, v0, :cond_4d

    const-string v5, "lower"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "upper"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4d

    move v4, v2

    goto :goto_4e

    :cond_4d
    move v4, v3

    :goto_4e
    if-eqz v4, :cond_27

    goto :goto_52

    :cond_51
    :goto_51
    move v2, v3

    :goto_52
    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    :cond_58
    return-object p0
.end method

.method public final b(Ljava/util/List;)Ly6/s0;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly6/s0;",
            ">;)",
            "Ly6/s0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "types"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0xa

    if-eqz v5, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly6/s0;

    invoke-virtual {v5}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v8

    instance-of v8, v8, Ly6/j0;

    if-eqz v8, :cond_6d

    invoke-virtual {v5}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v8

    invoke-interface {v8}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object v8

    const-string v9, "type.constructor.supertypes"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly6/l0;

    const-string v10, "it"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ly6/h0;->d(Ly6/l0;)Ly6/s0;

    move-result-object v8

    invoke-virtual {v5}, Ly6/l0;->G0()Z

    move-result v10

    if-eqz v10, :cond_65

    invoke-virtual {v8, v6}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v8

    :cond_65
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_69
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_6d
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_71
    sget-object v4, Lz6/t$a;->a:Lz6/t$a;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_77
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly6/d2;

    invoke-virtual {v4, v8}, Lz6/t$a;->a(Ly6/d2;)Lz6/t$a;

    move-result-object v4

    goto :goto_77

    :cond_88
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_ca

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly6/s0;

    sget-object v10, Lz6/t$a;->d:Lz6/t$a;

    if-ne v4, v10, :cond_c6

    instance-of v10, v8, Lz6/h;

    if-eqz v10, :cond_c2

    check-cast v8, Lz6/h;

    const-string v10, "<this>"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lz6/h;

    iget-object v12, v8, Lz6/h;->b:Lc7/b;

    iget-object v13, v8, Lz6/h;->c:Lz6/j;

    iget-object v14, v8, Lz6/h;->d:Ly6/d2;

    iget-object v15, v8, Lz6/h;->e:Ly6/g1;

    iget-boolean v8, v8, Lz6/h;->f:Z

    const/16 v17, 0x1

    move-object v11, v10

    move/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Lz6/h;-><init>(Lc7/b;Lz6/j;Ly6/d2;Ly6/g1;ZZ)V

    move-object v8, v10

    :cond_c2
    invoke-static {v8, v9}, Ly6/w0;->d(Ly6/s0;Z)Ly6/s0;

    move-result-object v8

    :cond_c6
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_91

    :cond_ca
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_eb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/s0;

    invoke-virtual {v4}, Ly6/l0;->E0()Ly6/g1;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d7

    :cond_eb
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Empty collection can\'t be reduced."

    if-eqz v3, :cond_250

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    :goto_fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_16f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly6/g1;

    check-cast v3, Ly6/g1;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "other"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lf7/a;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11f

    invoke-virtual {v7}, Lf7/a;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11f

    goto :goto_fb

    :cond_11f
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Ly6/g1;->b:Ly6/g1$a;

    iget-object v11, v11, Lf7/v;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    const-string v12, "idPerType.values"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_135
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_168

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    iget-object v13, v3, Lf7/e;->a:Lf7/c;

    invoke-virtual {v13, v12}, Lf7/c;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ly6/e1;

    iget-object v14, v7, Lf7/e;->a:Lf7/c;

    invoke-virtual {v14, v12}, Lf7/c;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly6/e1;

    if-nez v13, :cond_160

    if-eqz v12, :cond_15e

    invoke-virtual {v12, v13}, Ly6/e1;->c(Ly6/e1;)Ly6/e1;

    move-result-object v12

    goto :goto_164

    :cond_15e
    move-object v12, v8

    goto :goto_164

    :cond_160
    invoke-virtual {v13, v12}, Ly6/e1;->c(Ly6/e1;)Ly6/e1;

    move-result-object v12

    :goto_164
    invoke-static {v10, v12}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_135

    :cond_168
    sget-object v3, Ly6/g1;->b:Ly6/g1$a;

    invoke-virtual {v3, v10}, Ly6/g1$a;->c(Ljava/util/List;)Ly6/g1;

    move-result-object v3

    goto :goto_fb

    :cond_16f
    check-cast v3, Ly6/g1;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v6, :cond_17f

    invoke-static {v5}, Li4/v;->W(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/s0;

    goto/16 :goto_245

    :cond_17f
    new-instance v1, Lz6/u;

    invoke-direct {v1, v5}, Lz6/u;-><init>(Ljava/util/Set;)V

    new-instance v1, Lz6/v;

    invoke-direct {v1, v0}, Lz6/v;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v1}, Lz6/t;->a(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19e

    goto/16 :goto_214

    :cond_19e
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :goto_1ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_211

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly6/s0;

    check-cast v4, Ly6/s0;

    if-eqz v4, :cond_20f

    if-nez v6, :cond_1bf

    goto :goto_20f

    :cond_1bf
    invoke-virtual {v4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    invoke-virtual {v6}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v10

    instance-of v11, v7, Lm6/n;

    if-eqz v11, :cond_1f2

    instance-of v12, v10, Lm6/n;

    if-eqz v12, :cond_1f2

    check-cast v7, Lm6/n;

    check-cast v10, Lm6/n;

    iget-object v4, v7, Lm6/n;->c:Ljava/util/Set;

    iget-object v6, v10, Lm6/n;->c:Ljava/util/Set;

    invoke-static {v4, v6}, Li4/v;->m0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    new-instance v4, Lm6/n;

    iget-wide v11, v7, Lm6/n;->a:J

    iget-object v13, v7, Lm6/n;->b:Li5/e0;

    const/4 v15, 0x0

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lm6/n;-><init>(JLi5/e0;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v6, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ly6/g1;->c:Ly6/g1;

    invoke-static {v6, v4, v9}, Ly6/m0;->d(Ly6/g1;Lm6/n;Z)Ly6/s0;

    move-result-object v4

    goto :goto_1ac

    :cond_1f2
    if-eqz v11, :cond_200

    check-cast v7, Lm6/n;

    iget-object v4, v7, Lm6/n;->c:Ljava/util/Set;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20f

    move-object v4, v6

    goto :goto_1ac

    :cond_200
    instance-of v6, v10, Lm6/n;

    if-eqz v6, :cond_20f

    check-cast v10, Lm6/n;

    iget-object v6, v10, Lm6/n;->c:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20f

    goto :goto_1ac

    :cond_20f
    :goto_20f
    move-object v4, v8

    goto :goto_1ac

    :cond_211
    move-object v8, v4

    check-cast v8, Ly6/s0;

    :goto_214
    if-eqz v8, :cond_218

    move-object v0, v8

    goto :goto_245

    :cond_218
    new-instance v2, Lz6/w;

    sget-object v4, Lz6/l;->b:Lz6/l$a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lz6/l$a;->b:Lz6/m;

    invoke-direct {v2, v4}, Lz6/w;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lz6/t;->a(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_23c

    invoke-static {v0}, Li4/v;->W(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/s0;

    goto :goto_245

    :cond_23c
    new-instance v0, Ly6/j0;

    invoke-direct {v0, v5}, Ly6/j0;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ly6/j0;->h()Ly6/s0;

    move-result-object v0

    :goto_245
    invoke-virtual {v0, v3}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object v0

    return-object v0

    :cond_24a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
