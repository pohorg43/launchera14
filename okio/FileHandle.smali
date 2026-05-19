.class public abstract Lokio/FileHandle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileHandle$FileHandleSink;,
        Lokio/FileHandle$FileHandleSource;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,444:1\n33#2:445\n33#2:447\n33#2:448\n33#2:449\n33#2:450\n33#2:451\n33#2:452\n33#2:453\n33#2:457\n33#2:459\n1#3:446\n62#4:454\n62#4:455\n62#4:456\n51#5:458\n86#6:460\n86#6:461\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n69#1:445\n81#1:447\n92#1:448\n105#1:449\n119#1:450\n129#1:451\n139#1:452\n151#1:453\n221#1:457\n287#1:459\n169#1:454\n195#1:455\n202#1:456\n248#1:458\n345#1:460\n374#1:461\n*E\n"
    }
.end annotation


# instance fields
.field private closed:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private openStreamCount:I

.field private final readWrite:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokio/FileHandle;->readWrite:Z

    invoke-static {}, Lokio/_JvmPlatformKt;->newLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    iput-object p1, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic access$getClosed$p(Lokio/FileHandle;)Z
    .registers 1

    iget-boolean p0, p0, Lokio/FileHandle;->closed:Z

    return p0
.end method

.method public static final synthetic access$getOpenStreamCount$p(Lokio/FileHandle;)I
    .registers 1

    iget p0, p0, Lokio/FileHandle;->openStreamCount:I

    return p0
.end method

.method public static final synthetic access$readNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)J
    .registers 6

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setOpenStreamCount$p(Lokio/FileHandle;I)V
    .registers 2

    iput p1, p0, Lokio/FileHandle;->openStreamCount:I

    return-void
.end method

.method public static final synthetic access$writeNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->writeNoCloseCheck(JLokio/Buffer;J)V

    return-void
.end method

