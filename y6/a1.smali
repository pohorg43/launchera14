.class public final Ly6/a1;
.super Ly6/f;
.source ""


# instance fields
.field public final e:Ly6/j1;

.field public final f:Lr6/i;


# direct methods
.method public constructor <init>(Lz6/n;ZLy6/j1;)V
    .registers 5

    const-string v0, "originalTypeVariable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ly6/f;-><init>(Lz6/n;Z)V

    iput-object p3, p0, Ly6/a1;->e:Ly6/j1;

    invoke-interface {p1}, Ly6/j1;->k()Lf5/g;

    move-result-object p1

    invoke-virtual {p1}, Lf5/g;->f()Ly6/s0;

    move-result-object p1

    invoke-virtual {p1}, Ly6/l0;->l()Lr6/i;

    move-result-object p1

    iput-object p1, p0, Ly6/a1;->f:Lr6/i;

    return-void
.end method


# virtual methods
.method public F0()Ly6/j1;
    .registers 1

    iget-object p0, p0, Ly6/a1;->e:Ly6/j1;

    return-object p0
.end method

.method public O0(Z)Ly6/f;
    .registers 4

    new-instance v0, Ly6/a1;

    iget-object v1, p0, Ly6/f;->b:Lz6/n;

    iget-object p0, p0, Ly6/a1;->e:Ly6/j1;

    invoke-direct {v0, v1, p1, p0}, Ly6/a1;-><init>(Lz6/n;ZLy6/j1;)V

    return-object v0
.end method

.method public l()Lr6/i;
    .registers 1

    iget-object p0, p0, Ly6/a1;->f:Lr6/i;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Stub (BI): "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ly6/f;->b:Lz6/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ly6/f;->c:Z

    if-eqz p0, :cond_12

    const-string p0, "?"

    goto :goto_14

    :cond_12
    const-string p0, ""

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
