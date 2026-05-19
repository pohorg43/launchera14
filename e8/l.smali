.class public final Le8/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Le8/w$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Le8/w$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Le8/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Le8/l;->b:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Le8/l;->c:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Le8/l;->d:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public a(Le8/w$b;)V
    .registers 3

    iget-object v0, p0, Le8/l;->c:Ljava/util/Deque;

    monitor-enter p0

    :try_start_3
    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    invoke-virtual {p0}, Le8/l;->b()Z

    return-void

    :cond_e
    :try_start_e
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Call wasn\'t in-flight!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final b()Z
    .registers 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Le8/l;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/w$b;

    iget-object v3, p0, Le8/l;->c:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    const/16 v4, 0x40

    if-lt v3, v4, :cond_23

    goto :goto_37

    :cond_23
    invoke-virtual {p0, v2}, Le8/l;->c(Le8/w$b;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2b

    goto :goto_c

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Le8/l;->c:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_37
    :goto_37
    monitor-enter p0
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_bf

    :try_start_38
    iget-object v1, p0, Le8/l;->c:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object v2, p0, Le8/l;->d:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_bc

    add-int/2addr v1, v2

    :try_start_45
    monitor-exit p0

    const/4 v2, 0x0

    if-lez v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_bf

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_52
    if-ge v4, v3, :cond_bb

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le8/w$b;

    monitor-enter p0

    :try_start_5b
    iget-object v6, p0, Le8/l;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v6, :cond_7d

    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const-wide/16 v10, 0x3c

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v13, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v13}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v7, "OkHttp Dispatcher"

    sget-object v14, Lf8/c;->a:[B

    new-instance v14, Lf8/d;

    invoke-direct {v14, v7, v2}, Lf8/d;-><init>(Ljava/lang/String;Z)V

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v6, p0, Le8/l;->a:Ljava/util/concurrent/ExecutorService;

    :cond_7d
    iget-object v6, p0, Le8/l;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_7f
    .catchall {:try_start_5b .. :try_end_7f} :catchall_b8

    monitor-exit p0

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_83
    invoke-interface {v6, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_86
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_83 .. :try_end_86} :catch_89
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_ab

    :catchall_87
    move-exception p0

    goto :goto_ae

    :catch_89
    move-exception v6

    :try_start_8a
    new-instance v7, Ljava/io/InterruptedIOException;

    const-string v8, "executor rejected"

    invoke-direct {v7, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object v6, v5, Le8/w$b;->c:Le8/w;

    iget-object v6, v6, Le8/w;->d:Le8/n;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Le8/w$b;->b:Le8/e;

    iget-object v8, v5, Le8/w$b;->c:Le8/w;

    invoke-interface {v6, v8, v7}, Le8/e;->onFailure(Le8/d;Ljava/io/IOException;)V
    :try_end_a2
    .catchall {:try_start_8a .. :try_end_a2} :catchall_87

    iget-object v6, v5, Le8/w$b;->c:Le8/w;

    iget-object v6, v6, Le8/w;->a:Le8/u;

    iget-object v6, v6, Le8/u;->a:Le8/l;

    invoke-virtual {v6, v5}, Le8/l;->a(Le8/w$b;)V

    :goto_ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :goto_ae
    iget-object v0, v5, Le8/w$b;->c:Le8/w;

    iget-object v0, v0, Le8/w;->a:Le8/u;

    iget-object v0, v0, Le8/u;->a:Le8/l;

    invoke-virtual {v0, v5}, Le8/l;->a(Le8/w$b;)V

    throw p0

    :catchall_b8
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_bb
    return v1

    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit p0

    throw v0

    :catchall_bf
    move-exception v0

    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_bf

    throw v0
.end method

.method public final c(Le8/w$b;)I
    .registers 5

    iget-object p0, p0, Le8/l;->c:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le8/w$b;

    iget-object v1, v1, Le8/w$b;->c:Le8/w;

    iget-boolean v2, v1, Le8/w;->f:Z

    if-eqz v2, :cond_1a

    goto :goto_7

    :cond_1a
    iget-object v1, v1, Le8/w;->e:Le8/x;

    iget-object v1, v1, Le8/x;->a:Le8/r;

    iget-object v1, v1, Le8/r;->d:Ljava/lang/String;

    iget-object v2, p1, Le8/w$b;->c:Le8/w;

    iget-object v2, v2, Le8/w;->e:Le8/x;

    iget-object v2, v2, Le8/x;->a:Le8/r;

    iget-object v2, v2, Le8/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_31
    return v0
.end method
