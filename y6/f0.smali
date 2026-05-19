.class public final Ly6/f0;
.super Ly6/e0;
.source ""

# interfaces
.implements Ly6/s;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nflexibleTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 flexibleTypes.kt\norg/jetbrains/kotlin/types/FlexibleTypeImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
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

    return-void
.end method


# virtual methods
.method public bridge synthetic H0(Lz6/f;)Ly6/l0;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/f0;->O0(Lz6/f;)Ly6/e0;

    move-result-object p0

    return-object p0
.end method

.method public J0(Z)Ly6/d2;
    .registers 3

    iget-object v0, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v0

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    invoke-static {v0, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic K0(Lz6/f;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/f0;->O0(Lz6/f;)Ly6/e0;

    move-result-object p0

    return-object p0
.end method

.method public L0(Ly6/g1;)Ly6/d2;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v0, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object v0

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p0, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object p0

    invoke-static {v0, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    return-object p0
.end method

.method public M0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ly6/e0;->b:Ly6/s0;

    return-object p0
.end method

.method public N0(Lj6/c;Lj6/i;)Ljava/lang/String;
    .registers 4

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lj6/i;->g()Z

    move-result p2

    if-eqz p2, :cond_37

    const/16 p2, 0x28

    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {p1, v0}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p1, p0}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    iget-object p2, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {p1, p2}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p1, v0}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lj6/c;->s(Ljava/lang/String;Ljava/lang/String;Lf5/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public O0(Lz6/f;)Ly6/e0;
    .registers 5

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/f0;

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

    invoke-direct {v0, v1, p0}, Ly6/f0;-><init>(Ly6/s0;Ly6/s0;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/16 v0, 0x28

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x0()Z
    .registers 2

    iget-object v0, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    instance-of v0, v0, Li5/a1;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {v0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public z(Ly6/l0;)Ly6/l0;
    .registers 3

    const-string p0, "replacement"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    instance-of p1, p0, Ly6/e0;

    if-eqz p1, :cond_f

    move-object p1, p0

    goto :goto_1f

    :cond_f
    instance-of p1, p0, Ly6/s0;

    if-eqz p1, :cond_24

    move-object p1, p0

    check-cast p1, Ly6/s0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object v0

    invoke-static {p1, v0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p1

    :goto_1f
    invoke-static {p1, p0}, Ly6/c2;->c(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    return-object p0

    :cond_24
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
