.class public Lj8/a$d;
.super Lj8/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final e:Le8/r;

.field public f:J

.field public g:Z

.field public final synthetic h:Lj8/a;


# direct methods
.method public constructor <init>(Lj8/a;Le8/r;)V
    .registers 5

    iput-object p1, p0, Lj8/a$d;->h:Lj8/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj8/a$b;-><init>(Lj8/a;Lj8/a$a;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lj8/a$d;->f:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj8/a$d;->g:Z

    iput-object p2, p0, Lj8/a$d;->e:Le8/r;

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

    iget-boolean v0, p0, Lj8/a$b;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lj8/a$d;->g:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lf8/c;->k(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lj8/a$b;->a(ZLjava/io/IOException;)V

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj8/a$b;->b:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_c5

    iget-boolean v2, p0, Lj8/a$b;->b:Z

    if-nez v2, :cond_bd

    iget-boolean v2, p0, Lj8/a$d;->g:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_11

    return-wide v3

    :cond_11
    iget-wide v5, p0, Lj8/a$d;->f:J

    cmp-long v2, v5, v0

    const/4 v7, 0x0

    if-eqz v2, :cond_1c

    cmp-long v2, v5, v3

    if-nez v2, :cond_72

    :cond_1c
    cmp-long v2, v5, v3

    if-eqz v2, :cond_27

    iget-object v2, p0, Lj8/a$d;->h:Lj8/a;

    iget-object v2, v2, Lj8/a;->c:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    :cond_27
    :try_start_27
    iget-object v2, p0, Lj8/a$d;->h:Lj8/a;

    iget-object v2, v2, Lj8/a;->c:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v5

    iput-wide v5, p0, Lj8/a$d;->f:J

    iget-object v2, p0, Lj8/a$d;->h:Lj8/a;

    iget-object v2, v2, Lj8/a;->c:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v5, p0, Lj8/a$d;->f:J

    cmp-long v5, v5, v0

    if-ltz v5, :cond_91

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_51

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_4f} :catch_b2

    if-eqz v5, :cond_91

    :cond_51
    iget-wide v5, p0, Lj8/a$d;->f:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_6d

    iput-boolean v7, p0, Lj8/a$d;->g:Z

    iget-object v0, p0, Lj8/a$d;->h:Lj8/a;

    iget-object v1, v0, Lj8/a;->a:Le8/u;

    iget-object v1, v1, Le8/u;->i:Le8/k;

    iget-object v2, p0, Lj8/a$d;->e:Le8/r;

    invoke-virtual {v0}, Lj8/a;->j()Le8/q;

    move-result-object v0

    invoke-static {v1, v2, v0}, Li8/e;->d(Le8/k;Le8/r;Le8/q;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lj8/a$b;->a(ZLjava/io/IOException;)V

    :cond_6d
    iget-boolean v0, p0, Lj8/a$d;->g:Z

    if-nez v0, :cond_72

    return-wide v3

    :cond_72
    iget-wide v0, p0, Lj8/a$d;->f:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lj8/a$b;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_86

    iget-wide v0, p0, Lj8/a$d;->f:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lj8/a$d;->f:J

    return-wide p1

    :cond_86
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, p1}, Lj8/a$b;->a(ZLjava/io/IOException;)V

    throw p1

    :cond_91
    :try_start_91
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected chunk size and optional extensions but was \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lj8/a$d;->f:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_b2} :catch_b2

    :catch_b2
    move-exception p0

    new-instance p1, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bd
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount < 0: "

    invoke-static {p1, p2, p3}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
