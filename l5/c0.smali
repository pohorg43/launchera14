.class public abstract Ll5/c0;
.super Ll5/n;
.source ""

# interfaces
.implements Li5/h0;


# instance fields
.field public final e:Lh6/c;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li5/e0;Lh6/c;)V
    .registers 6

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lj5/h;->I:I

    sget-object v0, Lj5/h$a;->b:Lj5/h;

    invoke-virtual {p2}, Lh6/c;->h()Lh6/f;

    move-result-object v1

    sget-object v2, Li5/v0;->a:Li5/v0;

    invoke-direct {p0, p1, v0, v1, v2}, Ll5/n;-><init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;)V

    iput-object p2, p0, Ll5/c0;->e:Lh6/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll5/c0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/n<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Li5/n;->d(Li5/h0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()Li5/e0;
    .registers 2

    invoke-super {p0}, Ll5/n;->b()Li5/l;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/e0;

    return-object p0
.end method

.method public bridge synthetic b()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/c0;->b()Li5/e0;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lh6/c;
    .registers 1

    iget-object p0, p0, Ll5/c0;->e:Lh6/c;

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 2

    sget-object p0, Li5/v0;->a:Li5/v0;

    const-string v0, "NO_SOURCE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ll5/c0;->f:Ljava/lang/String;

    return-object p0
.end method
