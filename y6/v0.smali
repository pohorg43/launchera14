.class public final Ly6/v0;
.super Ly6/w;
.source ""

# interfaces
.implements Ly6/b2;


# instance fields
.field public final b:Ly6/s0;

.field public final c:Ly6/l0;


# direct methods
.method public constructor <init>(Ly6/s0;Ly6/l0;)V
    .registers 4

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/w;-><init>()V

    iput-object p1, p0, Ly6/v0;->b:Ly6/s0;

    iput-object p2, p0, Ly6/v0;->c:Ly6/l0;

    return-void
.end method


# virtual methods
.method public bridge synthetic H0(Lz6/f;)Ly6/l0;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/v0;->R0(Lz6/f;)Ly6/v0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic K0(Lz6/f;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/v0;->R0(Lz6/f;)Ly6/v0;

    move-result-object p0

    return-object p0
.end method

.method public M0(Z)Ly6/s0;
    .registers 3

    iget-object v0, p0, Ly6/v0;->b:Ly6/s0;

    invoke-virtual {v0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v0

    iget-object p0, p0, Ly6/v0;->c:Ly6/l0;

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    invoke-virtual {p0, p1}, Ly6/d2;->J0(Z)Ly6/d2;

    move-result-object p0

    invoke-static {v0, p0}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly6/s0;

    return-object p0
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/v0;->b:Ly6/s0;

    invoke-virtual {v0, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object p1

    iget-object p0, p0, Ly6/v0;->c:Ly6/l0;

    invoke-static {p1, p0}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly6/s0;

    return-object p0
.end method

.method public O0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ly6/v0;->b:Ly6/s0;

    return-object p0
.end method

.method public bridge synthetic P0(Lz6/f;)Ly6/s0;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/v0;->R0(Lz6/f;)Ly6/v0;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Ly6/s0;)Ly6/w;
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/v0;

    iget-object p0, p0, Ly6/v0;->c:Ly6/l0;

    invoke-direct {v0, p1, p0}, Ly6/v0;-><init>(Ly6/s0;Ly6/l0;)V

    return-object v0
.end method

.method public R0(Lz6/f;)Ly6/v0;
    .registers 5

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/v0;

    iget-object v1, p0, Ly6/v0;->b:Ly6/s0;

    invoke-virtual {p1, v1}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ly6/s0;

    iget-object p0, p0, Ly6/v0;->c:Ly6/l0;

    invoke-virtual {p1, p0}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ly6/v0;-><init>(Ly6/s0;Ly6/l0;)V

    return-object v0
.end method

.method public d0()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ly6/v0;->c:Ly6/l0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "[@EnhancedForWarnings("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ly6/v0;->c:Ly6/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ly6/v0;->b:Ly6/s0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z0()Ly6/d2;
    .registers 1

    iget-object p0, p0, Ly6/v0;->b:Ly6/s0;

    return-object p0
.end method
