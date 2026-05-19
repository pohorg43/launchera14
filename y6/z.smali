.class public final Ly6/z;
.super Ly6/e0;
.source ""

# interfaces
.implements Lc7/f;


# instance fields
.field public final d:Ly6/g1;


# direct methods
.method public constructor <init>(Lf5/g;Ly6/g1;)V
    .registers 5

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf5/g;->p()Ly6/s0;

    move-result-object v0

    const-string v1, "builtIns.nothingType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf5/g;->q()Ly6/s0;

    move-result-object p1

    const-string v1, "builtIns.nullableAnyType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Ly6/e0;-><init>(Ly6/s0;Ly6/s0;)V

    iput-object p2, p0, Ly6/z;->d:Ly6/g1;

    return-void
.end method


# virtual methods
.method public E0()Ly6/g1;
    .registers 1

    iget-object p0, p0, Ly6/z;->d:Ly6/g1;

    return-object p0
.end method

.method public G0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public H0(Lz6/f;)Ly6/l0;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public J0(Z)Ly6/d2;
    .registers 2

    return-object p0
.end method

.method public K0(Lz6/f;)Ly6/d2;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public L0(Ly6/g1;)Ly6/d2;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly6/z;

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-static {p0}, Ld7/c;->f(Ly6/l0;)Lf5/g;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ly6/z;-><init>(Lf5/g;Ly6/g1;)V

    return-object v0
.end method

.method public M0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    return-object p0
.end method

.method public N0(Lj6/c;Lj6/i;)Ljava/lang/String;
    .registers 3

    const-string p0, "renderer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "options"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dynamic"

    return-object p0
.end method
