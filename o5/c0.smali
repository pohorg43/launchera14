.class public final Lo5/c0;
.super Lo5/w;
.source ""

# interfaces
.implements Ly5/u;


# instance fields
.field public final a:Lh6/c;


# direct methods
.method public constructor <init>(Lh6/c;)V
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/w;-><init>()V

    iput-object p1, p0, Lo5/c0;->a:Lh6/c;

    return-void
.end method


# virtual methods
.method public B(Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ly5/g;",
            ">;"
        }
    .end annotation

    const-string p0, "nameFilter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public e()Lh6/c;
    .registers 1

    iget-object p0, p0, Lo5/c0;->a:Lh6/c;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lo5/c0;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lo5/c0;->a:Lh6/c;

    check-cast p1, Lo5/c0;

    iget-object p1, p1, Lo5/c0;->a:Lh6/c;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public f(Lh6/c;)Ly5/a;
    .registers 2

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Collection;
    .registers 1

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lo5/c0;->a:Lh6/c;

    invoke-virtual {p0}, Lh6/c;->hashCode()I

    move-result p0

    return p0
.end method

.method public r()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly5/u;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo5/c0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo5/c0;->a:Lh6/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
