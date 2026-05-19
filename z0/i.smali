.class public Lz0/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/g$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lu1/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/i$g;,
        Lz0/i$f;,
        Lz0/i$d;,
        Lz0/i$a;,
        Lz0/i$c;,
        Lz0/i$e;,
        Lz0/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz0/g$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lz0/i<",
        "*>;>;",
        "Lu1/a$d;"
    }
.end annotation


# instance fields
.field public A:Lcom/bumptech/glide/load/a;

.field public B:Lx0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/d<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile C:Lz0/g;

.field public volatile D:Z

.field public volatile E:Z

.field public final a:Lz0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lu1/d;

.field public final d:Lz0/i$d;

.field public final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lz0/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lz0/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/i$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Lz0/i$e;

.field public h:Lcom/bumptech/glide/d;

.field public i:Lw0/c;

.field public j:Lcom/bumptech/glide/e;

.field public k:Lz0/o;

.field public l:I

.field public m:I

.field public n:Lz0/k;

.field public o:Lw0/e;

.field public p:Lz0/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/i$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Lz0/i$g;

.field public s:Lz0/i$f;

.field public t:J

.field public u:Z

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Thread;

.field public x:Lw0/c;

.field public y:Lw0/c;

.field public z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lz0/i$d;Landroidx/core/util/Pools$Pool;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/i$d;",
            "Landroidx/core/util/Pools$Pool<",
            "Lz0/i<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/h;

    invoke-direct {v0}, Lz0/h;-><init>()V

    iput-object v0, p0, Lz0/i;->a:Lz0/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz0/i;->b:Ljava/util/List;

    new-instance v0, Lu1/d$b;

    invoke-direct {v0}, Lu1/d$b;-><init>()V

    iput-object v0, p0, Lz0/i;->c:Lu1/d;

    new-instance v0, Lz0/i$c;

    invoke-direct {v0}, Lz0/i$c;-><init>()V

    iput-object v0, p0, Lz0/i;->f:Lz0/i$c;

    new-instance v0, Lz0/i$e;

    invoke-direct {v0}, Lz0/i$e;-><init>()V

    iput-object v0, p0, Lz0/i;->g:Lz0/i$e;

    iput-object p1, p0, Lz0/i;->d:Lz0/i$d;

    iput-object p2, p0, Lz0/i;->e:Landroidx/core/util/Pools$Pool;

    return-void
.end method


