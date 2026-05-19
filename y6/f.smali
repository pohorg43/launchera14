.class public abstract Ly6/f;
.super Ly6/s0;
.source ""


# instance fields
.field public final b:Lz6/n;

.field public final c:Z

.field public final d:Lr6/i;


# direct methods
.method public constructor <init>(Lz6/n;Z)V
    .registers 5

    const-string v0, "originalTypeVariable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/s0;-><init>()V

    iput-object p1, p0, Ly6/f;->b:Lz6/n;

    iput-boolean p2, p0, Ly6/f;->c:Z

    sget-object p2, La7/f;->f:La7/f;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, La7/j;->b(La7/f;[Ljava/lang/String;)La7/e;

    move-result-object p1

    iput-object p1, p0, Ly6/f;->d:Lr6/i;

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

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public E0()Ly6/g1;
    .registers 1

    sget-object p0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly6/g1;->c:Ly6/g1;

    return-object p0
.end method

.method public G0()Z
    .registers 1

    iget-boolean p0, p0, Ly6/f;->c:Z

    return p0
.end method

.method public H0(Lz6/f;)Ly6/l0;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public J0(Z)Ly6/d2;
    .registers 3

    iget-boolean v0, p0, Ly6/f;->c:Z

    if-ne p1, v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0, p1}, Ly6/f;->O0(Z)Ly6/f;

    move-result-object p0

    :goto_9
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

    return-object p0
.end method

.method public M0(Z)Ly6/s0;
    .registers 3

    iget-boolean v0, p0, Ly6/f;->c:Z

    if-ne p1, v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0, p1}, Ly6/f;->O0(Z)Ly6/f;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract O0(Z)Ly6/f;
.end method

.method public l()Lr6/i;
    .registers 1

    iget-object p0, p0, Ly6/f;->d:Lr6/i;

    return-object p0
.end method
