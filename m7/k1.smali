.class public final Lm7/k1;
.super Lm7/j1;
.source ""

# interfaces
.implements Lm7/r0;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Lm7/j1;-><init>()V

    iput-object p1, p0, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    sget-object p0, Lr7/c;->a:Ljava/lang/reflect/Method;

    const/4 p0, 0x0

    :try_start_8
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-nez p1, :cond_13

    goto :goto_22

    :cond_13
    sget-object v0, Lr7/c;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_18

    goto :goto_22

    :cond_18
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, p0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_22

    :catchall_22
    :goto_22
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object p0, p0, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_f
    return-void
.end method

.method public dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 5

    :try_start_0
    iget-object p0, p0, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_20

    :catch_6
    move-exception p0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "The task was rejected"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p1, v0}, Li5/j;->b(Ll4/f;Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Lm7/y0;->d:Lm7/f0;

    check-cast p0, Lt7/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt7/b;->b:Lm7/f0;

    invoke-virtual {p0, p1, p2}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    :goto_20
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lm7/k1;

    if-eqz v0, :cond_e

    check-cast p1, Lm7/k1;

    iget-object p1, p1, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;
    .registers 14

    iget-object v0, p0, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_c

    :cond_b
    move-object v4, v2

    :goto_c
    if-eqz v4, :cond_16

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lm7/k1;->q(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ll4/f;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :cond_16
    if-eqz v2, :cond_1e

    new-instance p0, Lm7/z0;

    invoke-direct {p0, v2}, Lm7/z0;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_24

    :cond_1e
    sget-object p0, Lm7/n0;->h:Lm7/n0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lm7/n0;->l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;

    move-result-object p0

    :goto_24
    return-object p0
.end method

.method public m(JLm7/l;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lm7/l<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_c

    :cond_b
    move-object v4, v2

    :goto_c
    if-eqz v4, :cond_1d

    new-instance v5, Lm7/i2;

    invoke-direct {v5, p0, p3}, Lm7/i2;-><init>(Lm7/f0;Lm7/l;)V

    invoke-interface {p3}, Ll4/d;->getContext()Ll4/f;

    move-result-object v6

    move-object v3, p0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lm7/k1;->q(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ll4/f;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :cond_1d
    if-eqz v2, :cond_28

    new-instance p0, Lm7/i;

    invoke-direct {p0, v2}, Lm7/i;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p3, p0}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_28
    sget-object p0, Lm7/n0;->h:Lm7/n0;

    invoke-virtual {p0, p1, p2, p3}, Lm7/f1;->m(JLm7/l;)V

    return-void
.end method

.method public final q(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ll4/f;J)Ljava/util/concurrent/ScheduledFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            "Ll4/f;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p4, p5, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_6
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_16

    :catch_7
    move-exception p0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "The task was rejected"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p3, p1}, Li5/j;->b(Ll4/f;Ljava/util/concurrent/CancellationException;)V

    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lm7/k1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
