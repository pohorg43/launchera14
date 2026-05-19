.class public final Lz5/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/h;


# instance fields
.field public final a:Lh6/c;


# direct methods
.method public constructor <init>(Lh6/c;)V
    .registers 3

    const-string v0, "fqNameToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/e;->a:Lh6/c;

    return-void
.end method


# virtual methods
.method public f(Lh6/c;)Lj5/c;
    .registers 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz5/e;->a:Lh6/c;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lz5/d;->a:Lz5/d;

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
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

    const/4 p0, 0x0

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

    sget-object p0, Li4/x;->a:Li4/x;

    return-object p0
.end method
