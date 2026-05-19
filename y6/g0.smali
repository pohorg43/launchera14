.class public final Ly6/g0;
.super Ly6/e0;
.source ""

# interfaces
.implements Ly6/b2;


# instance fields
.field public final d:Ly6/e0;

.field public final e:Ly6/l0;


# direct methods
.method public constructor <init>(Ly6/e0;Ly6/l0;)V
    .registers 5

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Ly6/e0;->b:Ly6/s0;

    iget-object v1, p1, Ly6/e0;->c:Ly6/s0;

    invoke-direct {p0, v0, v1}, Ly6/e0;-><init>(Ly6/s0;Ly6/s0;)V

    iput-object p1, p0, Ly6/g0;->d:Ly6/e0;

    iput-object p2, p0, Ly6/g0;->e:Ly6/l0;

    return-void
.end method


# virtual methods
.method public bridge synthetic H0(Lz6/f;)Ly6/l0;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/g0;->O0(Lz6/f;)Ly6/g0;

    move-result-object p0

    return-object p0
.end method

.method public J0(Z)Ly6/d2;
    .registers 3

    iget-object v0, p0, Ly6/g0;->d:Ly6/e0;

    invoke-virtual {v0, p1}, Ly6/d2;->J0(Z)Ly6/d2;

    move-result-object v0

    iget-object p0, p0, Ly6/g0;->e:Ly6/l0;

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    invoke-virtual {p0, p1}, Ly6/d2;->J0(Z)Ly6/d2;

    move-result-object p0

    invoke-static {v0, p0}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic K0(Lz6/f;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/g0;->O0(Lz6/f;)Ly6/g0;

    move-result-object p0

    return-object p0
.end method

.method public L0(Ly6/g1;)Ly6/d2;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/g0;->d:Ly6/e0;

    invoke-virtual {v0, p1}, Ly6/d2;->L0(Ly6/g1;)Ly6/d2;

    move-result-object p1

    iget-object p0, p0, Ly6/g0;->e:Ly6/l0;

    invoke-static {p1, p0}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public M0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ly6/g0;->d:Ly6/e0;

    invoke-virtual {p0}, Ly6/e0;->M0()Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public N0(Lj6/c;Lj6/i;)Ljava/lang/String;
    .registers 4

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lj6/i;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Ly6/g0;->e:Ly6/l0;

    invoke-virtual {p1, p0}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    iget-object p0, p0, Ly6/g0;->d:Ly6/e0;

    invoke-virtual {p0, p1, p2}, Ly6/e0;->N0(Lj6/c;Lj6/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public O0(Lz6/f;)Ly6/g0;
    .registers 5

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/g0;

    iget-object v1, p0, Ly6/g0;->d:Ly6/e0;

    invoke-virtual {p1, v1}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ly6/e0;

    iget-object p0, p0, Ly6/g0;->e:Ly6/l0;

    invoke-virtual {p1, p0}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ly6/g0;-><init>(Ly6/e0;Ly6/l0;)V

    return-object v0
.end method

.method public d0()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ly6/g0;->e:Ly6/l0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "[@EnhancedForWarnings("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ly6/g0;->e:Ly6/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ly6/g0;->d:Ly6/e0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z0()Ly6/d2;
    .registers 1

    iget-object p0, p0, Ly6/g0;->d:Ly6/e0;

    return-object p0
.end method
