.class public final Lk8/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk8/g$e;,
        Lk8/g$g;,
        Lk8/g$c;,
        Lk8/g$d;,
        Lk8/g$f;
    }
.end annotation


# static fields
.field public static final y:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Z

.field public final b:Lk8/g$e;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lk8/q;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Ljava/util/concurrent/ScheduledExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public final j:Lk8/t;

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:Lk8/u;

.field public final t:Lk8/u;

.field public final u:Ljava/net/Socket;

.field public final v:Lk8/r;

.field public final w:Lk8/g$g;

.field public final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-class v0, Lk8/g;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    sget-object v8, Lf8/c;->a:[B

    new-instance v8, Lf8/d;

    const-string v9, "OkHttp Http2Connection"

    invoke-direct {v8, v9, v1}, Lf8/d;-><init>(Ljava/lang/String;Z)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lk8/g;->y:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lk8/g$c;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lk8/g;->c:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lk8/g;->k:J

    iput-wide v2, v0, Lk8/g;->l:J

    iput-wide v2, v0, Lk8/g;->m:J

    iput-wide v2, v0, Lk8/g;->n:J

    iput-wide v2, v0, Lk8/g;->o:J

    iput-wide v2, v0, Lk8/g;->p:J

    iput-wide v2, v0, Lk8/g;->q:J

    new-instance v2, Lk8/u;

    invoke-direct {v2}, Lk8/u;-><init>()V

    iput-object v2, v0, Lk8/g;->s:Lk8/u;

    new-instance v2, Lk8/u;

    invoke-direct {v2}, Lk8/u;-><init>()V

    iput-object v2, v0, Lk8/g;->t:Lk8/u;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lk8/g;->x:Ljava/util/Set;

    sget-object v3, Lk8/t;->a:Lk8/t;

    iput-object v3, v0, Lk8/g;->j:Lk8/t;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lk8/g;->a:Z

    iget-object v4, v1, Lk8/g$c;->e:Lk8/g$e;

    iput-object v4, v0, Lk8/g;->b:Lk8/g$e;

    iput v3, v0, Lk8/g;->f:I

    const/4 v4, 0x3

    iput v4, v0, Lk8/g;->f:I

    const/4 v4, 0x7

    iget-object v5, v0, Lk8/g;->s:Lk8/u;

    const/high16 v6, 0x1000000

    invoke-virtual {v5, v4, v6}, Lk8/u;->b(II)Lk8/u;

    iget-object v5, v1, Lk8/g$c;->b:Ljava/lang/String;

    iput-object v5, v0, Lk8/g;->d:Ljava/lang/String;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v7, v13

    const-string v8, "OkHttp %s Writer"

    invoke-static {v8, v7}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lf8/d;

    invoke-direct {v8, v7, v13}, Lf8/d;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v6, v3, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v6, v0, Lk8/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget v7, v1, Lk8/g$c;->f:I

    if-eqz v7, :cond_78

    new-instance v7, Lk8/g$d;

    invoke-direct {v7, v0}, Lk8/g$d;-><init>(Lk8/g;)V

    iget v8, v1, Lk8/g$c;->f:I

    int-to-long v10, v8

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v10

    invoke-virtual/range {v6 .. v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_78
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-wide/16 v17, 0x3c

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v20, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v13

    const-string v5, "OkHttp %s Push Observer"

    invoke-static {v5, v7}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lf8/d;

    invoke-direct {v7, v5, v3}, Lf8/d;-><init>(Ljava/lang/String;Z)V

    move-object v14, v6

    move-object/from16 v21, v7

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v6, v0, Lk8/g;->i:Ljava/util/concurrent/ExecutorService;

    const v5, 0xffff

    invoke-virtual {v2, v4, v5}, Lk8/u;->b(II)Lk8/u;

    const/4 v4, 0x5

    const/16 v5, 0x4000

    invoke-virtual {v2, v4, v5}, Lk8/u;->b(II)Lk8/u;

    invoke-virtual {v2}, Lk8/u;->a()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lk8/g;->r:J

    iget-object v2, v1, Lk8/g$c;->a:Ljava/net/Socket;

    iput-object v2, v0, Lk8/g;->u:Ljava/net/Socket;

    new-instance v2, Lk8/r;

    iget-object v4, v1, Lk8/g$c;->d:Lokio/BufferedSink;

    invoke-direct {v2, v4, v3}, Lk8/r;-><init>(Lokio/BufferedSink;Z)V

    iput-object v2, v0, Lk8/g;->v:Lk8/r;

    new-instance v2, Lk8/g$g;

    new-instance v4, Lk8/p;

    iget-object v1, v1, Lk8/g$c;->c:Lokio/BufferedSource;

    invoke-direct {v4, v1, v3}, Lk8/p;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v2, v0, v4}, Lk8/g$g;-><init>(Lk8/g;Lk8/p;)V

    iput-object v2, v0, Lk8/g;->w:Lk8/g$g;

    return-void
.end method

.method public static a(Lk8/g;)V
    .registers 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    sget-object v0, Lk8/b;->c:Lk8/b;

    invoke-virtual {p0, v0, v0}, Lk8/g;->b(Lk8/b;Lk8/b;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method


# virtual methods
.method public b(Lk8/b;Lk8/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lk8/g;->h(Lk8/b;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    move-object p1, v0

    goto :goto_7

    :catch_6
    move-exception p1

    :goto_7
    monitor-enter p0

    :try_start_8
    iget-object v1, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v0, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lk8/q;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk8/q;

    iget-object v1, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_5c

    if-eqz v0, :cond_3d

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2

    :try_start_32
    invoke-virtual {v3, p2}, Lk8/q;->c(Lk8/b;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v3

    if-eqz p1, :cond_3a

    move-object p1, v3

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3d
    :try_start_3d
    iget-object p2, p0, Lk8/g;->v:Lk8/r;

    invoke-virtual {p2}, Lk8/r;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p2

    if-nez p1, :cond_47

    move-object p1, p2

    :cond_47
    :goto_47
    :try_start_47
    iget-object p2, p0, Lk8/g;->u:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception p1

    :goto_4e
    iget-object p2, p0, Lk8/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object p0, p0, Lk8/g;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_5b

    return-void

    :cond_5b
    throw p1

    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public declared-synchronized c(I)Lk8/q;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk8/q;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lk8/b;->b:Lk8/b;

    sget-object v1, Lk8/b;->g:Lk8/b;

    invoke-virtual {p0, v0, v1}, Lk8/g;->b(Lk8/b;Lk8/b;)V

    return-void
.end method

.method public declared-synchronized d()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk8/g;->t:Lk8/u;

    const v1, 0x7fffffff

    iget v2, v0, Lk8/u;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_11

    iget-object v0, v0, Lk8/u;->b:[I

    const/4 v1, 0x4

    aget v1, v0, v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return v1

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lf8/b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/g;->g:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lk8/g;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(I)Z
    .registers 2

    const/4 p0, 0x1

    if-eqz p1, :cond_7

    and-int/2addr p1, p0

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public declared-synchronized g(I)Lk8/q;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk8/q;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Lk8/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/g;->v:Lk8/r;

    monitor-enter v0

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    :try_start_4
    iget-boolean v1, p0, Lk8/g;->g:Z

    if-eqz v1, :cond_b

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lk8/g;->g:Z

    iget v1, p0, Lk8/g;->e:I

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    :try_start_11
    iget-object p0, p0, Lk8/g;->v:Lk8/r;

    sget-object v2, Lf8/c;->a:[B

    invoke-virtual {p0, v1, p1, v2}, Lk8/r;->d(ILk8/b;[B)V

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public declared-synchronized i(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lk8/g;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lk8/g;->q:J

    iget-object p1, p0, Lk8/g;->s:Lk8/u;

    invoke-virtual {p1}, Lk8/u;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_1d

    const/4 p1, 0x0

    iget-wide v0, p0, Lk8/g;->q:J

    invoke-virtual {p0, p1, v0, v1}, Lk8/g;->m(IJ)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lk8/g;->q:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j(IZLokio/Buffer;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_d

    iget-object p0, p0, Lk8/g;->v:Lk8/r;

    invoke-virtual {p0, p2, p1, p3, v3}, Lk8/r;->b(ZILokio/Buffer;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v2, p4, v0

    if-lez v2, :cond_65

    monitor-enter p0

    :goto_12
    :try_start_12
    iget-wide v4, p0, Lk8/g;->r:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_30

    iget-object v2, p0, Lk8/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    :cond_28
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_30} :catch_56
    .catchall {:try_start_12 .. :try_end_30} :catchall_54

    :cond_30
    :try_start_30
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lk8/g;->v:Lk8/r;

    iget v4, v4, Lk8/r;->d:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lk8/g;->r:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lk8/g;->r:J

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_54

    sub-long/2addr p4, v6

    iget-object v4, p0, Lk8/g;->v:Lk8/r;

    if-eqz p2, :cond_4f

    cmp-long v5, p4, v0

    if-nez v5, :cond_4f

    const/4 v5, 0x1

    goto :goto_50

    :cond_4f
    move v5, v3

    :goto_50
    invoke-virtual {v4, v5, p1, p3, v2}, Lk8/r;->b(ZILokio/Buffer;I)V

    goto :goto_d

    :catchall_54
    move-exception p1

    goto :goto_63

    :catch_56
    :try_start_56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_54

    throw p1

    :cond_65
    return-void
.end method

.method public k(ZII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lk8/g;->v:Lk8/r;

    invoke-virtual {v0, p1, p2, p3}, Lk8/r;->f(ZII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    :catch_6
    :try_start_6
    sget-object p1, Lk8/b;->c:Lk8/b;

    invoke-virtual {p0, p1, p1}, Lk8/g;->b(Lk8/b;Lk8/b;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_b

    :catch_b
    :goto_b
    return-void
.end method

.method public l(ILk8/b;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lk8/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lk8/g$a;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lk8/g;->d:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lk8/g$a;-><init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILk8/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method public m(IJ)V
    .registers 13

    :try_start_0
    iget-object v0, p0, Lk8/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lk8/g$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lk8/g;->d:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lk8/g$b;-><init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
