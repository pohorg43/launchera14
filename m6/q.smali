.class public final Lm6/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly6/j1;


# virtual methods
.method public a(Lz6/f;)Ly6/j1;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

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
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "IntegerValueType(0)"

    return-object p0
.end method
