.class public abstract Lm7/f1$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lm7/a1;
.implements Lr7/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lm7/f1$c;",
        ">;",
        "Lm7/a1;",
        "Lr7/l0;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n1#1,543:1\n28#2,4:544\n28#2,4:550\n28#2,4:562\n20#3:548\n20#3:554\n20#3:566\n72#4:549\n73#4,7:555\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n437#1:544,4\n439#1:550,4\n479#1:562,4\n437#1:548\n439#1:554\n479#1:566\n439#1:549\n439#1:555,7\n*E\n"
    }
.end annotation


# instance fields
.field private volatile _heap:Ljava/lang/Object;

.field public a:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lm7/f1$c;->a:J

    const/4 p1, -0x1

    iput p1, p0, Lm7/f1$c;->b:I

    return-void
.end method


# virtual methods
.method public b()Lr7/k0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr7/k0<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lm7/f1$c;->_heap:Ljava/lang/Object;

    instance-of v0, p0, Lr7/k0;

    if-eqz v0, :cond_9

    check-cast p0, Lr7/k0;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lm7/f1$c;

    iget-wide v0, p0, Lm7/f1$c;->a:J

    iget-wide p0, p1, Lm7/f1$c;->a:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_14

    :cond_f
    if-gez p0, :cond_13

    const/4 p0, -0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public d(Lr7/k0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/k0<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lm7/f1$c;->_heap:Ljava/lang/Object;

    sget-object v1, Lm7/h1;->a:Lr7/f0;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    iput-object p1, p0, Lm7/f1$c;->_heap:Ljava/lang/Object;

    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispose()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm7/f1$c;->_heap:Ljava/lang/Object;

    sget-object v1, Lm7/h1;->a:Lr7/f0;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2b

    if-ne v0, v1, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    instance-of v2, v0, Lm7/f1$d;

    if-eqz v2, :cond_10

    check-cast v0, Lm7/f1$d;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_27

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_2b

    :try_start_14
    invoke-interface {p0}, Lr7/l0;->b()Lr7/k0;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_22

    :cond_1b
    invoke-interface {p0}, Lr7/l0;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lr7/k0;->d(I)Lr7/l0;
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_24

    :goto_22
    :try_start_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_27
    :goto_27
    iput-object v1, p0, Lm7/f1$c;->_heap:Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lm7/f1$c;->b:I

    return-void
.end method

.method public final f(JLm7/f1$d;Lm7/f1;)I
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm7/f1$c;->_heap:Ljava/lang/Object;

    sget-object v1, Lm7/h1;->a:Lr7/f0;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4b

    if-ne v0, v1, :cond_a

    const/4 p1, 0x2

    monitor-exit p0

    return p1

    :cond_a
    :try_start_a
    monitor-enter p3
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_4b

    :try_start_b
    invoke-virtual {p3}, Lr7/k0;->b()Lr7/l0;

    move-result-object v0

    check-cast v0, Lm7/f1$c;

    invoke-static {p4}, Lm7/f1;->D(Lm7/f1;)Z

    move-result p4
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_48

    if-eqz p4, :cond_1b

    const/4 p1, 0x1

    :try_start_18
    monitor-exit p3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_4b

    monitor-exit p0

    return p1

    :cond_1b
    const-wide/16 v1, 0x0

    if-nez v0, :cond_22

    :try_start_1f
    iput-wide p1, p3, Lm7/f1$d;->c:J

    goto :goto_36

    :cond_22
    iget-wide v3, v0, Lm7/f1$c;->a:J

    sub-long v5, v3, p1

    cmp-long p4, v5, v1

    if-ltz p4, :cond_2b

    goto :goto_2c

    :cond_2b
    move-wide p1, v3

    :goto_2c
    iget-wide v3, p3, Lm7/f1$d;->c:J

    sub-long v3, p1, v3

    cmp-long p4, v3, v1

    if-lez p4, :cond_36

    iput-wide p1, p3, Lm7/f1$d;->c:J

    :cond_36
    :goto_36
    iget-wide p1, p0, Lm7/f1$c;->a:J

    iget-wide v3, p3, Lm7/f1$d;->c:J

    sub-long/2addr p1, v3

    cmp-long p1, p1, v1

    if-gez p1, :cond_41

    iput-wide v3, p0, Lm7/f1$c;->a:J

    :cond_41
    invoke-virtual {p3, p0}, Lr7/k0;->a(Lr7/l0;)V
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_48

    :try_start_44
    monitor-exit p3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_4b

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p3

    throw p1
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getIndex()I
    .registers 1

    iget p0, p0, Lm7/f1$c;->b:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "Delayed[nanos="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lm7/f1$c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
