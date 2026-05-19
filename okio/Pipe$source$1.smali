.class public final Lokio/Pipe$source$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Source;


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
        "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$source$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n1#2:258\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Pipe;)V
    .registers 2

    iput-object p1, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iget-object p0, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {p0, v1}, Lokio/Pipe;->setSourceClosed$okio(Z)V

    invoke-virtual {p0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1a

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1a
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iget-object v1, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_10
    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_69

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_75

    const-string v3, "canceled"

    if-nez v2, :cond_63

    :goto_20
    :try_start_20
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_50

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v2
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_75

    if-eqz v2, :cond_3a

    const-wide/16 p0, -0x1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide p0

    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/Timeout;->awaitSignal(Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_20

    :cond_4a
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p0

    invoke-virtual {v1}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_5f
    .catchall {:try_start_3a .. :try_end_5f} :catchall_75

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide p0

    :cond_63
    :try_start_63
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    const-string p0, "closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_75
    .catchall {:try_start_63 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    return-object p0
.end method
