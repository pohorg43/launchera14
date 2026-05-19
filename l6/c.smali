.class public final Ll6/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll6/b;


# instance fields
.field public final a:Ly6/q1;

.field public b:Lz6/j;


# direct methods
.method public constructor <init>(Ly6/q1;)V
    .registers 3

    const-string v0, "projection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/c;->a:Ly6/q1;

    invoke-interface {p1}, Ly6/q1;->c()Ly6/e2;

    return-void
.end method


# virtual methods
.method public a(Lz6/f;)Ly6/j1;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ll6/c;

    iget-object p0, p0, Ll6/c;->a:Ly6/q1;

    invoke-interface {p0, p1}, Ly6/q1;->a(Lz6/f;)Ly6/q1;

    move-result-object p0

    const-string p1, "projection.refine(kotlinTypeRefiner)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Ll6/c;-><init>(Ly6/q1;)V

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll6/c;->a:Ly6/q1;

    invoke-interface {v0}, Ly6/q1;->c()Ly6/e2;

    move-result-object v0

    sget-object v1, Ly6/e2;->e:Ly6/e2;

    if-ne v0, v1, :cond_11

    iget-object p0, p0, Ll6/c;->a:Ly6/q1;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    goto :goto_19

    :cond_11
    invoke-virtual {p0}, Ll6/c;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->q()Ly6/s0;

    move-result-object p0

    :goto_19
    const-string v0, "if (projection.projectio… builtIns.nullableAnyType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d()Ly6/q1;
    .registers 1

    iget-object p0, p0, Ll6/c;->a:Ly6/q1;

    return-object p0
.end method

.method public bridge synthetic e()Li5/h;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public k()Lf5/g;
    .registers 2

    iget-object p0, p0, Ll6/c;->a:Ly6/q1;

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->k()Lf5/g;

    move-result-object p0

    const-string v0, "projection.type.constructor.builtIns"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CapturedTypeConstructor("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ll6/c;->a:Ly6/q1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
