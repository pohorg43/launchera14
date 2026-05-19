.class public final Lk8/q$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lokio/Buffer;

.field public final b:Lokio/Buffer;

.field public final c:J

.field public d:Z

.field public e:Z

.field public final synthetic f:Lk8/q;


# direct methods
.method public constructor <init>(Lk8/q;J)V
    .registers 4

    iput-object p1, p0, Lk8/q$b;->f:Lk8/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lk8/q$b;->a:Lokio/Buffer;

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lk8/q$b;->b:Lokio/Buffer;

    iput-wide p2, p0, Lk8/q$b;->c:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

    iget-object p0, p0, Lk8/q$b;->f:Lk8/q;

    iget-object p0, p0, Lk8/q;->d:Lk8/g;

    invoke-virtual {p0, p1, p2}, Lk8/g;->i(J)V

    return-void
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/q$b;->f:Lk8/q;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lk8/q$b;->d:Z

    iget-object v1, p0, Lk8/q$b;->b:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    iget-object v3, p0, Lk8/q$b;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    iget-object v3, p0, Lk8/q$b;->f:Lk8/q;

    iget-object v3, v3, Lk8/q;->e:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, p0, Lk8/q$b;->f:Lk8/q;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v3, p0, Lk8/q$b;->f:Lk8/q;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_35

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2f

    invoke-virtual {p0, v1, v2}, Lk8/q$b;->a(J)V

    :cond_2f
    iget-object p0, p0, Lk8/q$b;->f:Lk8/q;

    invoke-virtual {p0}, Lk8/q;->a()V

    return-void

    :catchall_35
    move-exception p0

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_ad

    :goto_6
    const/4 v2, 0x0

    iget-object v3, p0, Lk8/q$b;->f:Lk8/q;

    monitor-enter v3

    :try_start_a
    iget-object v4, p0, Lk8/q$b;->f:Lk8/q;

    iget-object v4, v4, Lk8/q;->i:Lk8/q$c;

    invoke-virtual {v4}, Lokio/AsyncTimeout;->enter()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_aa

    :try_start_11
    iget-object v4, p0, Lk8/q$b;->f:Lk8/q;

    iget-object v5, v4, Lk8/q;->k:Lk8/b;

    if-eqz v5, :cond_18

    move-object v2, v5

    :cond_18
    iget-boolean v5, p0, Lk8/q$b;->d:Z

    if-nez v5, :cond_99

    iget-object v4, v4, Lk8/q;->e:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lk8/q$b;->f:Lk8/q;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    iget-object v4, p0, Lk8/q$b;->b:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v4, v4, v0

    const-wide/16 v5, -0x1

    if-lez v4, :cond_6b

    iget-object v4, p0, Lk8/q$b;->b:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v4, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    iget-object p3, p0, Lk8/q$b;->f:Lk8/q;

    iget-wide v7, p3, Lk8/q;->a:J

    add-long/2addr v7, p1

    iput-wide v7, p3, Lk8/q;->a:J

    if-nez v2, :cond_80

    iget-object p3, p3, Lk8/q;->d:Lk8/g;

    iget-object p3, p3, Lk8/g;->s:Lk8/u;

    invoke-virtual {p3}, Lk8/u;->a()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v9, p3

    cmp-long p3, v7, v9

    if-ltz p3, :cond_80

    iget-object p3, p0, Lk8/q$b;->f:Lk8/q;

    iget-object v4, p3, Lk8/q;->d:Lk8/g;

    iget v7, p3, Lk8/q;->c:I

    iget-wide v8, p3, Lk8/q;->a:J

    invoke-virtual {v4, v7, v8, v9}, Lk8/g;->m(IJ)V

    iget-object p3, p0, Lk8/q$b;->f:Lk8/q;

    iput-wide v0, p3, Lk8/q;->a:J

    goto :goto_80

    :cond_6b
    iget-boolean v4, p0, Lk8/q$b;->e:Z

    if-nez v4, :cond_7f

    if-nez v2, :cond_7f

    iget-object v2, p0, Lk8/q$b;->f:Lk8/q;

    invoke-virtual {v2}, Lk8/q;->j()V
    :try_end_76
    .catchall {:try_start_11 .. :try_end_76} :catchall_a1

    :try_start_76
    iget-object v2, p0, Lk8/q$b;->f:Lk8/q;

    iget-object v2, v2, Lk8/q;->i:Lk8/q$c;

    invoke-virtual {v2}, Lk8/q$c;->a()V

    monitor-exit v3

    goto :goto_6

    :cond_7f
    move-wide p1, v5

    :cond_80
    :goto_80
    iget-object p3, p0, Lk8/q$b;->f:Lk8/q;

    iget-object p3, p3, Lk8/q;->i:Lk8/q$c;

    invoke-virtual {p3}, Lk8/q$c;->a()V

    monitor-exit v3
    :try_end_88
    .catchall {:try_start_76 .. :try_end_88} :catchall_aa

    cmp-long p3, p1, v5

    if-eqz p3, :cond_90

    invoke-virtual {p0, p1, p2}, Lk8/q$b;->a(J)V

    return-wide p1

    :cond_90
    if-nez v2, :cond_93

    return-wide v5

    :cond_93
    new-instance p0, Lk8/v;

    invoke-direct {p0, v2}, Lk8/v;-><init>(Lk8/b;)V

    throw p0

    :cond_99
    :try_start_99
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p1

    :try_start_a2
    iget-object p0, p0, Lk8/q$b;->f:Lk8/q;

    iget-object p0, p0, Lk8/q;->i:Lk8/q$c;

    invoke-virtual {p0}, Lk8/q$c;->a()V

    throw p1

    :catchall_aa
    move-exception p0

    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_aa

    throw p0

    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount < 0: "

    invoke-static {p1, p2, p3}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lk8/q$b;->f:Lk8/q;

    iget-object p0, p0, Lk8/q;->i:Lk8/q$c;

    return-object p0
.end method
