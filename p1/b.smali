.class public final Lp1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp1/e;
.implements Lp1/d;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lp1/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile c:Lp1/d;

.field public volatile d:Lp1/d;

.field public e:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public f:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lp1/e;)V
    .registers 4
    .param p2  # Lp1/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lp1/b;->e:I

    iput v0, p0, Lp1/b;->f:I

    iput-object p1, p0, Lp1/b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lp1/b;->b:Lp1/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lp1/b;->c:Lp1/d;

    invoke-interface {v1}, Lp1/d;->a()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object p0, p0, Lp1/b;->d:Lp1/d;

    invoke-interface {p0}, Lp1/d;->a()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lp1/b;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_10

    iput v3, p0, Lp1/b;->e:I

    iget-object v1, p0, Lp1/b;->c:Lp1/d;

    invoke-interface {v1}, Lp1/d;->b()V

    :cond_10
    iget v1, p0, Lp1/b;->f:I

    if-ne v1, v2, :cond_1b

    iput v3, p0, Lp1/b;->f:I

    iget-object p0, p0, Lp1/b;->d:Lp1/d;

    invoke-interface {p0}, Lp1/d;->b()V

    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public c(Lp1/d;)Z
    .registers 6

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lp1/b;->b:Lp1/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    invoke-interface {v1, p0}, Lp1/e;->c(Lp1/d;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    move v1, v2

    goto :goto_13

    :cond_12
    :goto_12
    move v1, v3

    :goto_13
    if-eqz v1, :cond_1c

    invoke-virtual {p0, p1}, Lp1/b;->l(Lp1/d;)Z

    move-result p0

    if-eqz p0, :cond_1c

    move v2, v3

    :cond_1c
    monitor-exit v0

    return v2

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public clear()V
    .registers 4

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_4
    iput v1, p0, Lp1/b;->e:I

    iget-object v2, p0, Lp1/b;->c:Lp1/d;

    invoke-interface {v2}, Lp1/d;->clear()V

    iget v2, p0, Lp1/b;->f:I

    if-eq v2, v1, :cond_16

    iput v1, p0, Lp1/b;->f:I

    iget-object p0, p0, Lp1/b;->d:Lp1/d;

    invoke-interface {p0}, Lp1/d;->clear()V

    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public d()Z
    .registers 4

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lp1/b;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    iget p0, p0, Lp1/b;->f:I

    if-ne p0, v2, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public e()Z
    .registers 4

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lp1/b;->e:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f

    iget p0, p0, Lp1/b;->f:I

    if-ne p0, v2, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public f(Lp1/d;)Z
    .registers 6

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lp1/b;->b:Lp1/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    invoke-interface {v1, p0}, Lp1/e;->f(Lp1/d;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    move v1, v2

    goto :goto_13

    :cond_12
    :goto_12
    move v1, v3

    :goto_13
    if-eqz v1, :cond_1c

    invoke-virtual {p0, p1}, Lp1/b;->l(Lp1/d;)Z

    move-result p0

    if-eqz p0, :cond_1c

    move v2, v3

    :cond_1c
    monitor-exit v0

    return v2

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public g(Lp1/d;)V
    .registers 4

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lp1/b;->d:Lp1/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    if-nez p1, :cond_1c

    iput v1, p0, Lp1/b;->e:I

    iget p1, p0, Lp1/b;->f:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1a

    iput v1, p0, Lp1/b;->f:I

    iget-object p0, p0, Lp1/b;->d:Lp1/d;

    invoke-interface {p0}, Lp1/d;->j()V

    :cond_1a
    monitor-exit v0

    return-void

    :cond_1c
    iput v1, p0, Lp1/b;->f:I

    iget-object p1, p0, Lp1/b;->b:Lp1/e;

    if-eqz p1, :cond_25

    invoke-interface {p1, p0}, Lp1/e;->g(Lp1/d;)V

    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public getRoot()Lp1/e;
    .registers 3

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lp1/b;->b:Lp1/e;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lp1/e;->getRoot()Lp1/e;

    move-result-object p0

    :cond_b
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public h(Lp1/d;)Z
    .registers 5

    instance-of v0, p1, Lp1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lp1/b;

    iget-object v0, p0, Lp1/b;->c:Lp1/d;

    iget-object v2, p1, Lp1/b;->c:Lp1/d;

    invoke-interface {v0, v2}, Lp1/d;->h(Lp1/d;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lp1/b;->d:Lp1/d;

    iget-object p1, p1, Lp1/b;->d:Lp1/d;

    invoke-interface {p0, p1}, Lp1/d;->h(Lp1/d;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public i(Lp1/d;)Z
    .registers 6

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lp1/b;->b:Lp1/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    invoke-interface {v1, p0}, Lp1/e;->i(Lp1/d;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    move v1, v2

    goto :goto_13

    :cond_12
    :goto_12
    move v1, v3

    :goto_13
    if-eqz v1, :cond_1c

    invoke-virtual {p0, p1}, Lp1/b;->l(Lp1/d;)Z

    move-result p0

    if-eqz p0, :cond_1c

    move v2, v3

    :cond_1c
    monitor-exit v0

    return v2

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public isRunning()Z
    .registers 4

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lp1/b;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    iget p0, p0, Lp1/b;->f:I

    if-ne p0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :cond_e
    :goto_e
    monitor-exit v0

    return v2

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public j()V
    .registers 4

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lp1/b;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    iput v2, p0, Lp1/b;->e:I

    iget-object p0, p0, Lp1/b;->c:Lp1/d;

    invoke-interface {p0}, Lp1/d;->j()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public k(Lp1/d;)V
    .registers 5

    iget-object v0, p0, Lp1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lp1/b;->c:Lp1/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_f

    iput v2, p0, Lp1/b;->e:I

    goto :goto_19

    :cond_f
    iget-object v1, p0, Lp1/b;->d:Lp1/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iput v2, p0, Lp1/b;->f:I

    :cond_19
    :goto_19
    iget-object p1, p0, Lp1/b;->b:Lp1/e;

    if-eqz p1, :cond_20

    invoke-interface {p1, p0}, Lp1/e;->k(Lp1/d;)V

    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final l(Lp1/d;)Z
    .registers 4
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, Lp1/b;->c:Lp1/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lp1/b;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    iget-object p0, p0, Lp1/b;->d:Lp1/d;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method
