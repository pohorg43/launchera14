.class public final Lk8/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lokio/Buffer;

.field public b:Z

.field public c:Z

.field public final synthetic d:Lk8/q;


# direct methods
.method public constructor <init>(Lk8/q;)V
    .registers 2

    iput-object p1, p0, Lk8/q$a;->d:Lk8/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lk8/q$a;->a:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/q$a;->d:Lk8/q;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lk8/q$a;->d:Lk8/q;

    iget-object v1, v1, Lk8/q;->j:Lk8/q$c;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_7e

    :goto_a
    :try_start_a
    iget-object v1, p0, Lk8/q$a;->d:Lk8/q;

    iget-wide v2, v1, Lk8/q;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_24

    iget-boolean v2, p0, Lk8/q$a;->c:Z

    if-nez v2, :cond_24

    iget-boolean v2, p0, Lk8/q$a;->b:Z

    if-nez v2, :cond_24

    iget-object v2, v1, Lk8/q;->k:Lk8/b;

    if-nez v2, :cond_24

    invoke-virtual {v1}, Lk8/q;->j()V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_75

    goto :goto_a

    :cond_24
    :try_start_24
    iget-object v1, v1, Lk8/q;->j:Lk8/q$c;

    invoke-virtual {v1}, Lk8/q$c;->a()V

    iget-object v1, p0, Lk8/q$a;->d:Lk8/q;

    invoke-virtual {v1}, Lk8/q;->b()V

    iget-object v1, p0, Lk8/q$a;->d:Lk8/q;

    iget-wide v1, v1, Lk8/q;->b:J

    iget-object v3, p0, Lk8/q$a;->a:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lk8/q$a;->d:Lk8/q;

    iget-wide v2, v1, Lk8/q;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lk8/q;->b:J

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_7e

    iget-object v0, v1, Lk8/q;->j:Lk8/q$c;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_49
    iget-object v0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object v5, v0, Lk8/q;->d:Lk8/g;

    iget v6, v0, Lk8/q;->c:I

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lk8/q$a;->a:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_5d

    const/4 p1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    :goto_5e
    move v7, p1

    iget-object v8, p0, Lk8/q$a;->a:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lk8/g;->j(IZLokio/Buffer;J)V
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_6c

    iget-object p0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object p0, p0, Lk8/q;->j:Lk8/q$c;

    invoke-virtual {p0}, Lk8/q$c;->a()V

    return-void

    :catchall_6c
    move-exception p1

    iget-object p0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object p0, p0, Lk8/q;->j:Lk8/q$c;

    invoke-virtual {p0}, Lk8/q$c;->a()V

    throw p1

    :catchall_75
    move-exception p1

    :try_start_76
    iget-object p0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object p0, p0, Lk8/q;->j:Lk8/q$c;

    invoke-virtual {p0}, Lk8/q$c;->a()V

    throw p1

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/q$a;->d:Lk8/q;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lk8/q$a;->b:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_52

    iget-object v0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object v0, v0, Lk8/q;->h:Lk8/q$a;

    iget-boolean v0, v0, Lk8/q$a;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    iget-object v0, p0, Lk8/q$a;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2d

    :goto_1f
    iget-object v0, p0, Lk8/q$a;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_3a

    invoke-virtual {p0, v1}, Lk8/q$a;->a(Z)V

    goto :goto_1f

    :cond_2d
    iget-object v0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object v2, v0, Lk8/q;->d:Lk8/g;

    iget v3, v0, Lk8/q;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lk8/g;->j(IZLokio/Buffer;J)V

    :cond_3a
    iget-object v2, p0, Lk8/q$a;->d:Lk8/q;

    monitor-enter v2

    :try_start_3d
    iput-boolean v1, p0, Lk8/q$a;->b:Z

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4f

    iget-object v0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object v0, v0, Lk8/q;->d:Lk8/g;

    iget-object v0, v0, Lk8/g;->v:Lk8/r;

    invoke-virtual {v0}, Lk8/r;->flush()V

    iget-object p0, p0, Lk8/q$a;->d:Lk8/q;

    invoke-virtual {p0}, Lk8/q;->a()V

    return-void

    :catchall_4f
    move-exception p0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0

    :catchall_52
    move-exception p0

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/q$a;->d:Lk8/q;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lk8/q$a;->d:Lk8/q;

    invoke-virtual {v1}, Lk8/q;->b()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    :goto_9
    iget-object v0, p0, Lk8/q$a;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk8/q$a;->a(Z)V

    iget-object v0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object v0, v0, Lk8/q;->d:Lk8/g;

    iget-object v0, v0, Lk8/g;->v:Lk8/r;

    invoke-virtual {v0}, Lk8/r;->flush()V

    goto :goto_9

    :cond_23
    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lk8/q$a;->d:Lk8/q;

    iget-object p0, p0, Lk8/q;->j:Lk8/q$c;

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/q$a;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_5
    iget-object p1, p0, Lk8/q$a;->a:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_16

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lk8/q$a;->a(Z)V

    goto :goto_5

    :cond_16
    return-void
.end method
