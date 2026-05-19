.class public final Lz5/i;
.super Ly6/w;
.source ""

# interfaces
.implements Ly6/s;


# instance fields
.field public final b:Ly6/s0;


# direct methods
.method public constructor <init>(Ly6/s0;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/w;-><init>()V

    iput-object p1, p0, Lz5/i;->b:Ly6/s0;

    return-void
.end method


# virtual methods
.method public G0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public L0(Ly6/g1;)Ly6/d2;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz5/i;

    iget-object p0, p0, Lz5/i;->b:Ly6/s0;

    invoke-virtual {p0, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object p0

    invoke-direct {v0, p0}, Lz5/i;-><init>(Ly6/s0;)V

    return-object v0
.end method

.method public M0(Z)Ly6/s0;
    .registers 2

    if-eqz p1, :cond_9

    iget-object p0, p0, Lz5/i;->b:Ly6/s0;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    :cond_9
    return-object p0
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz5/i;

    iget-object p0, p0, Lz5/i;->b:Ly6/s0;

    invoke-virtual {p0, p1}, Ly6/s0;->N0(Ly6/g1;)Ly6/s0;

    move-result-object p0

    invoke-direct {v0, p0}, Lz5/i;-><init>(Ly6/s0;)V

    return-object v0
.end method

.method public O0()Ly6/s0;
    .registers 1

    iget-object p0, p0, Lz5/i;->b:Ly6/s0;

    return-object p0
.end method

.method public Q0(Ly6/s0;)Ly6/w;
    .registers 2

    const-string p0, "delegate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lz5/i;

    invoke-direct {p0, p1}, Lz5/i;-><init>(Ly6/s0;)V

    return-object p0
.end method

.method public final R0(Ly6/s0;)Ly6/s0;
    .registers 3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly6/a2;->h(Ly6/l0;)Z

    move-result p1

    if-nez p1, :cond_11

    return-object p0

    :cond_11
    new-instance p1, Lz5/i;

    invoke-direct {p1, p0}, Lz5/i;-><init>(Ly6/s0;)V

    return-object p1
.end method

.method public x0()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public z(Ly6/l0;)Ly6/l0;
    .registers 4

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly6/a2;->h(Ly6/l0;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v0

    if-nez v0, :cond_1b

    return-object p1

    :cond_1b
    instance-of v0, p1, Ly6/s0;

    if-eqz v0, :cond_26

    check-cast p1, Ly6/s0;

    invoke-virtual {p0, p1}, Lz5/i;->R0(Ly6/s0;)Ly6/s0;

    move-result-object p0

    goto :goto_45

    :cond_26
    instance-of v0, p1, Ly6/e0;

    if-eqz v0, :cond_46

    move-object v0, p1

    check-cast v0, Ly6/e0;

    iget-object v1, v0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {p0, v1}, Lz5/i;->R0(Ly6/s0;)Ly6/s0;

    move-result-object v1

    iget-object v0, v0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p0, v0}, Lz5/i;->R0(Ly6/s0;)Ly6/s0;

    move-result-object p0

    invoke-static {v1, p0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object p0

    invoke-static {p1}, Ly6/c2;->b(Ly6/l0;)Ly6/l0;

    move-result-object p1

    invoke-static {p0, p1}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object p0

    :goto_45
    return-object p0

    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
