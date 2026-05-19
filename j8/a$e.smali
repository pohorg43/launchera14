.class public final Lj8/a$e;
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
    name = "e"
.end annotation


# instance fields
.field public final a:Lokio/ForwardingTimeout;

.field public b:Z

.field public c:J

.field public final synthetic d:Lj8/a;


# direct methods
.method public constructor <init>(Lj8/a;J)V
    .registers 5

    iput-object p1, p0, Lj8/a$e;->d:Lj8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/ForwardingTimeout;

    iget-object p1, p1, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lj8/a$e;->a:Lokio/ForwardingTimeout;

    iput-wide p2, p0, Lj8/a$e;->c:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lj8/a$e;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj8/a$e;->b:Z

    iget-wide v0, p0, Lj8/a$e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    iget-object v0, p0, Lj8/a$e;->d:Lj8/a;

    iget-object v1, p0, Lj8/a$e;->a:Lokio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lj8/a;->g(Lokio/ForwardingTimeout;)V

    iget-object p0, p0, Lj8/a$e;->d:Lj8/a;

    const/4 v0, 0x3

    iput v0, p0, Lj8/a;->e:I

    return-void

    :cond_1d
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lj8/a$e;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lj8/a$e;->d:Lj8/a;

    iget-object p0, p0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lj8/a$e;->a:Lokio/ForwardingTimeout;

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lj8/a$e;->b:Z

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lf8/c;->d(JJJ)V

    iget-wide v0, p0, Lj8/a$e;->c:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_21

    iget-object v0, p0, Lj8/a$e;->d:Lj8/a;

    iget-object v0, v0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    iget-wide v0, p0, Lj8/a$e;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lj8/a$e;->c:J

    return-void

    :cond_21
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lj8/a$e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes but received "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
