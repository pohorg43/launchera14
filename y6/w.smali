.class public abstract Ly6/w;
.super Ly6/s0;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly6/s0;-><init>()V

    return-void
.end method


# virtual methods
.method public D0()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ly6/w;->O0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public E0()Ly6/g1;
    .registers 1

    invoke-virtual {p0}, Ly6/w;->O0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p0

    return-object p0
.end method

.method public F0()Ly6/j1;
    .registers 1

    invoke-virtual {p0}, Ly6/w;->O0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    return-object p0
.end method

.method public G0()Z
    .registers 1

    invoke-virtual {p0}, Ly6/w;->O0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic H0(Lz6/f;)Ly6/l0;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/w;->P0(Lz6/f;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic K0(Lz6/f;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ly6/w;->P0(Lz6/f;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public abstract O0()Ly6/s0;
.end method

.method public P0(Lz6/f;)Ly6/s0;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/w;->O0()Ly6/s0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly6/s0;

    invoke-virtual {p0, p1}, Ly6/w;->Q0(Ly6/s0;)Ly6/w;

    move-result-object p0

    return-object p0
.end method

.method public abstract Q0(Ly6/s0;)Ly6/w;
.end method

.method public l()Lr6/i;
    .registers 1

    invoke-virtual {p0}, Ly6/w;->O0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->l()Lr6/i;

    move-result-object p0

    return-object p0
.end method
