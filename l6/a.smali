.class public final Ll6/a;
.super Ly6/s0;
.source ""

# interfaces
.implements Lc7/d;


# instance fields
.field public final b:Ly6/q1;

.field public final c:Ll6/b;

.field public final d:Z

.field public final e:Ly6/g1;


# direct methods
.method public constructor <init>(Ly6/q1;Ll6/b;ZLy6/g1;)V
    .registers 6

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/s0;-><init>()V

    iput-object p1, p0, Ll6/a;->b:Ly6/q1;

    iput-object p2, p0, Ll6/a;->c:Ll6/b;

    iput-boolean p3, p0, Ll6/a;->d:Z

    iput-object p4, p0, Ll6/a;->e:Ly6/g1;

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

    iget-object p0, p0, Ll6/a;->e:Ly6/g1;

    return-object p0
.end method

.method public F0()Ly6/j1;
    .registers 1

    iget-object p0, p0, Ll6/a;->c:Ll6/b;

    return-object p0
.end method

.method public G0()Z
    .registers 1

    iget-boolean p0, p0, Ll6/a;->d:Z

    return p0
.end method

.method public bridge synthetic H0(Lz6/f;)Ly6/l0;
    .registers 2

    invoke-virtual {p0, p1}, Ll6/a;->O0(Lz6/f;)Ll6/a;

    move-result-object p0

    return-object p0
.end method

.method public J0(Z)Ly6/d2;
    .registers 5

    iget-boolean v0, p0, Ll6/a;->d:Z

    if-ne p1, v0, :cond_5

    goto :goto_11

    :cond_5
    new-instance v0, Ll6/a;

    iget-object v1, p0, Ll6/a;->b:Ly6/q1;

    iget-object v2, p0, Ll6/a;->c:Ll6/b;

    iget-object p0, p0, Ll6/a;->e:Ly6/g1;

    invoke-direct {v0, v1, v2, p1, p0}, Ll6/a;-><init>(Ly6/q1;Ll6/b;ZLy6/g1;)V

    move-object p0, v0

    :goto_11
    return-object p0
.end method

.method public bridge synthetic K0(Lz6/f;)Ly6/d2;
    .registers 2

    invoke-virtual {p0, p1}, Ll6/a;->O0(Lz6/f;)Ll6/a;

    move-result-object p0

    return-object p0
.end method

.method public M0(Z)Ly6/s0;
    .registers 5

    iget-boolean v0, p0, Ll6/a;->d:Z

    if-ne p1, v0, :cond_5

    goto :goto_11

    :cond_5
    new-instance v0, Ll6/a;

    iget-object v1, p0, Ll6/a;->b:Ly6/q1;

    iget-object v2, p0, Ll6/a;->c:Ll6/b;

    iget-object p0, p0, Ll6/a;->e:Ly6/g1;

    invoke-direct {v0, v1, v2, p1, p0}, Ll6/a;-><init>(Ly6/q1;Ll6/b;ZLy6/g1;)V

    move-object p0, v0

    :goto_11
    return-object p0
.end method

.method public N0(Ly6/g1;)Ly6/s0;
    .registers 5

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ll6/a;

    iget-object v1, p0, Ll6/a;->b:Ly6/q1;

    iget-object v2, p0, Ll6/a;->c:Ll6/b;

    iget-boolean p0, p0, Ll6/a;->d:Z

    invoke-direct {v0, v1, v2, p0, p1}, Ll6/a;-><init>(Ly6/q1;Ll6/b;ZLy6/g1;)V

    return-object v0
.end method

.method public O0(Lz6/f;)Ll6/a;
    .registers 5

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ll6/a;

    iget-object v1, p0, Ll6/a;->b:Ly6/q1;

    invoke-interface {v1, p1}, Ly6/q1;->a(Lz6/f;)Ly6/q1;

    move-result-object p1

    const-string v1, "typeProjection.refine(kotlinTypeRefiner)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ll6/a;->c:Ll6/b;

    iget-boolean v2, p0, Ll6/a;->d:Z

    iget-object p0, p0, Ll6/a;->e:Ly6/g1;

    invoke-direct {v0, p1, v1, v2, p0}, Ll6/a;-><init>(Ly6/q1;Ll6/b;ZLy6/g1;)V

    return-object v0
.end method

.method public l()Lr6/i;
    .registers 3

    sget-object p0, La7/f;->b:La7/f;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, La7/j;->a(La7/f;Z[Ljava/lang/String;)La7/e;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Captured("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll6/a;->b:Ly6/q1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ll6/a;->d:Z

    if-eqz p0, :cond_17

    const-string p0, "?"

    goto :goto_19

    :cond_17
    const-string p0, ""

    :goto_19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
