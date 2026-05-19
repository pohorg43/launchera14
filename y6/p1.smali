.class public final Ly6/p1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly6/n1$a;",
        "Ly6/l0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeParameterUpperBoundEraser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeParameterUpperBoundEraser.kt\norg/jetbrains/kotlin/types/TypeParameterUpperBoundEraser$getErasedUpperBound$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,158:1\n1#2:159\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/n1;


# direct methods
.method public constructor <init>(Ly6/n1;)V
    .registers 2

    iput-object p1, p0, Ly6/p1;->a:Ly6/n1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    check-cast p1, Ly6/n1$a;

    iget-object p0, p0, Ly6/p1;->a:Ly6/n1;

    iget-object v0, p1, Ly6/n1$a;->a:Li5/a1;

    iget-object p1, p1, Ly6/n1$a;->b:Ly6/c0;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ly6/c0;->c()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Li5/a1;->a()Li5/a1;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0, p1}, Ly6/n1;->a(Ly6/c0;)Ly6/l0;

    move-result-object p0

    goto/16 :goto_d4

    :cond_21
    invoke-interface {v0}, Li5/h;->m()Ly6/s0;

    move-result-object v2

    const-string v3, "typeParameter.defaultType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v2, v2, v3, v1}, Ld7/c;->e(Ly6/l0;Ly6/l0;Ljava/util/Set;Ljava/util/Set;)V

    const/16 v2, 0xa

    invoke-static {v3, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Li4/j0;->b(I)I

    move-result v2

    const/16 v4, 0x10

    if-ge v2, v4, :cond_46

    move v2, v4

    :cond_46
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/a1;

    if-eqz v1, :cond_6e

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    goto :goto_6e

    :cond_64
    invoke-static {v3, p1}, Ly6/a2;->n(Li5/a1;Ly6/c0;)Ly6/q1;

    move-result-object v5

    const-string v6, "makeStarProjection(it, typeAttr)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7c

    :cond_6e
    :goto_6e
    iget-object v5, p0, Ly6/n1;->a:Ly6/b0;

    invoke-virtual {p1, v0}, Ly6/c0;->d(Li5/a1;)Ly6/c0;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Ly6/n1;->b(Li5/a1;Ly6/c0;)Ly6/l0;

    move-result-object v6

    invoke-virtual {v5, v3, p1, p0, v6}, Ly6/b0;->a(Li5/a1;Ly6/c0;Ly6/n1;Ly6/l0;)Ly6/q1;

    move-result-object v5

    :goto_7c
    invoke-interface {v3}, Li5/a1;->h()Ly6/j1;

    move-result-object v3

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_84
    const-string v1, "map"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ly6/k1;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Ly6/k1;-><init>(Ljava/util/Map;Z)V

    invoke-static {v1}, Ly6/x1;->e(Ly6/t1;)Ly6/x1;

    move-result-object v1

    const-string v3, "create(TypeConstructorSu…ap(erasedTypeParameters))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v3, "typeParameter.upperBounds"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, p1}, Ly6/n1;->c(Ly6/x1;Ljava/util/List;Ly6/c0;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lj4/i;

    invoke-virtual {v0}, Lj4/i;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_d0

    iget-object p0, p0, Ly6/n1;->b:Ly6/m1;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lj4/i;->a()I

    move-result p0

    if-ne p0, v3, :cond_bb

    move v2, v3

    :cond_bb
    if-eqz v2, :cond_c4

    invoke-static {v0}, Li4/v;->W(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/l0;

    goto :goto_d4

    :cond_c4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Should only be one computed upper bound if no need to intersect all bounds"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d0
    invoke-virtual {p0, p1}, Ly6/n1;->a(Ly6/c0;)Ly6/l0;

    move-result-object p0

    :goto_d4
    return-object p0
.end method
