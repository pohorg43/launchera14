.class public abstract Ly6/e0;
.super Ly6/d2;
.source ""

# interfaces
.implements Lc7/g;


# instance fields
.field public final b:Ly6/s0;

.field public final c:Ly6/s0;


# direct methods
.method public constructor <init>(Ly6/s0;Ly6/s0;)V
    .registers 4

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly6/d2;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ly6/e0;->b:Ly6/s0;

    iput-object p2, p0, Ly6/e0;->c:Ly6/s0;

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

    invoke-virtual {p0}, Ly6/e0;->M0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public E0()Ly6/g1;
    .registers 1

    invoke-virtual {p0}, Ly6/e0;->M0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p0

    return-object p0
.end method

.method public F0()Ly6/j1;
    .registers 1

    invoke-virtual {p0}, Ly6/e0;->M0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    return-object p0
.end method

.method public G0()Z
    .registers 1

    invoke-virtual {p0}, Ly6/e0;->M0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result p0

    return p0
.end method

.method public abstract M0()Ly6/s0;
.end method

.method public abstract N0(Lj6/c;Lj6/i;)Ljava/lang/String;
.end method

.method public l()Lr6/i;
    .registers 1

    invoke-virtual {p0}, Ly6/e0;->M0()Ly6/s0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->l()Lr6/i;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lj6/c;->c:Lj6/c;

    invoke-virtual {v0, p0}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
