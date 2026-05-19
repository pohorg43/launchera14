.class public final Lm7/o2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThreadPoolDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadPoolDispatcher.kt\nkotlinx/coroutines/ThreadPoolDispatcherKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(ILjava/lang/String;)Lm7/j1;
    .registers 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_1b

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, Lm7/n2;

    invoke-direct {v1, p0, p1, v0}, Lm7/n2;-><init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {p0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance p1, Lm7/k1;

    invoke-direct {p1, p0}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p1

    :cond_1b
    const-string p1, "Expected at least one thread, but "

    const-string v0, " specified"

    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final b(Ljava/lang/String;)Lm7/j1;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lm7/o2;->a(ILjava/lang/String;)Lm7/j1;

    move-result-object p0

    return-object p0
.end method
