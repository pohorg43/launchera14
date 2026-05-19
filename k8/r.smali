.class public final Lk8/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lokio/BufferedSink;

.field public final b:Z

.field public final c:Lokio/Buffer;

.field public d:I

.field public e:Z

.field public final f:Lk8/d$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lk8/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lk8/r;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSink;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    iput-boolean p2, p0, Lk8/r;->b:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lk8/r;->c:Lokio/Buffer;

    new-instance p2, Lk8/d$b;

    invoke-direct {p2, p1}, Lk8/d$b;-><init>(Lokio/Buffer;)V

    iput-object p2, p0, Lk8/r;->f:Lk8/d$b;

    const/16 p1, 0x4000

    iput p1, p0, Lk8/r;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lk8/u;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_60

    iget v0, p0, Lk8/r;->d:I

    iget v1, p1, Lk8/u;->a:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_12

    iget-object v0, p1, Lk8/u;->b:[I

    const/4 v2, 0x5

    aget v0, v0, v2

    :cond_12
    iput v0, p0, Lk8/r;->d:I

    and-int/lit8 v0, v1, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    iget-object v3, p1, Lk8/u;->b:[I

    aget v3, v3, v2

    goto :goto_20

    :cond_1f
    move v3, v1

    :goto_20
    if-eq v3, v1, :cond_54

    iget-object v3, p0, Lk8/r;->f:Lk8/d$b;

    if-eqz v0, :cond_2a

    iget-object p1, p1, Lk8/u;->b:[I

    aget v1, p1, v2

    :cond_2a
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x4000

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, v3, Lk8/d$b;->d:I

    if-ne v0, p1, :cond_38

    goto :goto_54

    :cond_38
    if-ge p1, v0, :cond_42

    iget v0, v3, Lk8/d$b;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Lk8/d$b;->b:I

    :cond_42
    iput-boolean v2, v3, Lk8/d$b;->c:Z

    iput p1, v3, Lk8/d$b;->d:I

    iget v0, v3, Lk8/d$b;->h:I

    if-ge p1, v0, :cond_54

    if-nez p1, :cond_50

    invoke-virtual {v3}, Lk8/d$b;->a()V

    goto :goto_54

    :cond_50
    sub-int/2addr v0, p1

    invoke-virtual {v3, v0}, Lk8/d$b;->b(I)I

    :cond_54
    :goto_54
    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, v2}, Lk8/r;->c(IIBB)V

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_68

    monitor-exit p0

    return-void

    :cond_60
    :try_start_60
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(ZILokio/Buffer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_19

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    int-to-byte p1, p1

    goto :goto_c

    :cond_b
    move p1, v0

    :goto_c
    invoke-virtual {p0, p2, p4, v0, p1}, Lk8/r;->c(IIBB)V

    if-lez p4, :cond_17

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    :cond_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(IIBB)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lk8/r;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-static {v2, p1, p2, p3, p4}, Lk8/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_12
    iget v0, p0, Lk8/r;->d:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-gt p2, v0, :cond_58

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_4a

    iget-object v0, p0, Lk8/r;->a:Lokio/BufferedSink;

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    and-int/lit16 p2, p2, 0xff

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object p2, p0, Lk8/r;->a:Lokio/BufferedSink;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object p2, p0, Lk8/r;->a:Lokio/BufferedSink;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object p0, p0, Lk8/r;->a:Lokio/BufferedSink;

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    return-void

    :cond_4a
    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p0}, Lk8/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v1

    :cond_58
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p1, p0}, Lk8/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v1
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lk8/r;->e:Z

    iget-object v0, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(ILk8/b;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_36

    iget v0, p2, Lk8/b;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2d

    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    invoke-virtual {p0, v2, v0, v1, v2}, Lk8/r;->c(IIBB)V

    iget-object v0, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    iget p2, p2, Lk8/b;->a:I

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    array-length p1, p3

    if-lez p1, :cond_26

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {p1, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :cond_26
    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_3e

    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lk8/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    throw p1

    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(ZILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lk8/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lk8/r;->f:Lk8/d$b;

    invoke-virtual {v0, p3}, Lk8/d$b;->e(Ljava/util/List;)V

    iget-object p3, p0, Lk8/r;->c:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget p3, p0, Lk8/r;->d:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v5, 0x4

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    if-eqz p1, :cond_24

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_24
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1, v5}, Lk8/r;->c(IIBB)V

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    iget-object p3, p0, Lk8/r;->c:Lokio/Buffer;

    invoke-interface {p1, p3, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    if-lez v4, :cond_35

    sub-long/2addr v0, v2

    invoke-virtual {p0, p2, v0, v1}, Lk8/r;->i(IJ)V

    :cond_35
    return-void

    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized f(ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_22

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    move p1, v2

    :goto_e
    invoke-virtual {p0, v2, v0, v1, p1}, Lk8/r;->c(IIBB)V

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    monitor-exit p0

    return-void

    :cond_22
    :try_start_22
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(ILk8/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_24

    iget v0, p2, Lk8/b;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lk8/r;->c(IIBB)V

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    iget p2, p2, Lk8/b;->a:I

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_24
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/r;->e:Z

    if-nez v0, :cond_36

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p2, v2

    if-gtz v0, :cond_26

    const/4 v0, 0x4

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v0, v2, v1}, Lk8/r;->c(IIBB)V

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lk8/r;->a:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3e

    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lk8/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    throw p1

    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i(IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_24

    iget v2, p0, Lk8/r;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr p2, v3

    const/16 v5, 0x9

    cmp-long v0, p2, v0

    if-nez v0, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0, p1, v2, v5, v0}, Lk8/r;->c(IIBB)V

    iget-object v0, p0, Lk8/r;->a:Lokio/BufferedSink;

    iget-object v1, p0, Lk8/r;->c:Lokio/Buffer;

    invoke-interface {v0, v1, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_24
    return-void
.end method
