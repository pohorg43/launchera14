.class public final Lw5/i;
.super Ly6/e0;
.source ""

# interfaces
.implements Ly6/r0;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRawType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RawType.kt\norg/jetbrains/kotlin/load/java/lazy/types/RawTypeImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1726#2,3:99\n1549#2:102\n1620#2,3:103\n*S KotlinDebug\n*F\n+ 1 RawType.kt\norg/jetbrains/kotlin/load/java/lazy/types/RawTypeImpl\n*L\n80#1:99,3\n61#1:102\n61#1:103,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Ly6/s0;Ly6/s0;)V
    .registers 4

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ly6/e0;-><init>(Ly6/s0;Ly6/s0;)V

    sget-object p0, Lz6/d;->a:Lz6/d;

    check-cast p0, Lz6/m;

    invoke-virtual {p0, p1, p2}, Lz6/m;->d(Ly6/l0;Ly6/l0;)Z

    return-void
.end method

.method public constructor <init>(Ly6/s0;Ly6/s0;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ly6/e0;-><init>(Ly6/s0;Ly6/s0;)V

    if-nez p3, :cond_c

    sget-object p0, Lz6/d;->a:Lz6/d;

    check-cast p0, Lz6/m;

    invoke-virtual {p0, p1, p2}, Lz6/m;->d(Ly6/l0;Ly6/l0;)Z

    :cond_c
    return-void
.end method

.method public static final P0(Lj6/c;Ly6/l0;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj6/c;",
            "Ly6/l0;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/q1;

    invoke-virtual {p0, v1}, Lj6/c;->w(Ly6/q1;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    return-object v0
.end method

.method public static final Q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/q;->u(Ljava/lang/CharSequence;CZI)Z

    move-result v1

    if-nez v1, :cond_b

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v2}, Lk7/q;->U(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, v3, v2}, Lk7/q;->T(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic H0(Lz6/f;)Ly6/l0;
    .registers 2

    invoke-virtual {p0, p1}, Lw5/i;->O0(Lz6/f;)Ly6/e0;

    move-result-object p0

    return-object p0
.end method

.method public J0(Z)Ly6/d2;
    .registers 4

    new-instance v0, Lw5/i;

    iget-object v1, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v1, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v1

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lw5/i;-><init>(Ly6/s0;Ly6/s0;)V

    return-object v0
.end method

.method public bridge synthetic K0(Lz6/f;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Lw5/i;->O0(Lz6/f;)Ly6/e0;

    move-result-object p0

    return-object p0
.end method

.method public L0(Ly6/g1;)Ly6/d2;
    .registers 4

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw5/i;

    iget-object v1, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v1, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object v1

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p0, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lw5/i;-><init>(Ly6/s0;Ly6/s0;)V

    return-object v0
.end method

.method public M0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ly6/e0;->b:Ly6/s0;

    return-object p0
.end method

.method public N0(Lj6/c;Lj6/i;)Ljava/lang/String;
    .registers 14

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {p1, v0}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p1, v1}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lj6/i;->g()Z

    move-result p2

    if-eqz p2, :cond_3b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "raw ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    iget-object p2, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p2}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lj6/c;->s(Ljava/lang/String;Ljava/lang/String;Lf5/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    iget-object p2, p0, Ly6/e0;->b:Ly6/s0;

    invoke-static {p1, p2}, Lw5/i;->P0(Lj6/c;Ly6/l0;)Ljava/util/List;

    move-result-object p2

    iget-object v2, p0, Ly6/e0;->c:Ly6/s0;

    invoke-static {p1, v2}, Lw5/i;->P0(Lj6/c;Ly6/l0;)Ljava/util/List;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lw5/i$a;->a:Lw5/i$a;

    const/16 v9, 0x1e

    const-string v3, ", "

    move-object v2, p2

    invoke-static/range {v2 .. v9}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v10}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7a

    goto :goto_ad

    :cond_7a
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/j;

    iget-object v6, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Lh4/j;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v7, "out "

    invoke-static {v3, v7}, Lk7/q;->J(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a9

    const-string v6, "*"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    goto :goto_a9

    :cond_a7
    move v3, v4

    goto :goto_aa

    :cond_a9
    :goto_a9
    move v3, v5

    :goto_aa
    if-nez v3, :cond_7e

    goto :goto_ae

    :cond_ad
    :goto_ad
    move v4, v5

    :goto_ae
    if-eqz v4, :cond_b4

    invoke-static {v1, v2}, Lw5/i;->Q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b4
    invoke-static {v0, v2}, Lw5/i;->Q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    return-object p2

    :cond_bf
    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object p0

    invoke-virtual {p1, p2, v1, p0}, Lj6/c;->s(Ljava/lang/String;Ljava/lang/String;Lf5/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public O0(Lz6/f;)Ly6/e0;
    .registers 5

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw5/i;

    iget-object v1, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {p1, v1}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ly6/s0;

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p1, p0}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly6/s0;

    const/4 p1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lw5/i;-><init>(Ly6/s0;Ly6/s0;Z)V

    return-object v0
.end method

.method public l()Lr6/i;
    .registers 4

    invoke-virtual {p0}, Ly6/e0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v1, v0, Li5/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    check-cast v0, Li5/e;

    goto :goto_11

    :cond_10
    move-object v0, v2

    :goto_11
    if-eqz v0, :cond_23

    new-instance p0, Lw5/h;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lw5/h;-><init>(Ly6/n1;I)V

    invoke-interface {v0, p0}, Li5/e;->Q(Ly6/t1;)Lr6/i;

    move-result-object p0

    const-string v0, "classDescriptor.getMemberScope(RawSubstitution())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incorrect classifier: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ly6/e0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
