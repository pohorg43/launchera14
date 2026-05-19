.class public final Lokio/Throttler;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private allocatedUntil:J

.field private bytesPerSecond:J

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private maxByteCount:J

.field private waitByteCount:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lokio/Throttler;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/Throttler;->allocatedUntil:J

    const-wide/16 p1, 0x2000

    iput-wide p1, p0, Lokio/Throttler;->waitByteCount:J

    const-wide/32 p1, 0x40000

    iput-wide p1, p0, Lokio/Throttler;->maxByteCount:J

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lokio/Throttler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    const-string p2, "newCondition(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokio/Throttler;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public static synthetic bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_6

    iget-wide p3, p0, Lokio/Throttler;->waitByteCount:J

    :cond_6
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x4

    if-eqz p3, :cond_d

    iget-wide p5, p0, Lokio/Throttler;->maxByteCount:J

    :cond_d
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lokio/Throttler;->bytesPerSecond(JJJ)V

    return-void
.end method

.method private final bytesToNanos(J)J
    .registers 5

    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lokio/Throttler;->bytesPerSecond:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final nanosToBytes(J)J
    .registers 5

    iget-wide v0, p0, Lokio/Throttler;->bytesPerSecond:J

    mul-long/2addr p1, v0

    const-wide/32 v0, 0x3b9aca00

    div-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public final byteCountOrWaitNanos$okio(JJ)J
    .registers 14

    iget-wide v0, p0, Lokio/Throttler;->bytesPerSecond:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-wide p3

    :cond_9
    iget-wide v0, p0, Lokio/Throttler;->allocatedUntil:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v4, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, v0, v1}, Lokio/Throttler;->nanosToBytes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v6, v4, p3

    if-ltz v6, :cond_24

    add-long/2addr p1, v0

    invoke-direct {p0, p3, p4}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Throttler;->allocatedUntil:J

    return-wide p3

    :cond_24
    iget-wide v6, p0, Lokio/Throttler;->waitByteCount:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_34

    iget-wide p3, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, p3, p4}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lokio/Throttler;->allocatedUntil:J

    return-wide v4

    :cond_34
    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iget-wide v4, p0, Lokio/Throttler;->maxByteCount:J

    sub-long v4, p3, v4

    invoke-direct {p0, v4, v5}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_4f

    iget-wide v0, p0, Lokio/Throttler;->maxByteCount:J

    invoke-direct {p0, v0, v1}, Lokio/Throttler;->bytesToNanos(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Throttler;->allocatedUntil:J

    return-wide p3

    :cond_4f
    neg-long p0, v0

    return-wide p0
.end method

.method public final bytesPerSecond(J)V
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v8}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJ)V
    .registers 14
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v8}, Lokio/Throttler;->bytesPerSecond$default(Lokio/Throttler;JJJILjava/lang/Object;)V

    return-void
.end method

.method public final bytesPerSecond(JJJ)V
    .registers 14
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    iget-object v0, p0, Lokio/Throttler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_f

    move v3, v4

    goto :goto_10

    :cond_f
    move v3, v5

    :goto_10
    const-string v6, "Failed requirement."

    if-eqz v3, :cond_48

    cmp-long v1, p3, v1

    if-lez v1, :cond_1a

    move v1, v4

    goto :goto_1b

    :cond_1a
    move v1, v5

    :goto_1b
    if-eqz v1, :cond_3e

    cmp-long v1, p5, p3

    if-ltz v1, :cond_22

    goto :goto_23

    :cond_22
    move v4, v5

    :goto_23
    if-eqz v4, :cond_34

    :try_start_25
    iput-wide p1, p0, Lokio/Throttler;->bytesPerSecond:J

    iput-wide p3, p0, Lokio/Throttler;->waitByteCount:J

    iput-wide p5, p0, Lokio/Throttler;->maxByteCount:J

    iget-object p0, p0, Lokio/Throttler;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_52

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_34
    :try_start_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getCondition()Ljava/util/concurrent/locks/Condition;
    .registers 1

    iget-object p0, p0, Lokio/Throttler;->condition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    iget-object p0, p0, Lokio/Throttler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .registers 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Throttler$sink$1;

    invoke-direct {v0, p1, p0}, Lokio/Throttler$sink$1;-><init>(Lokio/Sink;Lokio/Throttler;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Throttler$source$1;

    invoke-direct {v0, p1, p0}, Lokio/Throttler$source$1;-><init>(Lokio/Source;Lokio/Throttler;)V

    return-object v0
.end method

.method public final take$okio(J)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_2c

    iget-object v2, p0, Lokio/Throttler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_10
    :try_start_10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p1, p2}, Lokio/Throttler;->byteCountOrWaitNanos$okio(JJ)J

    move-result-wide v3
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_27

    cmp-long v5, v3, v0

    if-ltz v5, :cond_20

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v3

    :cond_20
    :try_start_20
    iget-object v5, p0, Lokio/Throttler;->condition:Ljava/util/concurrent/locks/Condition;

    neg-long v3, v3

    invoke-interface {v5, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_27

    goto :goto_10

    :catchall_27
    move-exception p0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
