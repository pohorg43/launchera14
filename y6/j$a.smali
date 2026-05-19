.class public final Ly6/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lz6/f;

.field public final b:Lh4/f;

.field public final synthetic c:Ly6/j;


# direct methods
.method public constructor <init>(Ly6/j;Lz6/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/f;",
            ")V"
        }
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly6/j$a;->c:Ly6/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly6/j$a;->a:Lz6/f;

    sget-object p2, Lkotlin/a;->b:Lkotlin/a;

    new-instance v0, Ly6/j$a$a;

    invoke-direct {v0, p0, p1}, Ly6/j$a$a;-><init>(Ly6/j$a;Ly6/j;)V

    invoke-static {p2, v0}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Ly6/j$a;->b:Lh4/f;

    return-void
.end method


# virtual methods
.method public a(Lz6/f;)Ly6/j1;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/j$a;->c:Ly6/j;

    invoke-virtual {p0, p1}, Ly6/j;->a(Lz6/f;)Ly6/j1;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/util/Collection;
    .registers 1

    iget-object p0, p0, Ly6/j$a;->b:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public e()Li5/h;
    .registers 1

    iget-object p0, p0, Ly6/j$a;->c:Ly6/j;

    invoke-virtual {p0}, Ly6/r;->e()Li5/h;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Ly6/j$a;->c:Ly6/j;

    invoke-virtual {p0, p1}, Ly6/r;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()Z
    .registers 1

    iget-object p0, p0, Ly6/j$a;->c:Ly6/j;

    invoke-interface {p0}, Ly6/j1;->f()Z

    move-result p0

    return p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ly6/j$a;->c:Ly6/j;

    invoke-interface {p0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object p0

    const-string v0, "this@AbstractTypeConstructor.parameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Ly6/j$a;->c:Ly6/j;

    invoke-virtual {p0}, Ly6/r;->hashCode()I

    move-result p0

    return p0
.end method

.method public k()Lf5/g;
    .registers 2

    iget-object p0, p0, Ly6/j$a;->c:Ly6/j;

    invoke-interface {p0}, Ly6/j1;->k()Lf5/g;

    move-result-object p0

    const-string v0, "this@AbstractTypeConstructor.builtIns"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ly6/j$a;->c:Ly6/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
