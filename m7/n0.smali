.class public final Lm7/n0;
.super Lm7/f1;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1#2:187\n*E\n"
    }
.end annotation


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final h:Lm7/n0;

.field public static final i:J


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lm7/n0;

    invoke-direct {v0}, Lm7/n0;-><init>()V

    sput-object v0, Lm7/n0;->h:Lm7/n0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm7/e1;->v(Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_f
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lm7/n0;->i:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lm7/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/Thread;
    .registers 3

    sget-object v0, Lm7/n0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_1e

    monitor-enter p0

    :try_start_5
    sget-object v0, Lm7/n0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lm7/n0;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public C(JLm7/f1$c;)V
    .registers 4

    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    const-string p1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public E(Ljava/lang/Runnable;)V
    .registers 4

    sget v0, Lm7/n0;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lm7/f1;->E(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    const-string p1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized I()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lm7/n0;->J()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x3

    :try_start_a
    sput v0, Lm7/n0;->debugStatus:I

    sget-object v0, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lm7/f1;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final J()Z
    .registers 2

    sget p0, Lm7/n0;->debugStatus:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;
    .registers 7

    invoke-static {p1, p2}, Lm7/h1;->a(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL  # 1.9999999999999998

    cmp-long p4, p1, v0

    if-gez p4, :cond_1b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance p4, Lm7/f1$b;

    add-long/2addr p1, v0

    invoke-direct {p4, p1, p2, p3}, Lm7/f1$b;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1, p4}, Lm7/f1;->H(JLm7/f1$c;)V

    goto :goto_1d

    :cond_1b
    sget-object p4, Lm7/d2;->a:Lm7/d2;

    :goto_1d
    return-object p4
.end method

.method public run()V
    .registers 13

    sget-object v0, Lm7/m2;->a:Lm7/m2;

    sget-object v0, Lm7/m2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_88

    :try_start_9
    invoke-virtual {p0}, Lm7/n0;->J()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_85

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_88

    goto :goto_1e

    :cond_12
    const/4 v1, 0x1

    :try_start_13
    sput v1, Lm7/n0;->debugStatus:I

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_85

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_88

    :goto_1e
    if-nez v1, :cond_2f

    sput-object v0, Lm7/n0;->_thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lm7/n0;->I()V

    invoke-virtual {p0}, Lm7/f1;->G()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lm7/n0;->B()Ljava/lang/Thread;

    :cond_2e
    return-void

    :cond_2f
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    :cond_35
    :goto_35
    :try_start_35
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Lm7/f1;->z()J

    move-result-wide v5

    cmp-long v7, v5, v1

    const-wide/16 v8, 0x0

    if-nez v7, :cond_67

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    cmp-long v7, v3, v1

    if-nez v7, :cond_4d

    sget-wide v3, Lm7/n0;->i:J
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_88

    add-long/2addr v3, v10

    :cond_4d
    sub-long v10, v3, v10

    cmp-long v7, v10, v8

    if-gtz v7, :cond_62

    sput-object v0, Lm7/n0;->_thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lm7/n0;->I()V

    invoke-virtual {p0}, Lm7/f1;->G()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lm7/n0;->B()Ljava/lang/Thread;

    :cond_61
    return-void

    :cond_62
    :try_start_62
    invoke-static {v5, v6, v10, v11}, Ly4/h;->c(JJ)J

    move-result-wide v5

    goto :goto_68

    :cond_67
    move-wide v3, v1

    :goto_68
    cmp-long v7, v5, v8

    if-lez v7, :cond_35

    invoke-virtual {p0}, Lm7/n0;->J()Z

    move-result v7
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_88

    if-eqz v7, :cond_81

    sput-object v0, Lm7/n0;->_thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lm7/n0;->I()V

    invoke-virtual {p0}, Lm7/f1;->G()Z

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {p0}, Lm7/n0;->B()Ljava/lang/Thread;

    :cond_80
    return-void

    :cond_81
    :try_start_81
    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_35

    :catchall_85
    move-exception v1

    monitor-exit p0

    throw v1
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v1

    sput-object v0, Lm7/n0;->_thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lm7/n0;->I()V

    invoke-virtual {p0}, Lm7/f1;->G()Z

    move-result v0

    if-nez v0, :cond_97

    invoke-virtual {p0}, Lm7/n0;->B()Ljava/lang/Thread;

    :cond_97
    throw v1
.end method

.method public shutdown()V
    .registers 2

    const/4 v0, 0x4

    sput v0, Lm7/n0;->debugStatus:I

    invoke-super {p0}, Lm7/f1;->shutdown()V

    return-void
.end method
