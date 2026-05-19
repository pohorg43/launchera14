.class public Lg8/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Source;


# instance fields
.field public a:Z

.field public final synthetic b:Lokio/BufferedSource;

.field public final synthetic c:Lg8/c;

.field public final synthetic d:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lg8/b;Lokio/BufferedSource;Lg8/c;Lokio/BufferedSink;)V
    .registers 5

    iput-object p2, p0, Lg8/a;->b:Lokio/BufferedSource;

    iput-object p3, p0, Lg8/a;->c:Lg8/c;

    iput-object p4, p0, Lg8/a;->d:Lokio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lg8/a;->a:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lf8/c;->k(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg8/a;->a:Z

    iget-object v0, p0, Lg8/a;->c:Lg8/c;

    invoke-interface {v0}, Lg8/c;->a()V

    :cond_16
    iget-object p0, p0, Lg8/a;->b:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lg8/a;->b:Lokio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_30

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_19

    iget-boolean p1, p0, Lg8/a;->a:Z

    if-nez p1, :cond_18

    iput-boolean v0, p0, Lg8/a;->a:Z

    iget-object p0, p0, Lg8/a;->d:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/Sink;->close()V

    :cond_18
    return-wide v1

    :cond_19
    iget-object v0, p0, Lg8/a;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    iget-object p0, p0, Lg8/a;->d:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    return-wide p2

    :catch_30
    move-exception p1

    iget-boolean p2, p0, Lg8/a;->a:Z

    if-nez p2, :cond_3c

    iput-boolean v0, p0, Lg8/a;->a:Z

    iget-object p0, p0, Lg8/a;->c:Lg8/c;

    invoke-interface {p0}, Lg8/c;->a()V

    :cond_3c
    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lg8/a;->b:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
