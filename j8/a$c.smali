.class public final Lj8/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lokio/ForwardingTimeout;

.field public b:Z

.field public final synthetic c:Lj8/a;


# direct methods
.method public constructor <init>(Lj8/a;)V
    .registers 3

    iput-object p1, p0, Lj8/a$c;->c:Lj8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/ForwardingTimeout;

    iget-object p1, p1, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lj8/a$c;->a:Lokio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lj8/a$c;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lj8/a$c;->b:Z

    iget-object v0, p0, Lj8/a$c;->c:Lj8/a;

    iget-object v0, v0, Lj8/a;->d:Lokio/BufferedSink;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object v0, p0, Lj8/a$c;->c:Lj8/a;

    iget-object v1, p0, Lj8/a$c;->a:Lokio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lj8/a;->g(Lokio/ForwardingTimeout;)V

    iget-object v0, p0, Lj8/a$c;->c:Lj8/a;

    const/4 v1, 0x3

    iput v1, v0, Lj8/a;->e:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lj8/a$c;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lj8/a$c;->c:Lj8/a;

    iget-object v0, v0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lj8/a$c;->a:Lokio/ForwardingTimeout;

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lj8/a$c;->b:Z

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lj8/a$c;->c:Lj8/a;

    iget-object v0, v0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {v0, p2, p3}, Lokio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;

    iget-object v0, p0, Lj8/a$c;->c:Lj8/a;

    iget-object v0, v0, Lj8/a;->d:Lokio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object v0, p0, Lj8/a$c;->c:Lj8/a;

    iget-object v0, v0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    iget-object p0, p0, Lj8/a$c;->c:Lj8/a;

    iget-object p0, p0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    return-void

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
