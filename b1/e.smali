.class public Lb1/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb1/a;


# instance fields
.field public final a:Lb1/k;

.field public final b:Ljava/io/File;

.field public final c:J

.field public final d:Lb1/c;

.field public e:Lt0/a;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb1/c;

    invoke-direct {v0}, Lb1/c;-><init>()V

    iput-object v0, p0, Lb1/e;->d:Lb1/c;

    iput-object p1, p0, Lb1/e;->b:Ljava/io/File;

    iput-wide p2, p0, Lb1/e;->c:J

    new-instance p1, Lb1/k;

    invoke-direct {p1}, Lb1/k;-><init>()V

    iput-object p1, p0, Lb1/e;->a:Lb1/k;

    return-void
.end method


# virtual methods
.method public a(Lw0/c;Lb1/a$b;)V
    .registers 8

    iget-object v0, p0, Lb1/e;->a:Lb1/k;

    invoke-virtual {v0, p1}, Lb1/k;->a(Lw0/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb1/e;->d:Lb1/c;

    monitor-enter v1

    :try_start_9
    iget-object v2, v1, Lb1/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/c$a;

    if-nez v2, :cond_31

    iget-object v2, v1, Lb1/c;->b:Lb1/c$b;

    iget-object v3, v2, Lb1/c$b;->a:Ljava/util/Queue;

    monitor-enter v3
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_d5

    :try_start_18
    iget-object v2, v2, Lb1/c$b;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/c$a;

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_2e

    if-nez v2, :cond_28

    :try_start_23
    new-instance v2, Lb1/c$a;

    invoke-direct {v2}, Lb1/c$a;-><init>()V

    :cond_28
    iget-object v3, v1, Lb1/c;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_d5

    goto :goto_31

    :catchall_2e
    move-exception p0

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0

    :cond_31
    :goto_31
    iget v3, v2, Lb1/c$a;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lb1/c$a;->b:I

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_d5

    iget-object v1, v2, Lb1/c$a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_3d
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_3d .. :try_end_64} :catchall_ce

    :cond_64
    :try_start_64
    invoke-virtual {p0}, Lb1/e;->c()Lt0/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lt0/a;->g(Ljava/lang/String;)Lt0/a$e;

    move-result-object v1
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6c} :catch_bc
    .catchall {:try_start_64 .. :try_end_6c} :catchall_ce

    if-eqz v1, :cond_74

    :catch_6e
    :cond_6e
    :goto_6e
    iget-object p0, p0, Lb1/e;->d:Lb1/c;

    invoke-virtual {p0, v0}, Lb1/c;->a(Ljava/lang/String;)V

    return-void

    :cond_74
    :try_start_74
    invoke-virtual {p1, v0}, Lt0/a;->e(Ljava/lang/String;)Lt0/a$c;

    move-result-object p1
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_78} :catch_bc
    .catchall {:try_start_74 .. :try_end_78} :catchall_ce

    if-eqz p1, :cond_a5

    const/4 v1, 0x0

    :try_start_7b
    invoke-virtual {p1, v1}, Lt0/a$c;->b(I)Ljava/io/File;

    move-result-object v1

    check-cast p2, Lz0/f;

    iget-object v2, p2, Lz0/f;->a:Lw0/a;

    iget-object v3, p2, Lz0/f;->b:Ljava/lang/Object;

    iget-object p2, p2, Lz0/f;->c:Lw0/e;

    invoke-interface {v2, v3, v1, p2}, Lw0/a;->b(Ljava/lang/Object;Ljava/io/File;Lw0/e;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p1, Lt0/a$c;->d:Lt0/a;

    invoke-static {p2, p1, v4}, Lt0/a;->a(Lt0/a;Lt0/a$c;Z)V

    iput-boolean v4, p1, Lt0/a$c;->c:Z
    :try_end_94
    .catchall {:try_start_7b .. :try_end_94} :catchall_9c

    :cond_94
    :try_start_94
    iget-boolean p2, p1, Lt0/a$c;->c:Z
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_96} :catch_bc
    .catchall {:try_start_94 .. :try_end_96} :catchall_ce

    if-nez p2, :cond_6e

    :try_start_98
    invoke-virtual {p1}, Lt0/a$c;->a()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_6e
    .catchall {:try_start_98 .. :try_end_9b} :catchall_ce

    goto :goto_6e

    :catchall_9c
    move-exception p2

    :try_start_9d
    iget-boolean v1, p1, Lt0/a$c;->c:Z
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_9f} :catch_bc
    .catchall {:try_start_9d .. :try_end_9f} :catchall_ce

    if-nez v1, :cond_a4

    :try_start_a1
    invoke-virtual {p1}, Lt0/a$c;->a()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_ce

    :catch_a4
    :cond_a4
    :try_start_a4
    throw p2

    :cond_a5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Had two simultaneous puts for: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_bc} :catch_bc
    .catchall {:try_start_a4 .. :try_end_bc} :catchall_ce

    :catch_bc
    move-exception p1

    :try_start_bd
    const-string p2, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6e

    const-string p2, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_bd .. :try_end_cd} :catchall_ce

    goto :goto_6e

    :catchall_ce
    move-exception p1

    iget-object p0, p0, Lb1/e;->d:Lb1/c;

    invoke-virtual {p0, v0}, Lb1/c;->a(Ljava/lang/String;)V

    throw p1

    :catchall_d5
    move-exception p0

    :try_start_d6
    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw p0
.end method

.method public b(Lw0/c;)Ljava/io/File;
    .registers 6

    iget-object v0, p0, Lb1/e;->a:Lb1/k;

    invoke-virtual {v0, p1}, Lb1/k;->a(Lw0/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 p1, 0x0

    :try_start_2c
    invoke-virtual {p0}, Lb1/e;->c()Lt0/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lt0/a;->g(Ljava/lang/String;)Lt0/a$e;

    move-result-object p0

    if-eqz p0, :cond_4a

    const/4 v0, 0x0

    iget-object p0, p0, Lt0/a$e;->a:[Ljava/io/File;

    aget-object p0, p0, v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3b} :catch_3d

    move-object p1, p0

    goto :goto_4a

    :catch_3d
    move-exception p0

    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "Unable to get from disk cache"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    return-object p1
.end method

.method public final declared-synchronized c()Lt0/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lb1/e;->e:Lt0/a;

    if-nez v0, :cond_10

    iget-object v0, p0, Lb1/e;->b:Ljava/io/File;

    iget-wide v1, p0, Lb1/e;->c:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lt0/a;->i(Ljava/io/File;IIJ)Lt0/a;

    move-result-object v0

    iput-object v0, p0, Lb1/e;->e:Lt0/a;

    :cond_10
    iget-object v0, p0, Lb1/e;->e:Lt0/a;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lb1/e;->c()Lt0/a;

    move-result-object v0

    invoke-virtual {v0}, Lt0/a;->close()V

    iget-object v0, v0, Lt0/a;->a:Ljava/io/File;

    invoke-static {v0}, Lt0/c;->a(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_10
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_21

    :catchall_e
    move-exception v0

    goto :goto_26

    :catch_10
    move-exception v0

    :try_start_11
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache or disk cache cleared externally"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_e

    :cond_21
    :goto_21
    :try_start_21
    invoke-virtual {p0}, Lb1/e;->d()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2a

    monitor-exit p0

    return-void

    :goto_26
    :try_start_26
    invoke-virtual {p0}, Lb1/e;->d()V

    throw v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lb1/e;->e:Lt0/a;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
