.class public final Lm7/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/p0;
    .registers 7

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    sget-object p1, Ll4/h;->a:Ll4/h;

    :cond_6
    const/4 p5, 0x2

    and-int/2addr p4, p5

    const/4 v0, 0x1

    if-eqz p4, :cond_c

    move p2, v0

    :cond_c
    invoke-static {p0, p1}, Lm7/d0;->c(Lm7/j0;Ll4/f;)Ll4/f;

    move-result-object p0

    invoke-static {p2}, Lk/b;->i(I)V

    if-ne p2, p5, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_20

    new-instance p1, Lm7/z1;

    invoke-direct {p1, p0, p3}, Lm7/z1;-><init>(Ll4/f;Lkotlin/jvm/functions/Function2;)V

    goto :goto_25

    :cond_20
    new-instance p1, Lm7/q0;

    invoke-direct {p1, p0, v0}, Lm7/q0;-><init>(Ll4/f;Z)V

    :goto_25
    invoke-virtual {p1, p2, p1, p3}, Lm7/a;->n0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method public static b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;
    .registers 7

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    sget-object p1, Ll4/h;->a:Ll4/h;

    :cond_6
    const/4 p5, 0x2

    and-int/2addr p4, p5

    const/4 v0, 0x1

    if-eqz p4, :cond_c

    move p2, v0

    :cond_c
    invoke-static {p0, p1}, Lm7/d0;->c(Lm7/j0;Ll4/f;)Ll4/f;

    move-result-object p0

    invoke-static {p2}, Lk/b;->i(I)V

    if-ne p2, p5, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_20

    new-instance p1, Lm7/a2;

    invoke-direct {p1, p0, p3}, Lm7/a2;-><init>(Ll4/f;Lkotlin/jvm/functions/Function2;)V

    goto :goto_25

    :cond_20
    new-instance p1, Lm7/j2;

    invoke-direct {p1, p0, v0}, Lm7/j2;-><init>(Ll4/f;Z)V

    :goto_25
    invoke-virtual {p1, p2, p1, p3}, Lm7/a;->n0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method public static final c(Ll4/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll4/f;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lm7/j0;",
            "-",
            "Ll4/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {p0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v2

    check-cast v2, Ll4/e;

    const/4 v3, 0x1

    if-nez v2, :cond_2e

    sget-object v2, Lm7/m2;->a:Lm7/m2;

    invoke-static {}, Lm7/m2;->a()Lm7/e1;

    move-result-object v2

    invoke-interface {p0, v2}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    sget-object v4, Ll4/h;->a:Ll4/h;

    invoke-static {v4, p0, v3}, Lm7/d0;->a(Ll4/f;Ll4/f;Z)Ll4/f;

    move-result-object p0

    sget-object v4, Lm7/y0;->b:Lm7/f0;

    if-eq p0, v4, :cond_52

    invoke-interface {p0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v1

    if-nez v1, :cond_52

    invoke-interface {p0, v4}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    goto :goto_52

    :cond_2e
    instance-of v4, v2, Lm7/e1;

    if-eqz v4, :cond_34

    check-cast v2, Lm7/e1;

    :cond_34
    sget-object v2, Lm7/m2;->a:Lm7/m2;

    sget-object v2, Lm7/m2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm7/e1;

    sget-object v4, Ll4/h;->a:Ll4/h;

    invoke-static {v4, p0, v3}, Lm7/d0;->a(Ll4/f;Ll4/f;Z)Ll4/f;

    move-result-object p0

    sget-object v4, Lm7/y0;->b:Lm7/f0;

    if-eq p0, v4, :cond_52

    invoke-interface {p0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v1

    if-nez v1, :cond_52

    invoke-interface {p0, v4}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    :cond_52
    :goto_52
    new-instance v1, Lm7/f;

    invoke-direct {v1, p0, v0, v2}, Lm7/f;-><init>(Ll4/f;Ljava/lang/Thread;Lm7/e1;)V

    invoke-virtual {v1, v3, v1, p1}, Lm7/a;->n0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :try_start_5a
    iget-object p0, v1, Lm7/f;->e:Lm7/e1;

    const/4 p1, 0x0

    if-eqz p0, :cond_64

    sget v0, Lm7/e1;->d:I

    invoke-virtual {p0, p1}, Lm7/e1;->v(Z)V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_b6

    :cond_64
    :goto_64
    :try_start_64
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    if-nez p0, :cond_a2

    iget-object p0, v1, Lm7/f;->e:Lm7/e1;

    if-eqz p0, :cond_73

    invoke-virtual {p0}, Lm7/e1;->z()J

    move-result-wide v2

    goto :goto_78

    :cond_73
    const-wide v2, 0x7fffffffffffffffL

    :goto_78
    invoke-virtual {v1}, Lm7/x1;->p()Z

    move-result p0

    if-nez p0, :cond_82

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_81
    .catchall {:try_start_64 .. :try_end_81} :catchall_ab

    goto :goto_64

    :cond_82
    :try_start_82
    iget-object p0, v1, Lm7/f;->e:Lm7/e1;

    if-eqz p0, :cond_8b

    sget v0, Lm7/e1;->d:I

    invoke-virtual {p0, p1}, Lm7/e1;->q(Z)V
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_b6

    :cond_8b
    invoke-virtual {v1}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm7/y1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lm7/x;

    if-eqz p1, :cond_9b

    move-object p1, p0

    check-cast p1, Lm7/x;

    goto :goto_9c

    :cond_9b
    const/4 p1, 0x0

    :goto_9c
    if-nez p1, :cond_9f

    return-object p0

    :cond_9f
    iget-object p0, p1, Lm7/x;->a:Ljava/lang/Throwable;

    throw p0

    :cond_a2
    :try_start_a2
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v1, p0}, Lm7/x1;->F(Ljava/lang/Object;)Z

    throw p0
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception p0

    :try_start_ac
    iget-object v0, v1, Lm7/f;->e:Lm7/e1;

    if-eqz v0, :cond_b5

    sget v1, Lm7/e1;->d:I

    invoke-virtual {v0, p1}, Lm7/e1;->q(Z)V

    :cond_b5
    throw p0
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p0

    throw p0
.end method

.method public static synthetic d(Ll4/f;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_7

    sget-object p0, Ll4/h;->a:Ll4/h;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0, p1}, Lm7/h;->c(Ll4/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll4/f;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lm7/j0;",
            "-",
            "Ll4/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p2}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    invoke-static {p0}, Lm7/d0;->b(Ll4/f;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    invoke-interface {v0, p0}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    goto :goto_14

    :cond_10
    invoke-static {v0, p0, v2}, Lm7/d0;->a(Ll4/f;Ll4/f;Z)Ll4/f;

    move-result-object p0

    :goto_14
    invoke-static {p0}, Li5/j;->e(Ll4/f;)V

    if-ne p0, v0, :cond_23

    new-instance v0, Lr7/b0;

    invoke-direct {v0, p0, p2}, Lr7/b0;-><init>(Ll4/f;Ll4/d;)V

    invoke-static {v0, v0, p1}, Ls7/b;->a(Lr7/b0;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_8b

    :cond_23
    sget v1, Ll4/e;->J:I

    sget-object v1, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {p0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v3

    invoke-interface {v0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    new-instance v0, Lm7/t2;

    invoke-direct {v0, p0, p2}, Lm7/t2;-><init>(Ll4/f;Ll4/d;)V

    iget-object p0, v0, Lm7/a;->c:Ll4/f;

    invoke-static {p0, v1}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_41
    invoke-static {v0, v0, p1}, Ls7/b;->a(Lr7/b0;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4a

    invoke-static {p0, v1}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_8b

    :catchall_4a
    move-exception p1

    invoke-static {p0, v1}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    throw p1

    :cond_4f
    new-instance v0, Lm7/u0;

    invoke-direct {v0, p0, p2}, Lm7/u0;-><init>(Ll4/f;Ll4/d;)V

    const/4 p0, 0x4

    invoke-static {p1, v0, v0, v1, p0}, Ls7/a;->b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ll4/d;Lkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lm7/u0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_5a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_70

    const/4 p0, 0x2

    if-ne p1, p0, :cond_64

    goto :goto_7a

    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    sget-object p1, Lm7/u0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_5a

    move v2, v1

    :goto_7a
    if-eqz v2, :cond_7f

    sget-object p0, Lm4/a;->a:Lm4/a;

    goto :goto_8b

    :cond_7f
    invoke-virtual {v0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm7/y1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lm7/x;

    if-nez p1, :cond_95

    :goto_8b
    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_94

    const-string p1, "frame"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_94
    return-object p0

    :cond_95
    check-cast p0, Lm7/x;

    iget-object p0, p0, Lm7/x;->a:Ljava/lang/Throwable;

    throw p0
.end method