.method private final readNoCloseCheck(JLokio/Buffer;J)J
    .registers 21

    move-object/from16 v0, p3

    move-wide/from16 v1, p4

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_d

    move v3, v4

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_5c

    add-long v1, p1, v1

    move-wide/from16 v11, p1

    :goto_14
    cmp-long v3, v11, v1

    if-gez v3, :cond_59

    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v3

    iget-object v8, v3, Lokio/Segment;->data:[B

    iget v9, v3, Lokio/Segment;->limit:I

    sub-long v5, v1, v11

    rsub-int v7, v9, 0x2000

    int-to-long v13, v7

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v10, v5

    move-object v5, p0

    move-wide v6, v11

    invoke-virtual/range {v5 .. v10}, Lokio/FileHandle;->protectedRead(J[BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_49

    iget v1, v3, Lokio/Segment;->pos:I

    iget v2, v3, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_42

    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_42
    cmp-long v0, p1, v11

    if-nez v0, :cond_59

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_49
    iget v6, v3, Lokio/Segment;->limit:I

    add-int/2addr v6, v5

    iput v6, v3, Lokio/Segment;->limit:I

    int-to-long v5, v5

    add-long/2addr v11, v5

    invoke-virtual/range {p3 .. p3}, Lokio/Buffer;->size()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    goto :goto_14

    :cond_59
    sub-long v11, v11, p1

    return-wide v11

    :cond_5c
    const-string v0, "byteCount < 0: "

    invoke-static {v0, v1, v2}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic sink$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Sink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_d

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    const-wide/16 p1, 0x0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->sink(J)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic source$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Source;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_d

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    const-wide/16 p1, 0x0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: source"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeNoCloseCheck(JLokio/Buffer;J)V
    .registers 14

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    add-long/2addr p4, p1

    :cond_b
    :goto_b
    cmp-long v0, p1, p4

    if-gez v0, :cond_4a

    iget-object v6, p3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sub-long v0, p4, p1

    iget v2, v6, Lokio/Segment;->limit:I

    iget v3, v6, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    iget-object v3, v6, Lokio/Segment;->data:[B

    iget v4, v6, Lokio/Segment;->pos:I

    move-object v0, p0

    move-wide v1, p1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lokio/FileHandle;->protectedWrite(J[BII)V

    iget v0, v6, Lokio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lokio/Segment;->pos:I

    int-to-long v0, v7

    add-long/2addr p1, v0

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    iget v0, v6, Lokio/Segment;->pos:I

    iget v1, v6, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_b

    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_b

    :cond_4a
    return-void
.end method


# virtual methods
.method public final appendingSink()Lokio/Sink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/FileHandle;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/FileHandle;->sink(J)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1f

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_d
    const/4 v1, 0x1

    :try_start_e
    iput-boolean v1, p0, Lokio/FileHandle;->closed:Z

    iget v1, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1f

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lokio/FileHandle;->protectedClose()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_22

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lokio/FileHandle;->protectedFlush()V

    return-void

    :cond_16
    :try_start_16
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "file handle is read-only"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    iget-object p0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public final getReadWrite()Z
    .registers 1

    iget-boolean p0, p0, Lokio/FileHandle;->readWrite:Z

    return p0
.end method

.method public final position(Lokio/Sink;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/RealBufferedSink;

    if-eqz v0, :cond_14

    check-cast p1, Lokio/RealBufferedSink;

    iget-object v0, p1, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-object p1, p1, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    instance-of v2, p1, Lokio/FileHandle$FileHandleSink;

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    move-object v2, p1

    check-cast v2, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v2}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v2

    if-ne v2, p0, :cond_26

    move p0, v3

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    if-eqz p0, :cond_44

    check-cast p1, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_38

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSink;->getPosition()J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sink was not created by this FileHandle"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final position(Lokio/Source;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/RealBufferedSource;

    if-eqz v0, :cond_14

    check-cast p1, Lokio/RealBufferedSource;

    iget-object v0, p1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-object p1, p1, Lokio/RealBufferedSource;->source:Lokio/Source;

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    instance-of v2, p1, Lokio/FileHandle$FileHandleSource;

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    move-object v2, p1

    check-cast v2, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v2}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v2

    if-ne v2, p0, :cond_26

    move p0, v3

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    if-eqz p0, :cond_44

    check-cast p1, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_38

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSource;->getPosition()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source was not created by this FileHandle"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract protectedClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract protectedFlush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract protectedRead(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract protectedResize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract protectedSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract protectedWrite(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final read(J[BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_24

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->protectedRead(J[BII)I

    move-result p0

    return p0

    :cond_18
    :try_start_18
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final read(JLokio/Buffer;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_24

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide p0

    return-wide p0

    :cond_18
    :try_start_18
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final reposition(Lokio/Sink;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/RealBufferedSink;

    const-string v1, "closed"

    const-string v2, "sink was not created by this FileHandle"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_47

    check-cast p1, Lokio/RealBufferedSink;

    iget-object v0, p1, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    instance-of v5, v0, Lokio/FileHandle$FileHandleSink;

    if-eqz v5, :cond_21

    move-object v5, v0

    check-cast v5, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v5}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v5

    if-ne v5, p0, :cond_21

    move v3, v4

    :cond_21
    if-eqz v3, :cond_3d

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result p0

    xor-int/2addr p0, v4

    if-eqz p0, :cond_33

    invoke-virtual {p1}, Lokio/RealBufferedSink;->emit()Lokio/BufferedSink;

    invoke-virtual {v0, p2, p3}, Lokio/FileHandle$FileHandleSink;->setPosition(J)V

    goto :goto_63

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    instance-of v0, p1, Lokio/FileHandle$FileHandleSink;

    if-eqz v0, :cond_55

    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v0

    if-ne v0, p0, :cond_55

    move v3, v4

    :cond_55
    if-eqz v3, :cond_6e

    check-cast p1, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result p0

    xor-int/2addr p0, v4

    if-eqz p0, :cond_64

    invoke-virtual {p1, p2, p3}, Lokio/FileHandle$FileHandleSink;->setPosition(J)V

    :goto_63
    return-void

    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reposition(Lokio/Source;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/RealBufferedSource;

    const-string v1, "closed"

    const-string v2, "source was not created by this FileHandle"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_69

    check-cast p1, Lokio/RealBufferedSource;

    iget-object v0, p1, Lokio/RealBufferedSource;->source:Lokio/Source;

    instance-of v5, v0, Lokio/FileHandle$FileHandleSource;

    if-eqz v5, :cond_22

    move-object v5, v0

    check-cast v5, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v5}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v5

    if-ne v5, p0, :cond_22

    move p0, v4

    goto :goto_23

    :cond_22
    move p0, v3

    :goto_23
    if-eqz p0, :cond_5f

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result p0

    xor-int/2addr p0, v4

    if-eqz p0, :cond_55

    iget-object p0, p1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getPosition()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sub-long v5, p2, v5

    const-wide/16 v7, 0x0

    cmp-long p0, v7, v5

    if-gtz p0, :cond_46

    cmp-long p0, v5, v1

    if-gez p0, :cond_46

    move v3, v4

    :cond_46
    if-eqz v3, :cond_4c

    invoke-virtual {p1, v5, v6}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_85

    :cond_4c
    iget-object p0, p1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->clear()V

    invoke-virtual {v0, p2, p3}, Lokio/FileHandle$FileHandleSource;->setPosition(J)V

    goto :goto_85

    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    instance-of v0, p1, Lokio/FileHandle$FileHandleSource;

    if-eqz v0, :cond_77

    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v0

    if-ne v0, p0, :cond_77

    move v3, v4

    :cond_77
    if-eqz v3, :cond_90

    check-cast p1, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {p1}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result p0

    xor-int/2addr p0, v4

    if-eqz p0, :cond_86

    invoke-virtual {p1, p2, p3}, Lokio/FileHandle$FileHandleSource;->setPosition(J)V

    :goto_85
    return-void

    :cond_86
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resize(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_22

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->protectedResize(J)V

    return-void

    :cond_16
    :try_start_16
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "file handle is read-only"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sink(J)Lokio/Sink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    iget v1, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2a

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, Lokio/FileHandle$FileHandleSink;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSink;-><init>(Lokio/FileHandle;J)V

    return-object v0

    :cond_1e
    :try_start_1e
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "file handle is read-only"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1f

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lokio/FileHandle;->protectedSize()J

    move-result-wide v0

    return-wide v0

    :cond_13
    :try_start_13
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final source(J)Lokio/Source;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    iget v1, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_26

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v0, Lokio/FileHandle$FileHandleSource;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSource;-><init>(Lokio/FileHandle;J)V

    return-object v0

    :cond_1a
    :try_start_1a
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final write(JLokio/Buffer;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_e
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_27

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->writeNoCloseCheck(JLokio/Buffer;J)V

    return-void

    :cond_1b
    :try_start_1b
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "file handle is read-only"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write(J[BII)V
    .registers 8

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_e
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_27

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->protectedWrite(J[BII)V

    return-void

    :cond_1b
    :try_start_1b
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "file handle is read-only"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
