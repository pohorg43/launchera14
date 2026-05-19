.class public final Lh3/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh3/a;


# instance fields
.field public final a:Lh3/a;


# direct methods
.method public constructor <init>(Lh3/a;)V
    .registers 3

    const-string v0, "mImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/b;->a:Lh3/a;

    return-void
.end method


# virtual methods
.method public a()Lp7/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp7/d<",
            "Ljava/util/List<",
            "Li3/a;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lh3/b;->a:Lh3/a;

    invoke-interface {p0}, Lh3/a;->a()Lp7/d;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception p0

    const-string v0, "UpkDaoProxy"

    const-string v1, "selectAll error"

    invoke-static {v0, v1, p0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object p0, p0, Lh3/b;->a:Lh3/a;

    invoke-interface {p0, p1}, Lh3/a;->b(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    move-exception p0

    const-string p1, "UpkDaoProxy"

    const-string v0, "deleteByServiceId error"

    invoke-static {p1, v0, p0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    :goto_15
    return p0
.end method
