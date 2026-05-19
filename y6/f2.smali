.class public abstract Ly6/f2;
.super Ly6/l0;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly6/l0;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-virtual {p0}, Ly6/f2;->J0()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public E0()Ly6/g1;
    .registers 1

    invoke-virtual {p0}, Ly6/f2;->J0()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->E0()Ly6/g1;

    move-result-object p0

    return-object p0
.end method

.method public F0()Ly6/j1;
    .registers 1

    invoke-virtual {p0}, Ly6/f2;->J0()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    return-object p0
.end method

.method public G0()Z
    .registers 1

    invoke-virtual {p0}, Ly6/f2;->J0()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result p0

    return p0
.end method

.method public final I0()Ly6/d2;
    .registers 2

    invoke-virtual {p0}, Ly6/f2;->J0()Ly6/l0;

    move-result-object p0

    :goto_4
    instance-of v0, p0, Ly6/f2;

    if-eqz v0, :cond_f

    check-cast p0, Ly6/f2;

    invoke-virtual {p0}, Ly6/f2;->J0()Ly6/l0;

    move-result-object p0

    goto :goto_4

    :cond_f
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly6/d2;

    return-object p0
.end method

.method public abstract J0()Ly6/l0;
.end method

.method public K0()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public l()Lr6/i;
    .registers 1

    invoke-virtual {p0}, Ly6/f2;->J0()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->l()Lr6/i;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ly6/f2;->K0()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ly6/f2;->J0()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_f
    const-string p0, "<Not computed yet>"

    :goto_11
    return-object p0
.end method
