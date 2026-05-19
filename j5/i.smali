.class public final Lj5/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/h;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lj5/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/i;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public f(Lh6/c;)Lj5/c;
    .registers 2

    invoke-static {p0, p1}, Lj5/h$b;->a(Lj5/h;Lh6/c;)Lj5/c;

    move-result-object p0

    return-object p0
.end method

.method public g(Lh6/c;)Z
    .registers 2

    invoke-static {p0, p1}, Lj5/h$b;->b(Lj5/h;Lh6/c;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    iget-object p0, p0, Lj5/i;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj5/i;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lj5/i;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
