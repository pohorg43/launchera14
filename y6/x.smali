.class public abstract Ly6/x;
.super Ly6/w;
.source ""


# instance fields
.field public final b:Ly6/s0;


# direct methods
.method public constructor <init>(Ly6/s0;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/w;-><init>()V

    iput-object p1, p0, Ly6/x;->b:Ly6/s0;

    return-void
.end method


# virtual methods
.method public M0(Z)Ly6/s0;
    .registers 3

    invoke-virtual {p0}, Ly6/w;->G0()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    iget-object v0, p0, Ly6/x;->b:Ly6/s0;

    invoke-virtual {v0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p1

    invoke-virtual {p0}, Ly6/w;->E0()Ly6/g1;

    move-result-object p0

    invoke-virtual {p1, p0}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/w;->E0()Ly6/g1;

    move-result-object v0

    if-eq p1, v0, :cond_11

    new-instance v0, Ly6/u0;

    invoke-direct {v0, p0, p1}, Ly6/u0;-><init>(Ly6/s0;Ly6/g1;)V

    move-object p0, v0

    :cond_11
    return-object p0
.end method

.method public O0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ly6/x;->b:Ly6/s0;

    return-object p0
.end method
