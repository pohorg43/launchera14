.class public Lv1/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lo7/s;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/s<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_a

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_a
    if-nez v0, :cond_16

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Channel was consumed, consumer had failed"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_16
    invoke-interface {p0, v0}, Lo7/s;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final b(Lj5/h;Lj5/h;)Lj5/h;
    .registers 5

    const-string v0, "first"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lj5/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object p0, p1

    goto :goto_29

    :cond_13
    invoke-interface {p1}, Lj5/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_29

    :cond_1a
    new-instance v0, Lj5/k;

    const/4 v1, 0x2

    new-array v1, v1, [Lj5/h;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lj5/k;-><init>([Lj5/h;)V

    move-object p0, v0

    :goto_29
    return-object p0
.end method
