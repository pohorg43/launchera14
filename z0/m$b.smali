.class public Lz0/m$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lp1/i;

.field public final synthetic b:Lz0/m;


# direct methods
.method public constructor <init>(Lz0/m;Lp1/i;)V
    .registers 3

    iput-object p1, p0, Lz0/m$b;->b:Lz0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz0/m$b;->a:Lp1/i;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lz0/m$b;->a:Lp1/i;

    check-cast v0, Lp1/j;

    iget-object v1, v0, Lp1/j;->b:Lu1/d;

    invoke-virtual {v1}, Lu1/d;->a()V

    iget-object v0, v0, Lp1/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lz0/m$b;->b:Lz0/m;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_55

    :try_start_f
    iget-object v2, p0, Lz0/m$b;->b:Lz0/m;

    iget-object v2, v2, Lz0/m;->a:Lz0/m$e;

    iget-object v3, p0, Lz0/m$b;->a:Lp1/i;

    iget-object v2, v2, Lz0/m$e;->a:Ljava/util/List;

    new-instance v4, Lz0/m$d;

    sget-object v5, Lt1/a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v4, v3, v5}, Lz0/m$d;-><init>(Lp1/i;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lz0/m$b;->b:Lz0/m;

    iget-object v2, v2, Lz0/m;->v:Lz0/q;

    invoke-virtual {v2}, Lz0/q;->c()V

    iget-object v2, p0, Lz0/m$b;->b:Lz0/m;

    iget-object v3, p0, Lz0/m$b;->a:Lp1/i;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_52

    :try_start_32
    iget-object v4, v2, Lz0/m;->v:Lz0/q;

    iget-object v2, v2, Lz0/m;->r:Lcom/bumptech/glide/load/a;

    check-cast v3, Lp1/j;

    invoke-virtual {v3, v4, v2}, Lp1/j;->p(Lz0/w;Lcom/bumptech/glide/load/a;)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_43

    :try_start_3b
    iget-object v2, p0, Lz0/m$b;->b:Lz0/m;

    iget-object v3, p0, Lz0/m$b;->a:Lp1/i;

    invoke-virtual {v2, v3}, Lz0/m;->h(Lp1/i;)V

    goto :goto_4a

    :catchall_43
    move-exception p0

    new-instance v2, Lz0/c;

    invoke-direct {v2, p0}, Lz0/c;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_4a
    :goto_4a
    iget-object p0, p0, Lz0/m$b;->b:Lz0/m;

    invoke-virtual {p0}, Lz0/m;->c()V

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_52

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_55

    return-void

    :catchall_52
    move-exception p0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p0

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw p0
.end method
