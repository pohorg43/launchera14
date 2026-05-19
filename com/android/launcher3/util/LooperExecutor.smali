.class public Lcom/android/launcher3/util/LooperExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "LooperExecutor"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->lambda$executeBlockWait$0(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private static synthetic lambda$executeBlockWait$0(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_19

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void
.end method

.method public execute(Ljava/lang/Runnable;J)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public executeBlockWait(Ljava/lang/Runnable;J)Z
    .registers 8

    const-string v0, "LooperExecutor"

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v2, Lcom/android/launcher3/util/r;

    invoke-direct {v2, p1, v1}, Lcom/android/launcher3/util/r;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    :try_start_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p1, v2, :cond_22

    const-wide/16 p1, 0x5

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    goto :goto_31

    :cond_22
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_2e

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    goto :goto_31

    :cond_2e
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_31} :catch_49
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_31} :catch_49
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_31} :catch_33

    :goto_31
    const/4 p0, 0x1

    return p0

    :catch_33
    move-exception p1

    const-string p2, "executeBlock: task run timeout e:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :catch_49
    move-exception p1

    const-string p2, "executeBlock: task run exception e:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/LooperExecutor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public isShutdown()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isTerminated()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setThreadPriority(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getThread()Ljava/lang/Thread;

    move-result-object p0

    check-cast p0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    invoke-static {p0, p1}, Landroid/os/Process;->setThreadPriority(II)V

    return-void
.end method

.method public shutdown()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
