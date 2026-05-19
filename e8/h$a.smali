.class public Le8/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/h;


# direct methods
.method public constructor <init>(Le8/h;)V
    .registers 2

    iput-object p1, p0, Le8/h$a;->a:Le8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    :cond_0
    :goto_0
    iget-object v0, p0, Le8/h$a;->a:Le8/h;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    monitor-enter v0

    :try_start_7
    iget-object v3, v0, Le8/h;->d:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    move v8, v4

    move v9, v8

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh8/c;

    invoke-virtual {v0, v10, v1, v2}, Le8/h;->a(Lh8/c;J)I

    move-result v11

    if-lez v11, :cond_28

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_28
    add-int/lit8 v8, v8, 0x1

    iget-wide v11, v10, Lh8/c;->o:J

    sub-long v11, v1, v11

    cmp-long v13, v11, v6

    if-lez v13, :cond_13

    move-object v5, v10

    move-wide v6, v11

    goto :goto_13

    :cond_35
    iget-wide v1, v0, Le8/h;->b:J

    cmp-long v3, v6, v1

    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x0

    if-gez v3, :cond_52

    iget v3, v0, Le8/h;->a:I

    if-le v8, v3, :cond_44

    goto :goto_52

    :cond_44
    if-lez v8, :cond_49

    sub-long/2addr v1, v6

    monitor-exit v0

    goto :goto_5e

    :cond_49
    if-lez v9, :cond_4d

    monitor-exit v0

    goto :goto_5e

    :cond_4d
    iput-boolean v4, v0, Le8/h;->f:Z

    monitor-exit v0

    move-wide v1, v10

    goto :goto_5e

    :cond_52
    :goto_52
    iget-object v1, v0, Le8/h;->d:Ljava/util/Deque;

    invoke-interface {v1, v5}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_7e

    iget-object v0, v5, Lh8/c;->e:Ljava/net/Socket;

    invoke-static {v0}, Lf8/c;->f(Ljava/net/Socket;)V

    move-wide v1, v12

    :goto_5e
    cmp-long v0, v1, v10

    if-nez v0, :cond_63

    return-void

    :cond_63
    cmp-long v0, v1, v12

    if-lez v0, :cond_0

    const-wide/32 v3, 0xf4240

    div-long v5, v1, v3

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    iget-object v0, p0, Le8/h$a;->a:Le8/h;

    monitor-enter v0

    :try_start_71
    iget-object v3, p0, Le8/h$a;->a:Le8/h;

    long-to-int v1, v1

    invoke-virtual {v3, v5, v6, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_77} :catch_7a
    .catchall {:try_start_71 .. :try_end_77} :catchall_78

    goto :goto_7a

    :catchall_78
    move-exception p0

    goto :goto_7c

    :catch_7a
    :goto_7a
    :try_start_7a
    monitor-exit v0

    goto :goto_0

    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_78

    throw p0

    :catchall_7e
    move-exception p0

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0
.end method
