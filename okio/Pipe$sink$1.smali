.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Pipe.kt\nokio/Pipe\n+ 4 Timeout.kt\nokio/Timeout\n*L\n1#1,257:1\n1#2:258\n217#3:259\n218#3:286\n217#3:287\n218#3:314\n217#3:315\n218#3:342\n268#4,26:260\n268#4,26:288\n268#4,26:316\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n87#1:259\n87#1:286\n106#1:287\n106#1:314\n124#1:315\n124#1:342\n87#1:260,26\n106#1:288,26\n124#1:316,26\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Pipe;)V
    .registers 2

    iput-object p1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 12

    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_b
    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_dc

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_15
    :try_start_15
    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v2

    if-eqz v2, :cond_1c

    goto :goto_45

    :cond_1c
    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_31

    goto :goto_39

    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    :goto_39
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokio/Pipe;->setSinkClosed$okio(Z)V

    invoke-virtual {v1}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_dc

    const/4 v2, 0x0

    :goto_45
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v2, :cond_db

    iget-object p0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    sget-object v1, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v1, v5, v6, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_8e
    :try_start_8e
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_9e

    invoke-virtual {v0, v3, v4, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_db

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_db

    :catchall_9e
    move-exception v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_ad

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_ad
    throw v1

    :cond_ae
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_bb
    :try_start_bb
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_cb

    invoke-virtual {v0, v3, v4, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_db

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_db

    :catchall_cb
    move-exception v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_da

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_da
    throw v1

    :cond_db
    :goto_db
    return-void

    :catchall_dc
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public flush()V
    .registers 12

    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_b
    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_dd

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v2

    if-nez v2, :cond_d5

    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_3e

    :cond_20
    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_35

    goto :goto_3d

    :cond_35
    new-instance p0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_e9

    :cond_3d
    :goto_3d
    const/4 v2, 0x0

    :goto_3e
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v2, :cond_d4

    iget-object p0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    sget-object v1, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v1, v5, v6, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_87
    :try_start_87
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_97

    invoke-virtual {v0, v3, v4, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_d4

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_d4

    :catchall_97
    move-exception v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_a6

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_a6
    throw v1

    :cond_a7
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_b4
    :try_start_b4
    invoke-interface {v2}, Lokio/Sink;->flush()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_c4

    invoke-virtual {v0, v3, v4, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_d4

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_d4

    :catchall_c4
    move-exception v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_d3

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_d3
    throw v1

    :cond_d4
    :goto_d4
    return-void

    :cond_d5
    :try_start_d5
    new-instance p0, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_dd
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e9
    .catchall {:try_start_d5 .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 15

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_10
    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_114

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_120

    const-string v3, "canceled"

    if-nez v2, :cond_10e

    :goto_20
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-lez v2, :cond_76

    :try_start_26
    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v2

    if-eqz v2, :cond_2d

    goto :goto_77

    :cond_2d
    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v1}, Lokio/Pipe;->getMaxBufferSize$okio()J

    move-result-wide v6

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v2, v6, v4

    if-nez v2, :cond_5a

    iget-object v2, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/Timeout;->awaitSignal(Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v2

    if-nez v2, :cond_54

    goto :goto_20

    :cond_54
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    sub-long/2addr p2, v4

    invoke-virtual {v1}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto :goto_20

    :cond_6e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "source is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_76
    .catchall {:try_start_26 .. :try_end_76} :catchall_120

    :cond_76
    const/4 v2, 0x0

    :goto_77
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v2, :cond_10d

    iget-object p0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    sget-object v1, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v1, v5, v6, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_e0

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_c0

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_c0
    :try_start_c0
    invoke-interface {v2, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_d0

    invoke-virtual {v0, v3, v4, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_10d

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_10d

    :catchall_d0
    move-exception p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_df

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_df
    throw p1

    :cond_e0
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_ed

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_ed
    :try_start_ed
    invoke-interface {v2, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_fd

    invoke-virtual {v0, v3, v4, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_10d

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_10d

    :catchall_fd
    move-exception p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    if-eqz p0, :cond_10c

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_10c
    throw p1

    :cond_10d
    :goto_10d
    return-void

    :cond_10e
    :try_start_10e
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_114
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_120
    .catchall {:try_start_10e .. :try_end_120} :catchall_120

    :catchall_120
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
