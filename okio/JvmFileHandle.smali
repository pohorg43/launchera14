.class public final Lokio/JvmFileHandle;
.super Lokio/FileHandle;
.source ""


# instance fields
.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(ZLjava/io/RandomAccessFile;)V
    .registers 4

    const-string v0, "randomAccessFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/FileHandle;-><init>(Z)V

    iput-object p2, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public declared-synchronized protectedClose()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized protectedFlush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized protectedRead(J[BII)I
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p1, 0x0

    :goto_c
    if-ge p1, p5, :cond_1f

    iget-object p2, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    sub-int v0, p5, p1

    invoke-virtual {p2, p3, p4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_21

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1d

    if-nez p1, :cond_1f

    monitor-exit p0

    return v0

    :cond_1d
    add-int/2addr p1, p2

    goto :goto_c

    :cond_1f
    monitor-exit p0

    return p1

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized protectedResize(J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lokio/FileHandle;->size()J

    move-result-wide v1

    sub-long v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_16

    long-to-int v5, v3

    new-array v3, v5, [B

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/JvmFileHandle;->protectedWrite(J[BII)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized protectedSize()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized protectedWrite(J[BII)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
