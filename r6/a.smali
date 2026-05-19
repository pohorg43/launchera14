.class public abstract Lr6/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr6/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    invoke-interface {p0}, Lr6/i;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

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

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    invoke-interface {p0}, Lr6/i;->d()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lr6/l;->e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    invoke-interface {p0}, Lr6/i;->g()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lr6/i;
    .registers 2

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object v0

    instance-of v0, v0, Lr6/a;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.AbstractScopeAdapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lr6/a;

    invoke-virtual {p0}, Lr6/a;->h()Lr6/i;

    move-result-object p0

    goto :goto_1c

    :cond_18
    invoke-virtual {p0}, Lr6/a;->i()Lr6/i;

    move-result-object p0

    :goto_1c
    return-object p0
.end method

.method public abstract i()Lr6/i;
.end method
