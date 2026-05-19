.class public Lk8/n;
.super Lf8/b;
.source ""


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lk8/u;

.field public final synthetic d:Lk8/g$g;


# direct methods
.method public varargs constructor <init>(Lk8/g$g;Ljava/lang/String;[Ljava/lang/Object;ZLk8/u;)V
    .registers 6

    iput-object p1, p0, Lk8/n;->d:Lk8/g$g;

    iput-boolean p4, p0, Lk8/n;->b:Z

    iput-object p5, p0, Lk8/n;->c:Lk8/u;

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 14

    iget-object v0, p0, Lk8/n;->d:Lk8/g$g;

    iget-boolean v1, p0, Lk8/n;->b:Z

    iget-object p0, p0, Lk8/n;->c:Lk8/u;

    iget-object v2, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v2, v2, Lk8/g;->v:Lk8/r;

    monitor-enter v2

    :try_start_b
    iget-object v3, v0, Lk8/g$g;->c:Lk8/g;

    monitor-enter v3
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_c5

    :try_start_e
    iget-object v4, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v4, v4, Lk8/g;->t:Lk8/u;

    invoke-virtual {v4}, Lk8/u;->a()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v1, :cond_24

    iget-object v1, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v1, v1, Lk8/g;->t:Lk8/u;

    iput v5, v1, Lk8/u;->a:I

    iget-object v1, v1, Lk8/u;->b:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    :cond_24
    iget-object v1, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v1, v1, Lk8/g;->t:Lk8/u;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v5

    :goto_2c
    const/16 v7, 0xa

    const/4 v8, 0x1

    if-ge v6, v7, :cond_47

    shl-int v7, v8, v6

    iget v9, p0, Lk8/u;->a:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_39

    goto :goto_3a

    :cond_39
    move v8, v5

    :goto_3a
    if-nez v8, :cond_3d

    goto :goto_44

    :cond_3d
    iget-object v7, p0, Lk8/u;->b:[I

    aget v7, v7, v6

    invoke-virtual {v1, v6, v7}, Lk8/u;->b(II)Lk8/u;

    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_47
    iget-object p0, v0, Lk8/g$g;->c:Lk8/g;

    iget-object p0, p0, Lk8/g;->t:Lk8/u;

    invoke-virtual {p0}, Lk8/u;->a()I

    move-result p0

    const/4 v1, -0x1

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    if-eq p0, v1, :cond_7d

    if-eq p0, v4, :cond_7d

    sub-int/2addr p0, v4

    int-to-long v11, p0

    iget-object p0, v0, Lk8/g$g;->c:Lk8/g;

    iget-object p0, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7e

    iget-object p0, v0, Lk8/g$g;->c:Lk8/g;

    iget-object p0, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    iget-object v1, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v1, v1, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lk8/q;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, [Lk8/q;

    goto :goto_7e

    :cond_7d
    move-wide v11, v9

    :cond_7e
    :goto_7e
    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_e .. :try_end_7f} :catchall_c2

    :try_start_7f
    iget-object p0, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v1, p0, Lk8/g;->v:Lk8/r;

    iget-object p0, p0, Lk8/g;->t:Lk8/u;

    invoke-virtual {v1, p0}, Lk8/r;->a(Lk8/u;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_88} :catch_89
    .catchall {:try_start_7f .. :try_end_88} :catchall_c5

    goto :goto_8e

    :catch_89
    :try_start_89
    iget-object p0, v0, Lk8/g$g;->c:Lk8/g;

    invoke-static {p0}, Lk8/g;->a(Lk8/g;)V

    :goto_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_c5

    if-eqz v6, :cond_ab

    array-length p0, v6

    move v1, v5

    :goto_93
    if-ge v1, p0, :cond_ab

    aget-object v2, v6, v1

    monitor-enter v2

    :try_start_98
    iget-wide v3, v2, Lk8/q;->b:J

    add-long/2addr v3, v11

    iput-wide v3, v2, Lk8/q;->b:J

    cmp-long v3, v11, v9

    if-lez v3, :cond_a4

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_a4
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :catchall_a8
    move-exception p0

    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_98 .. :try_end_aa} :catchall_a8

    throw p0

    :cond_ab
    sget-object p0, Lk8/g;->y:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lk8/o;

    const-string v2, "OkHttp %s settings"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v4, v4, Lk8/g;->d:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {v1, v0, v2, v3}, Lk8/o;-><init>(Lk8/g$g;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_c2
    move-exception p0

    :try_start_c3
    monitor-exit v3
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw p0

    :catchall_c5
    move-exception p0

    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c5

    throw p0
.end method
