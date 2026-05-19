.class public final Lj8/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li8/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/a$g;,
        Lj8/a$d;,
        Lj8/a$f;,
        Lj8/a$b;,
        Lj8/a$c;,
        Lj8/a$e;
    }
.end annotation


# instance fields
.field public final a:Le8/u;

.field public final b:Lh8/g;

.field public final c:Lokio/BufferedSource;

.field public final d:Lokio/BufferedSink;

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Le8/u;Lh8/g;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj8/a;->e:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lj8/a;->f:J

    iput-object p1, p0, Lj8/a;->a:Le8/u;

    iput-object p2, p0, Lj8/a;->b:Lh8/g;

    iput-object p3, p0, Lj8/a;->c:Lokio/BufferedSource;

    iput-object p4, p0, Lj8/a;->d:Lokio/BufferedSink;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public b(Le8/x;J)Lokio/Sink;
    .registers 9

    iget-object p1, p1, Le8/x;->c:Le8/q;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const-string v1, "state: "

    const/4 v2, 0x1

    if-eqz p1, :cond_33

    iget p1, p0, Lj8/a;->e:I

    if-ne p1, v2, :cond_20

    iput v0, p0, Lj8/a;->e:I

    new-instance p1, Lj8/a$c;

    invoke-direct {p1, p0}, Lj8/a$c;-><init>(Lj8/a;)V

    return-object p1

    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lj8/a;->e:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_58

    iget p1, p0, Lj8/a;->e:I

    if-ne p1, v2, :cond_45

    iput v0, p0, Lj8/a;->e:I

    new-instance p1, Lj8/a$e;

    invoke-direct {p1, p0, p2, p3}, Lj8/a$e;-><init>(Lj8/a;J)V

    return-object p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lj8/a;->e:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Le8/z;)Le8/b0;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lj8/a;->b:Lh8/g;

    iget-object v0, v0, Lh8/g;->f:Le8/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Le8/z;->f:Le8/q;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    invoke-static {p1}, Li8/e;->b(Le8/z;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lj8/a;->h(J)Lokio/Source;

    move-result-object p0

    new-instance p1, Li8/g;

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Li8/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object p1

    :cond_2a
    iget-object v2, p1, Le8/z;->f:Le8/q;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    move-object v1, v2

    :cond_35
    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    const-string v3, "state: "

    const/4 v4, 0x4

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_6f

    iget-object p1, p1, Le8/z;->a:Le8/x;

    iget-object p1, p1, Le8/x;->a:Le8/r;

    iget v1, p0, Lj8/a;->e:I

    if-ne v1, v4, :cond_5c

    iput v2, p0, Lj8/a;->e:I

    new-instance v1, Lj8/a$d;

    invoke-direct {v1, p0, p1}, Lj8/a$d;-><init>(Lj8/a;Le8/r;)V

    new-instance p0, Li8/g;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-direct {p0, v0, v5, v6, p1}, Li8/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object p0

    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lj8/a;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    invoke-static {p1}, Li8/e;->a(Le8/z;)J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-eqz p1, :cond_85

    invoke-virtual {p0, v7, v8}, Lj8/a;->h(J)Lokio/Source;

    move-result-object p0

    new-instance p1, Li8/g;

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-direct {p1, v0, v7, v8, p0}, Li8/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object p1

    :cond_85
    new-instance p1, Li8/g;

    iget v1, p0, Lj8/a;->e:I

    if-ne v1, v4, :cond_a9

    iget-object v1, p0, Lj8/a;->b:Lh8/g;

    if-eqz v1, :cond_a1

    iput v2, p0, Lj8/a;->e:I

    invoke-virtual {v1}, Lh8/g;->f()V

    new-instance v1, Lj8/a$g;

    invoke-direct {v1, p0}, Lj8/a$g;-><init>(Lj8/a;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-direct {p1, v0, v5, v6, p0}, Li8/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object p1

    :cond_a1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "streamAllocation == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lj8/a;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .registers 1

    iget-object p0, p0, Lj8/a;->b:Lh8/g;

    invoke-virtual {p0}, Lh8/g;->b()Lh8/c;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p0, p0, Lh8/c;->d:Ljava/net/Socket;

    invoke-static {p0}, Lf8/c;->f(Ljava/net/Socket;)V

    :cond_d
    return-void
.end method

.method public d(Le8/x;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lj8/a;->b:Lh8/g;

    invoke-virtual {v0}, Lh8/g;->b()Lh8/c;

    move-result-object v0

    iget-object v0, v0, Lh8/c;->c:Le8/c0;

    iget-object v0, v0, Le8/c0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Le8/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Le8/x;->a:Le8/r;

    iget-object v2, v2, Le8/r;->a:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_38

    iget-object v0, p1, Le8/x;->a:Le8/r;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_38
    iget-object v0, p1, Le8/x;->a:Le8/r;

    invoke-static {v0}, Li8/h;->a(Le8/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Le8/x;->c:Le8/q;

    invoke-virtual {p0, p1, v0}, Lj8/a;->k(Le8/q;Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)Le8/z$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lj8/a;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    if-ne v0, v1, :cond_9

    goto :goto_1e

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "state: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lj8/a;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-virtual {p0}, Lj8/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li8/j;->a(Ljava/lang/String;)Li8/j;

    move-result-object v0

    new-instance v2, Le8/z$a;

    invoke-direct {v2}, Le8/z$a;-><init>()V

    iget-object v3, v0, Li8/j;->a:Le8/v;

    iput-object v3, v2, Le8/z$a;->b:Le8/v;

    iget v3, v0, Li8/j;->b:I

    iput v3, v2, Le8/z$a;->c:I

    iget-object v3, v0, Li8/j;->c:Ljava/lang/String;

    iput-object v3, v2, Le8/z$a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lj8/a;->j()Le8/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Le8/z$a;->f(Le8/q;)Le8/z$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_48

    iget p1, v0, Li8/j;->b:I

    if-ne p1, v3, :cond_48

    const/4 p0, 0x0

    return-object p0

    :cond_48
    iget p1, v0, Li8/j;->b:I

    if-ne p1, v3, :cond_4f

    iput v1, p0, Lj8/a;->e:I

    return-object v2

    :cond_4f
    const/4 p1, 0x4

    iput p1, p0, Lj8/a;->e:I
    :try_end_52
    .catch Ljava/io/EOFException; {:try_start_1e .. :try_end_52} :catch_53

    return-object v2

    :catch_53
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream on "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lj8/a;->b:Lh8/g;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public f()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public g(Lokio/ForwardingTimeout;)V
    .registers 3

    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object p0

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v0}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method

.method public h(J)Lokio/Source;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lj8/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    iput v0, p0, Lj8/a;->e:I

    new-instance v0, Lj8/a$f;

    invoke-direct {v0, p0, p1, p2}, Lj8/a$f;-><init>(Lj8/a;J)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lj8/a;->e:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lj8/a;->c:Lokio/BufferedSource;

    iget-wide v1, p0, Lj8/a;->f:J

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lj8/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lj8/a;->f:J

    return-object v0
.end method

.method public j()Le8/q;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Le8/q$a;

    invoke-direct {v0}, Le8/q$a;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lj8/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_59

    sget-object v2, Lf8/a;->a:Lf8/a;

    check-cast v2, Le8/u$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ":"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le8/q$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/q$a;

    goto :goto_5

    :cond_2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_4a

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4a
    iget-object v2, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_59
    new-instance p0, Le8/q;

    invoke-direct {p0, v0}, Le8/q;-><init>(Le8/q$a;)V

    return-object p0
.end method

.method public k(Le8/q;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lj8/a;->e:I

    if-nez v0, :cond_3d

    iget-object v0, p0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p2, 0x0

    invoke-virtual {p1}, Le8/q;->g()I

    move-result v1

    :goto_14
    if-ge p2, v1, :cond_34

    iget-object v2, p0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-virtual {p1, p2}, Le8/q;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, p2}, Le8/q;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_34
    iget-object p1, p0, Lj8/a;->d:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p1, 0x1

    iput p1, p0, Lj8/a;->e:I

    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lj8/a;->e:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
