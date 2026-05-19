.class public Lk8/q$c;
.super Lokio/AsyncTimeout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lk8/q;


# direct methods
.method public constructor <init>(Lk8/q;)V
    .registers 2

    iput-object p1, p0, Lk8/q$c;->a:Lk8/q;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object p0
.end method

.method public timedOut()V
    .registers 7

    iget-object v0, p0, Lk8/q$c;->a:Lk8/q;

    sget-object v1, Lk8/b;->g:Lk8/b;

    invoke-virtual {v0, v1}, Lk8/q;->e(Lk8/b;)V

    iget-object p0, p0, Lk8/q$c;->a:Lk8/q;

    iget-object p0, p0, Lk8/q;->d:Lk8/g;

    monitor-enter p0

    :try_start_c
    iget-wide v0, p0, Lk8/g;->n:J

    iget-wide v2, p0, Lk8/g;->m:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    monitor-exit p0

    goto :goto_3a

    :cond_16
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lk8/g;->m:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lk8/g;->p:J

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_3b

    :try_start_26
    iget-object v0, p0, Lk8/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lk8/h;

    const-string v2, "OkHttp %s ping"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lk8/g;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lk8/h;-><init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_26 .. :try_end_3a} :catch_3a

    :catch_3a
    :goto_3a
    return-void

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method
