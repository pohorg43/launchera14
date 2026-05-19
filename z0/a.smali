.class public final Lz0/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/a$b;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lw0/c;",
            "Lz0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lz0/q<",
            "*>;>;"
        }
    .end annotation
.end field

.field public d:Lz0/q$a;


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    new-instance v0, Lz0/a$a;

    invoke-direct {v0}, Lz0/a$a;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lz0/a;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lz0/a;->c:Ljava/lang/ref/ReferenceQueue;

    iput-boolean p1, p0, Lz0/a;->a:Z

    new-instance p1, Lz0/b;

    invoke-direct {p1, p0}, Lz0/b;-><init>(Lz0/a;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lw0/c;Lz0/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/c;",
            "Lz0/q<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lz0/a$b;

    iget-object v1, p0, Lz0/a;->c:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lz0/a;->a:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lz0/a$b;-><init>(Lw0/c;Lz0/q;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object p2, p0, Lz0/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz0/a$b;

    if-eqz p1, :cond_1a

    const/4 p2, 0x0

    iput-object p2, p1, Lz0/a$b;->c:Lz0/w;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lz0/a$b;)V
    .registers 9
    .param p1  # Lz0/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lz0/a;->b:Ljava/util/Map;

    iget-object v1, p1, Lz0/a$b;->a:Lw0/c;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lz0/a$b;->b:Z

    if-eqz v0, :cond_26

    iget-object v2, p1, Lz0/a$b;->c:Lz0/w;

    if-nez v2, :cond_11

    goto :goto_26

    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    new-instance v0, Lz0/q;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lz0/a$b;->a:Lw0/c;

    iget-object v6, p0, Lz0/a;->d:Lz0/q$a;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lz0/q;-><init>(Lz0/w;ZZLw0/c;Lz0/q$a;)V

    iget-object p0, p0, Lz0/a;->d:Lz0/q$a;

    iget-object p1, p1, Lz0/a$b;->a:Lw0/c;

    invoke-interface {p0, p1, v0}, Lz0/q$a;->a(Lw0/c;Lz0/q;)V

    return-void

    :cond_26
    :goto_26
    :try_start_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw p1
.end method
