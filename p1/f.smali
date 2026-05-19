.class public Lp1/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp1/c;
.implements Lp1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp1/c<",
        "TR;>;",
        "Lp1/g<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final i:Lp1/f$a;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public d:Lp1/d;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public f:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public g:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public h:Lz0/r;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp1/f$a;

    invoke-direct {v0}, Lp1/f$a;-><init>()V

    sput-object v0, Lp1/f;->i:Lp1/f$a;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp1/f;->a:I

    iput p2, p0, Lp1/f;->b:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lp1/f;->isDone()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lt1/f;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on a background thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    iget-boolean v0, p0, Lp1/f;->e:Z

    if-nez v0, :cond_8b

    iget-boolean v0, p0, Lp1/f;->g:Z

    if-nez v0, :cond_83

    iget-boolean v0, p0, Lp1/f;->f:Z

    if-eqz v0, :cond_26

    iget-object p1, p0, Lp1/f;->c:Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_91

    monitor-exit p0

    return-object p1

    :cond_26
    const-wide/16 v0, 0x0

    if-nez p1, :cond_2e

    :try_start_2a
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_53

    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    :goto_3f
    invoke-virtual {p0}, Lp1/f;->isDone()Z

    move-result p1

    if-nez p1, :cond_53

    cmp-long p1, v0, v2

    if-gez p1, :cond_53

    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_3f

    :cond_53
    :goto_53
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_7d

    iget-boolean p1, p0, Lp1/f;->g:Z

    if-nez p1, :cond_75

    iget-boolean p1, p0, Lp1/f;->e:Z

    if-nez p1, :cond_6f

    iget-boolean p1, p0, Lp1/f;->f:Z

    if-eqz p1, :cond_69

    iget-object p1, p0, Lp1/f;->c:Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_2a .. :try_end_67} :catchall_91

    monitor-exit p0

    return-object p1

    :cond_69
    :try_start_69
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_6f
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    :cond_75
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lp1/f;->h:Lz0/r;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_7d
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_83
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lp1/f;->h:Lz0/r;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_8b
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_91
    .catchall {:try_start_69 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cancel(Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lp1/f;->isDone()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp1/f;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    iget-object p1, p0, Lp1/f;->d:Lp1/d;

    iput-object v1, p0, Lp1/f;->d:Lp1/d;

    move-object v1, p1

    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Lp1/d;->clear()V

    :cond_1e
    return v0

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lp1/f;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .param p3  # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp1/f;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getRequest()Lp1/d;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp1/f;->d:Lp1/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize(Lq1/g;)V
    .registers 3
    .param p1  # Lq1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lp1/f;->a:I

    iget p0, p0, Lp1/f;->b:I

    invoke-interface {p1, v0, p0}, Lq1/g;->c(II)V

    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lp1/f;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lp1/f;->e:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lp1/f;->f:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lp1/f;->g:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public declared-synchronized onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onLoadFailed(Lz0/r;Ljava/lang/Object;Lq1/h;Z)Z
    .registers 5
    .param p1  # Lz0/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/r;",
            "Ljava/lang/Object;",
            "Lq1/h<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    :try_start_2
    iput-boolean p2, p0, Lp1/f;->g:Z

    iput-object p1, p0, Lp1/f;->h:Lz0/r;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Lr1/b;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lr1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lr1/b<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lq1/h;Lcom/bumptech/glide/load/a;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lq1/h<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    :try_start_2
    iput-boolean p2, p0, Lp1/f;->f:Z

    iput-object p1, p0, Lp1/f;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public removeCallback(Lq1/g;)V
    .registers 2
    .param p1  # Lq1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public declared-synchronized setRequest(Lp1/d;)V
    .registers 2
    .param p1  # Lp1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lp1/f;->d:Lp1/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
