.class public abstract Lm7/f1;
.super Lm7/g1;
.source ""

# interfaces
.implements Lm7/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/f1$a;,
        Lm7/f1$b;,
        Lm7/f1$c;,
        Lm7/f1$d;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 EventLoop.kt\nkotlinx/coroutines/EventLoopKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n60#2:544\n61#2,7:550\n28#3,4:545\n20#4:549\n56#5:557\n1#6:558\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n269#1:544\n269#1:550,7\n269#1:545,4\n269#1:549\n280#1:557\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _isCompleted:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _queue:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lm7/f1;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm7/f1;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lm7/f1;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lm7/g1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm7/f1;->_isCompleted:I

    return-void
.end method

.method public static final synthetic D(Lm7/f1;)Z
    .registers 1

    invoke-direct {p0}, Lm7/f1;->p()Z

    move-result p0

    return p0
.end method

.method private final p()Z
    .registers 2

    sget-object v0, Lm7/f1;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public E(Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1}, Lm7/f1;->F(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lm7/g1;->B()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_19

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_19

    :cond_14
    sget-object p0, Lm7/n0;->h:Lm7/n0;

    invoke-virtual {p0, p1}, Lm7/n0;->E(Ljava/lang/Runnable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final F(Ljava/lang/Runnable;)Z
    .registers 8

    sget-object v0, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lm7/f1;->p()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    return v3

    :cond_e
    const/4 v2, 0x1

    if-nez v1, :cond_1b

    sget-object v1, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_1b
    instance-of v4, v1, Lr7/s;

    if-eqz v4, :cond_3f

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Lr7/s;

    invoke-virtual {v4, p1}, Lr7/s;->a(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_3e

    if-eq v5, v2, :cond_34

    const/4 v1, 0x2

    if-eq v5, v1, :cond_33

    goto :goto_2

    :cond_33
    return v3

    :cond_34
    sget-object v2, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4}, Lr7/s;->d()Lr7/s;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3e
    return v2

    :cond_3f
    sget-object v4, Lm7/h1;->b:Lr7/f0;

    if-ne v1, v4, :cond_44

    return v3

    :cond_44
    new-instance v3, Lr7/s;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Lr7/s;-><init>(IZ)V

    const-string v4, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lr7/s;->a(Ljava/lang/Object;)I

    invoke-virtual {v3, p1}, Lr7/s;->a(Ljava/lang/Object;)I

    sget-object v4, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2
.end method

.method public G()Z
    .registers 4

    iget-object v0, p0, Lm7/e1;->c:Li4/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Li4/h;->isEmpty()Z

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v2, 0x0

    if-nez v0, :cond_f

    return v2

    :cond_f
    sget-object v0, Lm7/f1;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/f1$d;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lr7/k0;->c()I

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    if-nez v0, :cond_25

    return v2

    :cond_25
    sget-object v0, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2e

    goto :goto_3f

    :cond_2e
    instance-of v0, p0, Lr7/s;

    if-eqz v0, :cond_39

    check-cast p0, Lr7/s;

    invoke-virtual {p0}, Lr7/s;->c()Z

    move-result v1

    goto :goto_3f

    :cond_39
    sget-object v0, Lm7/h1;->b:Lr7/f0;

    if-ne p0, v0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    return v1
.end method

.method public final H(JLm7/f1$c;)V
    .registers 8

    invoke-direct {p0}, Lm7/f1;->p()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_2a

    :cond_a
    sget-object v0, Lm7/f1;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm7/f1$d;

    if-nez v3, :cond_26

    new-instance v3, Lm7/f1$d;

    invoke-direct {v3, p1, p2}, Lm7/f1$d;-><init>(J)V

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Lm7/f1$d;

    :cond_26
    invoke-virtual {p3, p1, p2, v3, p0}, Lm7/f1$c;->f(JLm7/f1$d;Lm7/f1;)I

    move-result v0

    :goto_2a
    if-eqz v0, :cond_42

    if-eq v0, v2, :cond_3e

    const/4 p0, 0x2

    if-ne v0, p0, :cond_32

    goto :goto_6c

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    invoke-virtual {p0, p1, p2, p3}, Lm7/g1;->C(JLm7/f1$c;)V

    goto :goto_6c

    :cond_42
    sget-object p1, Lm7/f1;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm7/f1$d;

    if-eqz p1, :cond_59

    monitor-enter p1

    :try_start_4d
    invoke-virtual {p1}, Lr7/k0;->b()Lr7/l0;

    move-result-object p2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_56

    monitor-exit p1

    move-object v1, p2

    check-cast v1, Lm7/f1$c;

    goto :goto_59

    :catchall_56
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_59
    :goto_59
    if-ne v1, p3, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :goto_5d
    if-eqz v2, :cond_6c

    invoke-virtual {p0}, Lm7/g1;->B()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_6c

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public final dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p2}, Lm7/f1;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;
    .registers 5

    sget-object p0, Lm7/o0;->b:Lm7/r0;

    invoke-interface {p0, p1, p2, p3, p4}, Lm7/r0;->l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;

    move-result-object p0

    return-object p0
.end method

.method public m(JLm7/l;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lm7/l<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lm7/h1;->a(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL  # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Lm7/f1$a;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lm7/f1$a;-><init>(Lm7/f1;JLm7/l;)V

    invoke-virtual {p0, v0, v1, v2}, Lm7/f1;->H(JLm7/f1$c;)V

    new-instance p0, Lm7/b1;

    invoke-direct {p0, v2}, Lm7/b1;-><init>(Lm7/a1;)V

    invoke-interface {p3, p0}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    :cond_22
    return-void
.end method

.method public shutdown()V
    .registers 7

    sget-object v0, Lm7/m2;->a:Lm7/m2;

    sget-object v0, Lm7/m2;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lm7/f1;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v0, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    sget-object v3, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v4, Lm7/h1;->b:Lr7/f0;

    invoke-virtual {v3, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_4a

    :cond_21
    instance-of v4, v3, Lr7/s;

    if-eqz v4, :cond_2b

    check-cast v3, Lr7/s;

    invoke-virtual {v3}, Lr7/s;->b()Z

    goto :goto_4a

    :cond_2b
    sget-object v4, Lm7/h1;->b:Lr7/f0;

    if-ne v3, v4, :cond_30

    goto :goto_4a

    :cond_30
    new-instance v4, Lr7/s;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v2}, Lr7/s;-><init>(IZ)V

    const-string v5, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lr7/s;->a(Ljava/lang/Object;)I

    sget-object v5, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lm7/f1;->z()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_58
    sget-object v0, Lm7/f1;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/f1$d;

    if-eqz v0, :cond_7d

    monitor-enter v0

    :try_start_63
    invoke-virtual {v0}, Lr7/k0;->c()I

    move-result v4

    if-lez v4, :cond_6f

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lr7/k0;->d(I)Lr7/l0;

    move-result-object v4
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_7a

    goto :goto_70

    :cond_6f
    move-object v4, v1

    :goto_70
    monitor-exit v0

    check-cast v4, Lm7/f1$c;

    if-nez v4, :cond_76

    goto :goto_7d

    :cond_76
    invoke-virtual {p0, v2, v3, v4}, Lm7/g1;->C(JLm7/f1$c;)V

    goto :goto_58

    :catchall_7a
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_7d
    :goto_7d
    return-void
.end method

.method public z()J
    .registers 12

    invoke-virtual {p0}, Lm7/e1;->A()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    :cond_9
    sget-object v0, Lm7/f1;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/f1$d;

    const/4 v3, 0x0

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lr7/k0;->c()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1e

    move v4, v5

    goto :goto_1f

    :cond_1e
    move v4, v6

    :goto_1f
    if-nez v4, :cond_55

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    :cond_25
    monitor-enter v0

    :try_start_26
    invoke-virtual {v0}, Lr7/k0;->b()Lr7/l0;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_52

    if-nez v4, :cond_2f

    monitor-exit v0

    move-object v4, v3

    goto :goto_4d

    :cond_2f
    :try_start_2f
    check-cast v4, Lm7/f1$c;

    iget-wide v9, v4, Lm7/f1$c;->a:J

    sub-long v9, v7, v9

    cmp-long v9, v9, v1

    if-ltz v9, :cond_3b

    move v9, v5

    goto :goto_3c

    :cond_3b
    move v9, v6

    :goto_3c
    if-eqz v9, :cond_43

    invoke-virtual {p0, v4}, Lm7/f1;->F(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_44

    :cond_43
    move v4, v6

    :goto_44
    if-eqz v4, :cond_4b

    invoke-virtual {v0, v6}, Lr7/k0;->d(I)Lr7/l0;

    move-result-object v4
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_52

    goto :goto_4c

    :cond_4b
    move-object v4, v3

    :goto_4c
    monitor-exit v0

    :goto_4d
    check-cast v4, Lm7/f1$c;

    if-nez v4, :cond_25

    goto :goto_55

    :catchall_52
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_55
    :goto_55
    sget-object v0, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_57
    :goto_57
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5e

    goto :goto_95

    :cond_5e
    instance-of v5, v4, Lr7/s;

    if-eqz v5, :cond_80

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Lr7/s;

    invoke-virtual {v5}, Lr7/s;->e()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lr7/s;->g:Lr7/f0;

    if-eq v6, v7, :cond_76

    move-object v3, v6

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_95

    :cond_76
    sget-object v6, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5}, Lr7/s;->d()Lr7/s;

    move-result-object v5

    invoke-virtual {v6, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_57

    :cond_80
    sget-object v5, Lm7/h1;->b:Lr7/f0;

    if-ne v4, v5, :cond_85

    goto :goto_95

    :cond_85
    sget-object v5, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    const-string v0, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Ljava/lang/Runnable;

    :goto_95
    if-eqz v3, :cond_9b

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_9b
    iget-object v0, p0, Lm7/e1;->c:Li4/h;

    const-wide v3, 0x7fffffffffffffffL

    if-nez v0, :cond_a5

    goto :goto_ab

    :cond_a5
    invoke-virtual {v0}, Li4/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    :goto_ab
    move-wide v5, v3

    goto :goto_ae

    :cond_ad
    move-wide v5, v1

    :goto_ae
    cmp-long v0, v5, v1

    if-nez v0, :cond_b3

    goto :goto_f2

    :cond_b3
    sget-object v0, Lm7/f1;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cd

    instance-of v5, v0, Lr7/s;

    if-eqz v5, :cond_c8

    check-cast v0, Lr7/s;

    invoke-virtual {v0}, Lr7/s;->c()Z

    move-result v0

    if-nez v0, :cond_cd

    goto :goto_f2

    :cond_c8
    sget-object p0, Lm7/h1;->b:Lr7/f0;

    if-ne v0, p0, :cond_f2

    goto :goto_f1

    :cond_cd
    sget-object v0, Lm7/f1;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/f1$d;

    if-eqz p0, :cond_f1

    monitor-enter p0

    :try_start_d8
    invoke-virtual {p0}, Lr7/k0;->b()Lr7/l0;

    move-result-object v0
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_ee

    monitor-exit p0

    check-cast v0, Lm7/f1$c;

    if-nez v0, :cond_e2

    goto :goto_f1

    :cond_e2
    iget-wide v3, v0, Lm7/f1$c;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-gez p0, :cond_f1

    goto :goto_f2

    :catchall_ee
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f1
    :goto_f1
    move-wide v1, v3

    :cond_f2
    :goto_f2
    return-wide v1
.end method