# virtual methods
.method public a(Lw0/c;Ljava/lang/Exception;Lx0/d;Lcom/bumptech/glide/load/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/c;",
            "Ljava/lang/Exception;",
            "Lx0/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lx0/d;->b()V

    new-instance v0, Lz0/r;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lz0/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lx0/d;->a()Ljava/lang/Class;

    move-result-object p2

    iput-object p1, v0, Lz0/r;->b:Lw0/c;

    iput-object p4, v0, Lz0/r;->c:Lcom/bumptech/glide/load/a;

    iput-object p2, v0, Lz0/r;->d:Ljava/lang/Class;

    iget-object p1, p0, Lz0/i;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lz0/i;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_2d

    sget-object p1, Lz0/i$f;->b:Lz0/i$f;

    iput-object p1, p0, Lz0/i;->s:Lz0/i$f;

    iget-object p1, p0, Lz0/i;->p:Lz0/i$a;

    check-cast p1, Lz0/m;

    invoke-virtual {p1, p0}, Lz0/m;->i(Lz0/i;)V

    goto :goto_30

    :cond_2d
    invoke-virtual {p0}, Lz0/i;->n()V

    :goto_30
    return-void
.end method

.method public b(Lw0/c;Ljava/lang/Object;Lx0/d;Lcom/bumptech/glide/load/a;Lw0/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/c;",
            "Ljava/lang/Object;",
            "Lx0/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lw0/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lz0/i;->x:Lw0/c;

    iput-object p2, p0, Lz0/i;->z:Ljava/lang/Object;

    iput-object p3, p0, Lz0/i;->B:Lx0/d;

    iput-object p4, p0, Lz0/i;->A:Lcom/bumptech/glide/load/a;

    iput-object p5, p0, Lz0/i;->y:Lw0/c;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lz0/i;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1e

    sget-object p1, Lz0/i$f;->c:Lz0/i$f;

    iput-object p1, p0, Lz0/i;->s:Lz0/i$f;

    iget-object p1, p0, Lz0/i;->p:Lz0/i$a;

    check-cast p1, Lz0/m;

    invoke-virtual {p1, p0}, Lz0/m;->i(Lz0/i;)V

    goto :goto_21

    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lz0/i;->h()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    :goto_21
    return-void

    :catchall_22
    move-exception p0

    throw p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lz0/i;

    iget-object v0, p0, Lz0/i;->j:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lz0/i;->j:Lcom/bumptech/glide/e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_17

    iget p0, p0, Lz0/i;->q:I

    iget p1, p1, Lz0/i;->q:I

    sub-int v0, p0, p1

    :cond_17
    return v0
.end method

.method public d()Lu1/d;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lz0/i;->c:Lu1/d;

    return-object p0
.end method

.method public e()V
    .registers 2

    sget-object v0, Lz0/i$f;->b:Lz0/i$f;

    iput-object v0, p0, Lz0/i;->s:Lz0/i$f;

    iget-object v0, p0, Lz0/i;->p:Lz0/i$a;

    check-cast v0, Lz0/m;

    invoke-virtual {v0, p0}, Lz0/m;->i(Lz0/i;)V

    return-void
.end method

.method public final f(Lx0/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lz0/w;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lx0/d<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lz0/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz0/r;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_7

    invoke-interface {p1}, Lx0/d;->b()V

    return-object v0

    :cond_7
    :try_start_7
    sget v1, Lt1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {p0, p2, p3}, Lz0/i;->g(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lz0/w;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded result "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v1, v2, v0}, Lz0/i;->k(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_32

    :cond_2e
    invoke-interface {p1}, Lx0/d;->b()V

    return-object p2

    :catchall_32
    move-exception p0

    invoke-interface {p1}, Lx0/d;->b()V

    throw p0
.end method

.method public final g(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lz0/w;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lz0/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz0/r;
        }
    .end annotation

    iget-object v0, p0, Lz0/i;->a:Lz0/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz0/h;->d(Ljava/lang/Class;)Lz0/u;

    move-result-object v2

    iget-object v0, p0, Lz0/i;->o:Lw0/e;

    sget-object v1, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    if-eq p2, v1, :cond_19

    iget-object v1, p0, Lz0/i;->a:Lz0/h;

    iget-boolean v1, v1, Lz0/h;->r:Z

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    sget-object v3, Lg1/m;->i:Lw0/d;

    invoke-virtual {v0, v3}, Lw0/e;->a(Lw0/d;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_40

    if-eqz v1, :cond_2d

    goto :goto_40

    :cond_2d
    new-instance v0, Lw0/e;

    invoke-direct {v0}, Lw0/e;-><init>()V

    iget-object v4, p0, Lz0/i;->o:Lw0/e;

    invoke-virtual {v0, v4}, Lw0/e;->b(Lw0/e;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v4, v0, Lw0/e;->b:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    :goto_40
    move-object v4, v0

    iget-object v0, p0, Lz0/i;->h:Lcom/bumptech/glide/d;

    iget-object v0, v0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->e:Lx0/f;

    monitor-enter v0

    :try_start_48
    iget-object v1, v0, Lx0/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/e$a;

    if-nez v1, :cond_7b

    iget-object v3, v0, Lx0/f;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx0/e$a;

    invoke-interface {v5}, Lx0/e$a;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_60

    move-object v1, v5

    :cond_7b
    if-nez v1, :cond_7f

    sget-object v1, Lx0/f;->b:Lx0/e$a;

    :cond_7f
    invoke-interface {v1, p1}, Lx0/e$a;->b(Ljava/lang/Object;)Lx0/e;

    move-result-object p1
    :try_end_83
    .catchall {:try_start_48 .. :try_end_83} :catchall_9b

    monitor-exit v0

    :try_start_84
    iget v5, p0, Lz0/i;->l:I

    iget v6, p0, Lz0/i;->m:I

    new-instance v7, Lz0/i$b;

    invoke-direct {v7, p0, p2}, Lz0/i$b;-><init>(Lz0/i;Lcom/bumptech/glide/load/a;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lz0/u;->a(Lx0/e;Lw0/e;IILz0/j$a;)Lz0/w;

    move-result-object p0
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_96

    invoke-interface {p1}, Lx0/e;->b()V

    return-object p0

    :catchall_96
    move-exception p0

    invoke-interface {p1}, Lx0/e;->b()V

    throw p0

    :catchall_9b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final h()V
    .registers 13

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "Retrieved data"

    iget-wide v1, p0, Lz0/i;->t:J

    const-string v3, "data: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lz0/i;->z:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lz0/i;->x:Lw0/c;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lz0/i;->B:Lx0/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lz0/i;->k(Ljava/lang/String;JLjava/lang/String;)V

    :cond_33
    const/4 v0, 0x0

    :try_start_34
    iget-object v1, p0, Lz0/i;->B:Lx0/d;

    iget-object v2, p0, Lz0/i;->z:Ljava/lang/Object;

    iget-object v3, p0, Lz0/i;->A:Lcom/bumptech/glide/load/a;

    invoke-virtual {p0, v1, v2, v3}, Lz0/i;->f(Lx0/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lz0/w;

    move-result-object v1
    :try_end_3e
    .catch Lz0/r; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_50

    :catch_3f
    move-exception v1

    iget-object v2, p0, Lz0/i;->y:Lw0/c;

    iget-object v3, p0, Lz0/i;->A:Lcom/bumptech/glide/load/a;

    iput-object v2, v1, Lz0/r;->b:Lw0/c;

    iput-object v3, v1, Lz0/r;->c:Lcom/bumptech/glide/load/a;

    iput-object v0, v1, Lz0/r;->d:Ljava/lang/Class;

    iget-object v2, p0, Lz0/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_50
    if-eqz v1, :cond_15e

    iget-object v2, p0, Lz0/i;->A:Lcom/bumptech/glide/load/a;

    instance-of v3, v1, Lz0/s;

    if-eqz v3, :cond_5e

    move-object v3, v1

    check-cast v3, Lz0/s;

    invoke-interface {v3}, Lz0/s;->initialize()V

    :cond_5e
    iget-object v3, p0, Lz0/i;->f:Lz0/i$c;

    iget-object v3, v3, Lz0/i$c;->c:Lz0/v;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_68

    move v3, v5

    goto :goto_69

    :cond_68
    move v3, v4

    :goto_69
    if-eqz v3, :cond_70

    invoke-static {v1}, Lz0/v;->c(Lz0/w;)Lz0/v;

    move-result-object v0

    move-object v1, v0

    :cond_70
    invoke-virtual {p0}, Lz0/i;->p()V

    iget-object v3, p0, Lz0/i;->p:Lz0/i$a;

    check-cast v3, Lz0/m;

    monitor-enter v3

    :try_start_78
    iput-object v1, v3, Lz0/m;->q:Lz0/w;

    iput-object v2, v3, Lz0/m;->r:Lcom/bumptech/glide/load/a;

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_15b

    monitor-enter v3

    :try_start_7e
    iget-object v1, v3, Lz0/m;->b:Lu1/d;

    invoke-virtual {v1}, Lu1/d;->a()V

    iget-boolean v1, v3, Lz0/m;->x:Z

    if-eqz v1, :cond_91

    iget-object v1, v3, Lz0/m;->q:Lz0/w;

    invoke-interface {v1}, Lz0/w;->recycle()V

    invoke-virtual {v3}, Lz0/m;->g()V

    monitor-exit v3

    goto :goto_f5

    :cond_91
    iget-object v1, v3, Lz0/m;->a:Lz0/m$e;

    invoke-virtual {v1}, Lz0/m$e;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_150

    iget-boolean v1, v3, Lz0/m;->s:Z

    if-nez v1, :cond_148

    iget-object v1, v3, Lz0/m;->e:Lz0/m$c;

    iget-object v7, v3, Lz0/m;->q:Lz0/w;

    iget-boolean v8, v3, Lz0/m;->m:Z

    iget-object v10, v3, Lz0/m;->l:Lw0/c;

    iget-object v11, v3, Lz0/m;->c:Lz0/q$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lz0/q;

    const/4 v9, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lz0/q;-><init>(Lz0/w;ZZLw0/c;Lz0/q$a;)V

    iput-object v1, v3, Lz0/m;->v:Lz0/q;

    iput-boolean v5, v3, Lz0/m;->s:Z

    iget-object v1, v3, Lz0/m;->a:Lz0/m$e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lz0/m$e;->a:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v3, v1}, Lz0/m;->e(I)V

    iget-object v1, v3, Lz0/m;->l:Lw0/c;

    iget-object v6, v3, Lz0/m;->v:Lz0/q;

    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_7e .. :try_end_ce} :catchall_158

    iget-object v7, v3, Lz0/m;->f:Lz0/n;

    check-cast v7, Lz0/l;

    invoke-virtual {v7, v3, v1, v6}, Lz0/l;->e(Lz0/m;Lw0/c;Lz0/q;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz0/m$d;

    iget-object v6, v2, Lz0/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lz0/m$b;

    iget-object v2, v2, Lz0/m$d;->a:Lp1/i;

    invoke-direct {v7, v3, v2}, Lz0/m$b;-><init>(Lz0/m;Lp1/i;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_d9

    :cond_f2
    invoke-virtual {v3}, Lz0/m;->c()V

    :goto_f5
    sget-object v1, Lz0/i$g;->e:Lz0/i$g;

    iput-object v1, p0, Lz0/i;->r:Lz0/i$g;

    :try_start_f9
    iget-object v1, p0, Lz0/i;->f:Lz0/i$c;

    iget-object v2, v1, Lz0/i$c;->c:Lz0/v;

    if-eqz v2, :cond_101

    move v2, v5

    goto :goto_102

    :cond_101
    move v2, v4

    :goto_102
    if-eqz v2, :cond_129

    iget-object v2, p0, Lz0/i;->d:Lz0/i$d;

    iget-object v3, p0, Lz0/i;->o:Lw0/e;
    :try_end_108
    .catchall {:try_start_f9 .. :try_end_108} :catchall_141

    :try_start_108
    check-cast v2, Lz0/l$c;

    invoke-virtual {v2}, Lz0/l$c;->a()Lb1/a;

    move-result-object v2

    iget-object v6, v1, Lz0/i$c;->a:Lw0/c;

    new-instance v7, Lz0/f;

    iget-object v8, v1, Lz0/i$c;->b:Lw0/f;

    iget-object v9, v1, Lz0/i$c;->c:Lz0/v;

    invoke-direct {v7, v8, v9, v3}, Lz0/f;-><init>(Lw0/a;Ljava/lang/Object;Lw0/e;)V

    invoke-interface {v2, v6, v7}, Lb1/a;->a(Lw0/c;Lb1/a$b;)V
    :try_end_11c
    .catchall {:try_start_108 .. :try_end_11c} :catchall_122

    :try_start_11c
    iget-object v1, v1, Lz0/i$c;->c:Lz0/v;

    invoke-virtual {v1}, Lz0/v;->e()V

    goto :goto_129

    :catchall_122
    move-exception p0

    iget-object v1, v1, Lz0/i$c;->c:Lz0/v;

    invoke-virtual {v1}, Lz0/v;->e()V

    throw p0
    :try_end_129
    .catchall {:try_start_11c .. :try_end_129} :catchall_141

    :cond_129
    :goto_129
    if-eqz v0, :cond_12e

    invoke-virtual {v0}, Lz0/v;->e()V

    :cond_12e
    iget-object v0, p0, Lz0/i;->g:Lz0/i$e;

    monitor-enter v0

    :try_start_131
    iput-boolean v5, v0, Lz0/i$e;->b:Z

    invoke-virtual {v0, v4}, Lz0/i$e;->a(Z)Z

    move-result v1
    :try_end_137
    .catchall {:try_start_131 .. :try_end_137} :catchall_13e

    monitor-exit v0

    if-eqz v1, :cond_161

    invoke-virtual {p0}, Lz0/i;->m()V

    goto :goto_161

    :catchall_13e
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_141
    move-exception p0

    if-eqz v0, :cond_147

    invoke-virtual {v0}, Lz0/v;->e()V

    :cond_147
    throw p0

    :cond_148
    :try_start_148
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already have resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_150
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received a resource without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_158
    move-exception p0

    monitor-exit v3
    :try_end_15a
    .catchall {:try_start_148 .. :try_end_15a} :catchall_158

    throw p0

    :catchall_15b
    move-exception p0

    :try_start_15c
    monitor-exit v3
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    throw p0

    :cond_15e
    invoke-virtual {p0}, Lz0/i;->n()V

    :cond_161
    :goto_161
    return-void
.end method

.method public final i()Lz0/g;
    .registers 3

    iget-object v0, p0, Lz0/i;->r:Lz0/i$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized stage: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lz0/i;->r:Lz0/i$g;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lz0/b0;

    iget-object v1, p0, Lz0/i;->a:Lz0/h;

    invoke-direct {v0, v1, p0}, Lz0/b0;-><init>(Lz0/h;Lz0/g$a;)V

    return-object v0

    :cond_31
    new-instance v0, Lz0/d;

    iget-object v1, p0, Lz0/i;->a:Lz0/h;

    invoke-direct {v0, v1, p0}, Lz0/d;-><init>(Lz0/h;Lz0/g$a;)V

    return-object v0

    :cond_39
    new-instance v0, Lz0/x;

    iget-object v1, p0, Lz0/i;->a:Lz0/h;

    invoke-direct {v0, v1, p0}, Lz0/x;-><init>(Lz0/h;Lz0/g$a;)V

    return-object v0
.end method

.method public final j(Lz0/i$g;)Lz0/i$g;
    .registers 6

    sget-object v0, Lz0/i$g;->b:Lz0/i$g;

    sget-object v1, Lz0/i$g;->c:Lz0/i$g;

    sget-object v2, Lz0/i$g;->f:Lz0/i$g;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_47

    const/4 v0, 0x1

    if-eq v3, v0, :cond_39

    const/4 v0, 0x2

    if-eq v3, v0, :cond_31

    const/4 p0, 0x3

    if-eq v3, p0, :cond_30

    const/4 p0, 0x5

    if-ne v3, p0, :cond_19

    goto :goto_30

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :goto_30
    return-object v2

    :cond_31
    iget-boolean p0, p0, Lz0/i;->u:Z

    if-eqz p0, :cond_36

    goto :goto_38

    :cond_36
    sget-object v2, Lz0/i$g;->d:Lz0/i$g;

    :goto_38
    return-object v2

    :cond_39
    iget-object p1, p0, Lz0/i;->n:Lz0/k;

    invoke-virtual {p1}, Lz0/k;->a()Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_46

    :cond_42
    invoke-virtual {p0, v1}, Lz0/i;->j(Lz0/i$g;)Lz0/i$g;

    move-result-object v1

    :goto_46
    return-object v1

    :cond_47
    iget-object p1, p0, Lz0/i;->n:Lz0/k;

    invoke-virtual {p1}, Lz0/k;->b()Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_54

    :cond_50
    invoke-virtual {p0, v0}, Lz0/i;->j(Lz0/i$g;)Lz0/i$g;

    move-result-object v0

    :goto_54
    return-object v0
.end method

.method public final k(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    const-string v0, " in "

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2, p3}, Lt1/b;->a(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz0/i;->k:Lz0/o;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_20

    const-string p0, ", "

    invoke-static {p0, p4}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    :cond_20
    const-string p0, ""

    :goto_22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeJob"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final l()V
    .registers 7

    invoke-virtual {p0}, Lz0/i;->p()V

    new-instance v0, Lz0/r;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lz0/i;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lz0/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lz0/i;->p:Lz0/i$a;

    check-cast v1, Lz0/m;

    monitor-enter v1

    :try_start_16
    iput-object v0, v1, Lz0/m;->t:Lz0/r;

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_9d

    monitor-enter v1

    :try_start_1a
    iget-object v0, v1, Lz0/m;->b:Lu1/d;

    invoke-virtual {v0}, Lu1/d;->a()V

    iget-boolean v0, v1, Lz0/m;->x:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {v1}, Lz0/m;->g()V

    monitor-exit v1

    goto :goto_76

    :cond_29
    iget-object v0, v1, Lz0/m;->a:Lz0/m$e;

    invoke-virtual {v0}, Lz0/m$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    iget-boolean v0, v1, Lz0/m;->u:Z

    if-nez v0, :cond_8a

    iput-boolean v2, v1, Lz0/m;->u:Z

    iget-object v0, v1, Lz0/m;->l:Lw0/c;

    iget-object v3, v1, Lz0/m;->a:Lz0/m$e;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Lz0/m$e;->a:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lz0/m;->e(I)V

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_1a .. :try_end_4e} :catchall_9a

    iget-object v3, v1, Lz0/m;->f:Lz0/n;

    const/4 v5, 0x0

    check-cast v3, Lz0/l;

    invoke-virtual {v3, v1, v0, v5}, Lz0/l;->e(Lz0/m;Lw0/c;Lz0/q;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz0/m$d;

    iget-object v4, v3, Lz0/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Lz0/m$a;

    iget-object v3, v3, Lz0/m$d;->a:Lp1/i;

    invoke-direct {v5, v1, v3}, Lz0/m$a;-><init>(Lz0/m;Lp1/i;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5a

    :cond_73
    invoke-virtual {v1}, Lz0/m;->c()V

    :goto_76
    iget-object v0, p0, Lz0/i;->g:Lz0/i$e;

    monitor-enter v0

    :try_start_79
    iput-boolean v2, v0, Lz0/i$e;->c:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz0/i$e;->a(Z)Z

    move-result v1
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_87

    monitor-exit v0

    if-eqz v1, :cond_86

    invoke-virtual {p0}, Lz0/i;->m()V

    :cond_86
    return-void

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_8a
    :try_start_8a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_9a
    move-exception p0

    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_8a .. :try_end_9c} :catchall_9a

    throw p0

    :catchall_9d
    move-exception p0

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0
.end method

.method public final m()V
    .registers 6

    iget-object v0, p0, Lz0/i;->g:Lz0/i$e;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, v0, Lz0/i$e;->b:Z

    iput-boolean v1, v0, Lz0/i$e;->a:Z

    iput-boolean v1, v0, Lz0/i$e;->c:Z
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_65

    monitor-exit v0

    iget-object v0, p0, Lz0/i;->f:Lz0/i$c;

    const/4 v2, 0x0

    iput-object v2, v0, Lz0/i$c;->a:Lw0/c;

    iput-object v2, v0, Lz0/i$c;->b:Lw0/f;

    iput-object v2, v0, Lz0/i$c;->c:Lz0/v;

    iget-object v0, p0, Lz0/i;->a:Lz0/h;

    iput-object v2, v0, Lz0/h;->c:Lcom/bumptech/glide/d;

    iput-object v2, v0, Lz0/h;->d:Ljava/lang/Object;

    iput-object v2, v0, Lz0/h;->n:Lw0/c;

    iput-object v2, v0, Lz0/h;->g:Ljava/lang/Class;

    iput-object v2, v0, Lz0/h;->k:Ljava/lang/Class;

    iput-object v2, v0, Lz0/h;->i:Lw0/e;

    iput-object v2, v0, Lz0/h;->o:Lcom/bumptech/glide/e;

    iput-object v2, v0, Lz0/h;->j:Ljava/util/Map;

    iput-object v2, v0, Lz0/h;->p:Lz0/k;

    iget-object v3, v0, Lz0/h;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-boolean v1, v0, Lz0/h;->l:Z

    iget-object v3, v0, Lz0/h;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-boolean v1, v0, Lz0/h;->m:Z

    iput-boolean v1, p0, Lz0/i;->D:Z

    iput-object v2, p0, Lz0/i;->h:Lcom/bumptech/glide/d;

    iput-object v2, p0, Lz0/i;->i:Lw0/c;

    iput-object v2, p0, Lz0/i;->o:Lw0/e;

    iput-object v2, p0, Lz0/i;->j:Lcom/bumptech/glide/e;

    iput-object v2, p0, Lz0/i;->k:Lz0/o;

    iput-object v2, p0, Lz0/i;->p:Lz0/i$a;

    iput-object v2, p0, Lz0/i;->r:Lz0/i$g;

    iput-object v2, p0, Lz0/i;->C:Lz0/g;

    iput-object v2, p0, Lz0/i;->w:Ljava/lang/Thread;

    iput-object v2, p0, Lz0/i;->x:Lw0/c;

    iput-object v2, p0, Lz0/i;->z:Ljava/lang/Object;

    iput-object v2, p0, Lz0/i;->A:Lcom/bumptech/glide/load/a;

    iput-object v2, p0, Lz0/i;->B:Lx0/d;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lz0/i;->t:J

    iput-boolean v1, p0, Lz0/i;->E:Z

    iput-object v2, p0, Lz0/i;->v:Ljava/lang/Object;

    iget-object v0, p0, Lz0/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lz0/i;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final n()V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lz0/i;->w:Ljava/lang/Thread;

    sget v0, Lt1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lz0/i;->t:J

    const/4 v0, 0x0

    :cond_f
    iget-boolean v1, p0, Lz0/i;->E:Z

    if-nez v1, :cond_3f

    iget-object v1, p0, Lz0/i;->C:Lz0/g;

    if-eqz v1, :cond_3f

    iget-object v0, p0, Lz0/i;->C:Lz0/g;

    invoke-interface {v0}, Lz0/g;->c()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v1, p0, Lz0/i;->r:Lz0/i$g;

    invoke-virtual {p0, v1}, Lz0/i;->j(Lz0/i$g;)Lz0/i$g;

    move-result-object v1

    iput-object v1, p0, Lz0/i;->r:Lz0/i$g;

    invoke-virtual {p0}, Lz0/i;->i()Lz0/g;

    move-result-object v1

    iput-object v1, p0, Lz0/i;->C:Lz0/g;

    iget-object v1, p0, Lz0/i;->r:Lz0/i$g;

    sget-object v2, Lz0/i$g;->d:Lz0/i$g;

    if-ne v1, v2, :cond_f

    sget-object v0, Lz0/i$f;->b:Lz0/i$f;

    iput-object v0, p0, Lz0/i;->s:Lz0/i$f;

    iget-object v0, p0, Lz0/i;->p:Lz0/i$a;

    check-cast v0, Lz0/m;

    invoke-virtual {v0, p0}, Lz0/m;->i(Lz0/i;)V

    return-void

    :cond_3f
    iget-object v1, p0, Lz0/i;->r:Lz0/i$g;

    sget-object v2, Lz0/i$g;->f:Lz0/i$g;

    if-eq v1, v2, :cond_49

    iget-boolean v1, p0, Lz0/i;->E:Z

    if-eqz v1, :cond_4e

    :cond_49
    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lz0/i;->l()V

    :cond_4e
    return-void
.end method

.method public final o()V
    .registers 3

    iget-object v0, p0, Lz0/i;->s:Lz0/i$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lz0/i;->h()V

    goto :goto_3c

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized run reason: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lz0/i;->s:Lz0/i$f;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {p0}, Lz0/i;->n()V

    goto :goto_3c

    :cond_2b
    sget-object v0, Lz0/i$g;->a:Lz0/i$g;

    invoke-virtual {p0, v0}, Lz0/i;->j(Lz0/i$g;)Lz0/i$g;

    move-result-object v0

    iput-object v0, p0, Lz0/i;->r:Lz0/i$g;

    invoke-virtual {p0}, Lz0/i;->i()Lz0/g;

    move-result-object v0

    iput-object v0, p0, Lz0/i;->C:Lz0/g;

    invoke-virtual {p0}, Lz0/i;->n()V

    :goto_3c
    return-void
.end method

.method public final p()V
    .registers 3

    iget-object v0, p0, Lz0/i;->c:Lu1/d;

    invoke-virtual {v0}, Lu1/d;->a()V

    iget-boolean v0, p0, Lz0/i;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lz0/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    goto :goto_1c

    :cond_14
    iget-object p0, p0, Lz0/i;->b:Ljava/util/List;

    invoke-static {p0, v1}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :goto_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_24
    iput-boolean v1, p0, Lz0/i;->D:Z

    return-void
.end method

.method public run()V
    .registers 6

    const-string v0, "DecodeJob"

    iget-object v1, p0, Lz0/i;->B:Lx0/d;

    :try_start_4
    iget-boolean v2, p0, Lz0/i;->E:Z

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lz0/i;->l()V
    :try_end_b
    .catch Lz0/c; {:try_start_4 .. :try_end_b} :catch_56
    .catchall {:try_start_4 .. :try_end_b} :catchall_1a

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lx0/d;->b()V

    :cond_10
    return-void

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lz0/i;->o()V
    :try_end_14
    .catch Lz0/c; {:try_start_11 .. :try_end_14} :catch_56
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lx0/d;->b()V

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    const/4 v3, 0x3

    :try_start_1c
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lz0/i;->E:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lz0/i;->r:Lz0/i$g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_42
    iget-object v0, p0, Lz0/i;->r:Lz0/i$g;

    sget-object v3, Lz0/i$g;->e:Lz0/i$g;

    if-eq v0, v3, :cond_50

    iget-object v0, p0, Lz0/i;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lz0/i;->l()V

    :cond_50
    iget-boolean p0, p0, Lz0/i;->E:Z

    if-nez p0, :cond_55

    throw v2

    :cond_55
    throw v2

    :catch_56
    move-exception p0

    throw p0
    :try_end_58
    .catchall {:try_start_1c .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    if-eqz v1, :cond_5e

    invoke-interface {v1}, Lx0/d;->b()V

    :cond_5e
    throw p0
.end method
