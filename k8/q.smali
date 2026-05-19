.class public final Lk8/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk8/q$c;,
        Lk8/q$a;,
        Lk8/q$b;
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public final c:I

.field public final d:Lk8/g;

.field public final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Le8/q;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Lk8/q$b;

.field public final h:Lk8/q$a;

.field public final i:Lk8/q$c;

.field public final j:Lk8/q$c;

.field public k:Lk8/b;


# direct methods
.method public constructor <init>(ILk8/g;ZZLe8/q;)V
    .registers 9
    .param p5  # Le8/q;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk8/q;->a:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lk8/q;->e:Ljava/util/Deque;

    new-instance v1, Lk8/q$c;

    invoke-direct {v1, p0}, Lk8/q$c;-><init>(Lk8/q;)V

    iput-object v1, p0, Lk8/q;->i:Lk8/q$c;

    new-instance v1, Lk8/q$c;

    invoke-direct {v1, p0}, Lk8/q$c;-><init>(Lk8/q;)V

    iput-object v1, p0, Lk8/q;->j:Lk8/q$c;

    const/4 v1, 0x0

    iput-object v1, p0, Lk8/q;->k:Lk8/b;

    const-string v1, "connection == null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Lk8/q;->c:I

    iput-object p2, p0, Lk8/q;->d:Lk8/g;

    iget-object p1, p2, Lk8/g;->t:Lk8/u;

    invoke-virtual {p1}, Lk8/u;->a()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lk8/q;->b:J

    new-instance p1, Lk8/q$b;

    iget-object p2, p2, Lk8/g;->s:Lk8/u;

    invoke-virtual {p2}, Lk8/u;->a()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Lk8/q$b;-><init>(Lk8/q;J)V

    iput-object p1, p0, Lk8/q;->g:Lk8/q$b;

    new-instance p2, Lk8/q$a;

    invoke-direct {p2, p0}, Lk8/q$a;-><init>(Lk8/q;)V

    iput-object p2, p0, Lk8/q;->h:Lk8/q$a;

    iput-boolean p4, p1, Lk8/q$b;->e:Z

    iput-boolean p3, p2, Lk8/q$a;->c:Z

    if-eqz p5, :cond_4f

    invoke-virtual {v0, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4f
    invoke-virtual {p0}, Lk8/q;->g()Z

    move-result p1

    if-eqz p1, :cond_60

    if-nez p5, :cond_58

    goto :goto_60

    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    :goto_60
    invoke-virtual {p0}, Lk8/q;->g()Z

    move-result p0

    if-nez p0, :cond_71

    if-eqz p5, :cond_69

    goto :goto_71

    :cond_69
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "remotely-initiated streams should have headers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    :goto_71
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk8/q;->g:Lk8/q$b;

    iget-boolean v1, v0, Lk8/q$b;->e:Z

    if-nez v1, :cond_17

    iget-boolean v0, v0, Lk8/q$b;->d:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lk8/q;->h:Lk8/q$a;

    iget-boolean v1, v0, Lk8/q$a;->c:Z

    if-nez v1, :cond_15

    iget-boolean v0, v0, Lk8/q$a;->b:Z

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p0}, Lk8/q;->h()Z

    move-result v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    if-eqz v0, :cond_25

    sget-object v0, Lk8/b;->g:Lk8/b;

    invoke-virtual {p0, v0}, Lk8/q;->c(Lk8/b;)V

    goto :goto_2e

    :cond_25
    if-nez v1, :cond_2e

    iget-object v0, p0, Lk8/q;->d:Lk8/g;

    iget p0, p0, Lk8/q;->c:I

    invoke-virtual {v0, p0}, Lk8/g;->g(I)Lk8/q;

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/q;->h:Lk8/q$a;

    iget-boolean v1, v0, Lk8/q$a;->b:Z

    if-nez v1, :cond_1f

    iget-boolean v0, v0, Lk8/q$a;->c:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lk8/q;->k:Lk8/b;

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Lk8/v;

    iget-object p0, p0, Lk8/q;->k:Lk8/b;

    invoke-direct {v0, p0}, Lk8/v;-><init>(Lk8/b;)V

    throw v0

    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lk8/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lk8/q;->d(Lk8/b;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lk8/q;->d:Lk8/g;

    iget p0, p0, Lk8/q;->c:I

    iget-object v0, v0, Lk8/g;->v:Lk8/r;

    invoke-virtual {v0, p0, p1}, Lk8/r;->g(ILk8/b;)V

    return-void
.end method

.method public final d(Lk8/b;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk8/q;->k:Lk8/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    iget-object v0, p0, Lk8/q;->g:Lk8/q$b;

    iget-boolean v0, v0, Lk8/q$b;->e:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lk8/q;->h:Lk8/q$a;

    iget-boolean v0, v0, Lk8/q$a;->c:Z

    if-eqz v0, :cond_16

    monitor-exit p0

    return v1

    :cond_16
    iput-object p1, p0, Lk8/q;->k:Lk8/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    iget-object p1, p0, Lk8/q;->d:Lk8/g;

    iget p0, p0, Lk8/q;->c:I

    invoke-virtual {p1, p0}, Lk8/g;->g(I)Lk8/q;

    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public e(Lk8/b;)V
    .registers 3

    invoke-virtual {p0, p1}, Lk8/q;->d(Lk8/b;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lk8/q;->d:Lk8/g;

    iget p0, p0, Lk8/q;->c:I

    invoke-virtual {v0, p0, p1}, Lk8/g;->l(ILk8/b;)V

    return-void
.end method

.method public f()Lokio/Sink;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk8/q;->f:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lk8/q;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    iget-object p0, p0, Lk8/q;->h:Lk8/q$a;

    return-object p0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public g()Z
    .registers 4

    iget v0, p0, Lk8/q;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    iget-object p0, p0, Lk8/q;->d:Lk8/g;

    iget-boolean p0, p0, Lk8/g;->a:Z

    if-ne p0, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method public declared-synchronized h()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk8/q;->k:Lk8/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lk8/q;->g:Lk8/q$b;

    iget-boolean v2, v0, Lk8/q$b;->e:Z

    if-nez v2, :cond_12

    iget-boolean v0, v0, Lk8/q$b;->d:Z

    if-eqz v0, :cond_22

    :cond_12
    iget-object v0, p0, Lk8/q;->h:Lk8/q$a;

    iget-boolean v2, v0, Lk8/q$a;->c:Z

    if-nez v2, :cond_1c

    iget-boolean v0, v0, Lk8/q$a;->b:Z

    if-eqz v0, :cond_22

    :cond_1c
    iget-boolean v0, p0, Lk8/q;->f:Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_22

    monitor-exit p0

    return v1

    :cond_22
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk8/q;->g:Lk8/q$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lk8/q$b;->e:Z

    invoke-virtual {p0}, Lk8/q;->h()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    if-nez v0, :cond_17

    iget-object v0, p0, Lk8/q;->d:Lk8/g;

    iget p0, p0, Lk8/q;->c:I

    invoke-virtual {v0, p0}, Lk8/g;->g(I)Lk8/q;

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public j()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method
