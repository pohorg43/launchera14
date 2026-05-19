.class public final Lm6/n$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm6/n;
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
        "Ly6/s0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm6/n;


# direct methods
.method public constructor <init>(Lm6/n;)V
    .registers 2

    iput-object p1, p0, Lm6/n$a;->a:Lm6/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x1

    new-array v1, v0, [Ly6/s0;

    iget-object v2, p0, Lm6/n$a;->a:Lm6/n;

    invoke-virtual {v2}, Lm6/n;->k()Lf5/g;

    move-result-object v2

    const-string v3, "Comparable"

    invoke-virtual {v2, v3}, Lf5/g;->k(Ljava/lang/String;)Li5/e;

    move-result-object v2

    invoke-interface {v2}, Li5/e;->m()Ly6/s0;

    move-result-object v2

    const-string v3, "builtIns.comparable.defaultType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ly6/s1;

    sget-object v4, Ly6/e2;->d:Ly6/e2;

    iget-object v5, p0, Lm6/n$a;->a:Lm6/n;

    iget-object v5, v5, Lm6/n;->d:Ly6/s0;

    invoke-direct {v3, v4, v5}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Ly6/v1;->d(Ly6/s0;Ljava/util/List;Ly6/g1;I)Ly6/s0;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Li4/o;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lm6/n$a;->a:Lm6/n;

    iget-object v6, v2, Lm6/n;->b:Li5/e0;

    const-string v7, "<this>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    new-array v7, v7, [Ly6/s0;

    invoke-interface {v6}, Li5/e0;->k()Lf5/g;

    move-result-object v8

    invoke-virtual {v8}, Lf5/g;->o()Ly6/s0;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-interface {v6}, Li5/e0;->k()Lf5/g;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lf5/h;->l:Lf5/h;

    invoke-virtual {v8, v9}, Lf5/g;->u(Lf5/h;)Ly6/s0;

    move-result-object v8

    if-eqz v8, :cond_d2

    aput-object v8, v7, v0

    invoke-interface {v6}, Li5/e0;->k()Lf5/g;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lf5/h;->h:Lf5/h;

    invoke-virtual {v8, v9}, Lf5/g;->u(Lf5/h;)Ly6/s0;

    move-result-object v8

    if-eqz v8, :cond_cc

    aput-object v8, v7, v4

    const/4 v4, 0x3

    invoke-interface {v6}, Li5/e0;->k()Lf5/g;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lf5/h;->i:Lf5/h;

    invoke-virtual {v6, v8}, Lf5/g;->u(Lf5/h;)Ly6/s0;

    move-result-object v6

    if-eqz v6, :cond_c6

    aput-object v6, v7, v4

    invoke-static {v7}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_8d

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8d

    goto :goto_a7

    :cond_8d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly6/l0;

    iget-object v7, v2, Lm6/n;->c:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v0

    if-nez v6, :cond_91

    move v0, v3

    :cond_a7
    :goto_a7
    if-nez v0, :cond_c5

    iget-object p0, p0, Lm6/n$a;->a:Lm6/n;

    invoke-virtual {p0}, Lm6/n;->k()Lf5/g;

    move-result-object p0

    const-string v0, "Number"

    invoke-virtual {p0, v0}, Lf5/g;->k(Ljava/lang/String;)Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    if-eqz p0, :cond_bf

    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    :cond_bf
    const/16 p0, 0x37

    invoke-static {p0}, Lf5/g;->a(I)V

    throw v5

    :cond_c5
    :goto_c5
    return-object v1

    :cond_c6
    const/16 p0, 0x39

    invoke-static {p0}, Lf5/g;->a(I)V

    throw v5

    :cond_cc
    const/16 p0, 0x38

    invoke-static {p0}, Lf5/g;->a(I)V

    throw v5

    :cond_d2
    const/16 p0, 0x3b

    invoke-static {p0}, Lf5/g;->a(I)V

    throw v5
.end method
