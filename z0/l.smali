.class public Lz0/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/n;
.implements Lb1/i$a;
.implements Lz0/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/l$b;,
        Lz0/l$a;,
        Lz0/l$c;,
        Lz0/l$d;
    }
.end annotation


# static fields
.field public static final i:Z


# instance fields
.field public final a:Lz0/t;

.field public final b:Lz0/p;

.field public final c:Lb1/i;

.field public final d:Lz0/l$b;

.field public final e:Lz0/z;

.field public final f:Lz0/l$c;

.field public final g:Lz0/l$a;

.field public final h:Lz0/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lz0/l;->i:Z

    return-void
.end method

.method public constructor <init>(Lb1/i;Lb1/a$a;Lc1/a;Lc1/a;Lc1/a;Lc1/a;Z)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/l;->c:Lb1/i;

    new-instance v0, Lz0/l$c;

    invoke-direct {v0, p2}, Lz0/l$c;-><init>(Lb1/a$a;)V

    iput-object v0, p0, Lz0/l;->f:Lz0/l$c;

    new-instance p2, Lz0/a;

    invoke-direct {p2, p7}, Lz0/a;-><init>(Z)V

    iput-object p2, p0, Lz0/l;->h:Lz0/a;

    monitor-enter p0

    :try_start_14
    monitor-enter p2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_4b

    :try_start_15
    iput-object p0, p2, Lz0/a;->d:Lz0/q$a;

    monitor-exit p2
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_48

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_4b

    new-instance p2, Lz0/p;

    invoke-direct {p2}, Lz0/p;-><init>()V

    iput-object p2, p0, Lz0/l;->b:Lz0/p;

    new-instance p2, Lz0/t;

    invoke-direct {p2}, Lz0/t;-><init>()V

    iput-object p2, p0, Lz0/l;->a:Lz0/t;

    new-instance p2, Lz0/l$b;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lz0/l$b;-><init>(Lc1/a;Lc1/a;Lc1/a;Lc1/a;Lz0/n;Lz0/q$a;)V

    iput-object p2, p0, Lz0/l;->d:Lz0/l$b;

    new-instance p2, Lz0/l$a;

    invoke-direct {p2, v0}, Lz0/l$a;-><init>(Lz0/i$d;)V

    iput-object p2, p0, Lz0/l;->g:Lz0/l$a;

    new-instance p2, Lz0/z;

    invoke-direct {p2}, Lz0/z;-><init>()V

    iput-object p2, p0, Lz0/l;->e:Lz0/z;

    check-cast p1, Lb1/h;

    iput-object p0, p1, Lb1/h;->d:Lb1/i$a;

    return-void

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1

    :catchall_4b
    move-exception p1

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public static d(Ljava/lang/String;JLw0/c;)V
    .registers 5

    const-string v0, " in "

    invoke-static {p0, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lt1/b;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lw0/c;Lz0/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/c;",
            "Lz0/q<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz0/l;->h:Lz0/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lz0/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/a$b;

    if-eqz v1, :cond_13

    const/4 v2, 0x0

    iput-object v2, v1, Lz0/a$b;->c:Lz0/w;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2a

    :cond_13
    monitor-exit v0

    iget-boolean v0, p2, Lz0/q;->a:Z

    if-eqz v0, :cond_23

    iget-object p0, p0, Lz0/l;->c:Lb1/i;

    check-cast p0, Lb1/h;

    invoke-virtual {p0, p1, p2}, Lt1/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz0/w;

    goto :goto_29

    :cond_23
    iget-object p0, p0, Lz0/l;->e:Lz0/z;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lz0/z;->a(Lz0/w;Z)V

    :goto_29
    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public b(Lcom/bumptech/glide/d;Ljava/lang/Object;Lw0/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Lz0/k;Ljava/util/Map;ZZLw0/e;ZZZZLp1/i;Ljava/util/concurrent/Executor;)Lz0/l$d;
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lw0/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/e;",
            "Lz0/k;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lw0/g<",
            "*>;>;ZZ",
            "Lw0/e;",
            "ZZZZ",
            "Lp1/i;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz0/l$d;"
        }
    .end annotation

    move-object/from16 v15, p0

    sget-boolean v0, Lz0/l;->i:Z

    if-eqz v0, :cond_d

    sget v0, Lt1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    :goto_f
    move-wide v13, v0

    iget-object v0, v15, Lz0/l;->b:Lz0/p;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lz0/o;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lz0/o;-><init>(Ljava/lang/Object;Lw0/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lw0/e;)V

    monitor-enter p0

    move/from16 v12, p14

    :try_start_2e
    invoke-virtual {v15, v0, v12, v13, v14}, Lz0/l;->c(Lz0/o;ZJ)Lz0/q;

    move-result-object v1

    if-nez v1, :cond_66

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    invoke-virtual/range {v1 .. v23}, Lz0/l;->g(Lcom/bumptech/glide/d;Ljava/lang/Object;Lw0/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Lz0/k;Ljava/util/Map;ZZLw0/e;ZZZZLp1/i;Ljava/util/concurrent/Executor;Lz0/o;J)Lz0/l$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_2e .. :try_end_67} :catchall_72

    sget-object v0, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    move-object/from16 v2, p18

    check-cast v2, Lp1/j;

    invoke-virtual {v2, v1, v0}, Lp1/j;->p(Lz0/w;Lcom/bumptech/glide/load/a;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0
.end method

.method public final c(Lz0/o;ZJ)Lz0/q;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/o;",
            "ZJ)",
            "Lz0/q<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    iget-object p2, p0, Lz0/l;->h:Lz0/a;

    monitor-enter p2

    :try_start_7
    iget-object v1, p2, Lz0/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/a$b;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_7c

    if-nez v1, :cond_14

    monitor-exit p2

    move-object v2, v0

    goto :goto_20

    :cond_14
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz0/q;

    if-nez v2, :cond_1f

    invoke-virtual {p2, v1}, Lz0/a;->b(Lz0/a$b;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_7c

    :cond_1f
    monitor-exit p2

    :goto_20
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lz0/q;->c()V

    :cond_25
    if-eqz v2, :cond_31

    sget-boolean p0, Lz0/l;->i:Z

    if-eqz p0, :cond_30

    const-string p0, "Loaded resource from active resources"

    invoke-static {p0, p3, p4, p1}, Lz0/l;->d(Ljava/lang/String;JLw0/c;)V

    :cond_30
    return-object v2

    :cond_31
    iget-object p2, p0, Lz0/l;->c:Lb1/i;

    check-cast p2, Lb1/h;

    monitor-enter p2

    :try_start_36
    iget-object v1, p2, Lt1/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-wide v2, p2, Lt1/c;->c:J

    invoke-virtual {p2, v1}, Lb1/h;->b(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lt1/c;->c:J
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_79

    :cond_48
    monitor-exit p2

    move-object v2, v1

    check-cast v2, Lz0/w;

    if-nez v2, :cond_50

    move-object v2, v0

    goto :goto_62

    :cond_50
    instance-of p2, v2, Lz0/q;

    if-eqz p2, :cond_57

    check-cast v2, Lz0/q;

    goto :goto_62

    :cond_57
    new-instance p2, Lz0/q;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lz0/q;-><init>(Lz0/w;ZZLw0/c;Lz0/q$a;)V

    move-object v2, p2

    :goto_62
    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Lz0/q;->c()V

    iget-object p0, p0, Lz0/l;->h:Lz0/a;

    invoke-virtual {p0, p1, v2}, Lz0/a;->a(Lw0/c;Lz0/q;)V

    :cond_6c
    if-eqz v2, :cond_78

    sget-boolean p0, Lz0/l;->i:Z

    if-eqz p0, :cond_77

    const-string p0, "Loaded resource from cache"

    invoke-static {p0, p3, p4, p1}, Lz0/l;->d(Ljava/lang/String;JLw0/c;)V

    :cond_77
    return-object v2

    :cond_78
    return-object v0

    :catchall_79
    move-exception p0

    monitor-exit p2

    throw p0

    :catchall_7c
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public declared-synchronized e(Lz0/m;Lw0/c;Lz0/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/m<",
            "*>;",
            "Lw0/c;",
            "Lz0/q<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_c

    :try_start_3
    iget-boolean v0, p3, Lz0/q;->a:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lz0/l;->h:Lz0/a;

    invoke-virtual {v0, p2, p3}, Lz0/a;->a(Lw0/c;Lz0/q;)V

    :cond_c
    iget-object p3, p0, Lz0/l;->a:Lz0/t;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lz0/m;->p:Z

    invoke-virtual {p3, v0}, Lz0/t;->a(Z)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Lz0/w;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/w<",
            "*>;)V"
        }
    .end annotation

    instance-of p0, p1, Lz0/q;

    if-eqz p0, :cond_a

    check-cast p1, Lz0/q;

    invoke-virtual {p1}, Lz0/q;->d()V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot release anything but an EngineResource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lcom/bumptech/glide/d;Ljava/lang/Object;Lw0/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Lz0/k;Ljava/util/Map;ZZLw0/e;ZZZZLp1/i;Ljava/util/concurrent/Executor;Lz0/o;J)Lz0/l$d;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lw0/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/e;",
            "Lz0/k;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lw0/g<",
            "*>;>;ZZ",
            "Lw0/e;",
            "ZZZZ",
            "Lp1/i;",
            "Ljava/util/concurrent/Executor;",
            "Lz0/o;",
            "J)",
            "Lz0/l$d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    iget-object v15, v0, Lz0/l;->a:Lz0/t;

    if-eqz v9, :cond_23

    iget-object v15, v15, Lz0/t;->b:Ljava/lang/Object;

    goto :goto_25

    :cond_23
    iget-object v15, v15, Lz0/t;->a:Ljava/lang/Object;

    :goto_25
    check-cast v15, Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lz0/m;

    if-eqz v15, :cond_41

    invoke-virtual {v15, v10, v11}, Lz0/m;->a(Lp1/i;Ljava/util/concurrent/Executor;)V

    sget-boolean v1, Lz0/l;->i:Z

    if-eqz v1, :cond_3b

    const-string v1, "Added to existing load"

    invoke-static {v1, v13, v14, v12}, Lz0/l;->d(Ljava/lang/String;JLw0/c;)V

    :cond_3b
    new-instance v1, Lz0/l$d;

    invoke-direct {v1, v0, v10, v15}, Lz0/l$d;-><init>(Lz0/l;Lp1/i;Lz0/m;)V

    return-object v1

    :cond_41
    iget-object v15, v0, Lz0/l;->d:Lz0/l$b;

    iget-object v15, v15, Lz0/l$b;->g:Landroidx/core/util/Pools$Pool;

    invoke-interface {v15}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lz0/m;

    const-string v13, "Argument must not be null"

    invoke-static {v15, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter v15

    :try_start_51
    iput-object v12, v15, Lz0/m;->l:Lw0/c;

    move/from16 v13, p14

    iput-boolean v13, v15, Lz0/m;->m:Z

    move/from16 v13, p15

    iput-boolean v13, v15, Lz0/m;->n:Z

    move/from16 v13, p16

    iput-boolean v13, v15, Lz0/m;->o:Z

    iput-boolean v9, v15, Lz0/m;->p:Z
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_118

    monitor-exit v15

    iget-object v13, v0, Lz0/l;->g:Lz0/l$a;

    iget-object v14, v13, Lz0/l$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {v14}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz0/i;

    const-string v10, "Argument must not be null"

    invoke-static {v14, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v10, v13, Lz0/l$a;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, Lz0/l$a;->c:I

    iget-object v11, v14, Lz0/i;->a:Lz0/h;

    iget-object v13, v14, Lz0/i;->d:Lz0/i$d;

    iput-object v1, v11, Lz0/h;->c:Lcom/bumptech/glide/d;

    iput-object v2, v11, Lz0/h;->d:Ljava/lang/Object;

    iput-object v3, v11, Lz0/h;->n:Lw0/c;

    iput v4, v11, Lz0/h;->e:I

    iput v5, v11, Lz0/h;->f:I

    iput-object v7, v11, Lz0/h;->p:Lz0/k;

    move-object/from16 v0, p6

    iput-object v0, v11, Lz0/h;->g:Ljava/lang/Class;

    iput-object v13, v11, Lz0/h;->h:Lz0/i$d;

    move-object/from16 v0, p7

    iput-object v0, v11, Lz0/h;->k:Ljava/lang/Class;

    iput-object v6, v11, Lz0/h;->o:Lcom/bumptech/glide/e;

    iput-object v8, v11, Lz0/h;->i:Lw0/e;

    move-object/from16 v0, p10

    iput-object v0, v11, Lz0/h;->j:Ljava/util/Map;

    move/from16 v0, p11

    iput-boolean v0, v11, Lz0/h;->q:Z

    move/from16 v0, p12

    iput-boolean v0, v11, Lz0/h;->r:Z

    iput-object v1, v14, Lz0/i;->h:Lcom/bumptech/glide/d;

    iput-object v3, v14, Lz0/i;->i:Lw0/c;

    iput-object v6, v14, Lz0/i;->j:Lcom/bumptech/glide/e;

    iput-object v12, v14, Lz0/i;->k:Lz0/o;

    iput v4, v14, Lz0/i;->l:I

    iput v5, v14, Lz0/i;->m:I

    iput-object v7, v14, Lz0/i;->n:Lz0/k;

    iput-boolean v9, v14, Lz0/i;->u:Z

    iput-object v8, v14, Lz0/i;->o:Lw0/e;

    iput-object v15, v14, Lz0/i;->p:Lz0/i$a;

    iput v10, v14, Lz0/i;->q:I

    sget-object v0, Lz0/i$f;->a:Lz0/i$f;

    iput-object v0, v14, Lz0/i;->s:Lz0/i$f;

    iput-object v2, v14, Lz0/i;->v:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lz0/l;->a:Lz0/t;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v15, Lz0/m;->p:Z

    invoke-virtual {v1, v2}, Lz0/t;->a(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    invoke-virtual {v15, v1, v2}, Lz0/m;->a(Lp1/i;Ljava/util/concurrent/Executor;)V

    monitor-enter v15

    :try_start_d5
    iput-object v14, v15, Lz0/m;->w:Lz0/i;

    sget-object v2, Lz0/i$g;->a:Lz0/i$g;

    invoke-virtual {v14, v2}, Lz0/i;->j(Lz0/i$g;)Lz0/i$g;

    move-result-object v2

    sget-object v3, Lz0/i$g;->b:Lz0/i$g;

    if-eq v2, v3, :cond_e8

    sget-object v3, Lz0/i$g;->c:Lz0/i$g;

    if-ne v2, v3, :cond_e6

    goto :goto_e8

    :cond_e6
    const/4 v2, 0x0

    goto :goto_e9

    :cond_e8
    :goto_e8
    const/4 v2, 0x1

    :goto_e9
    if-eqz v2, :cond_ee

    iget-object v2, v15, Lz0/m;->g:Lc1/a;

    goto :goto_fe

    :cond_ee
    iget-boolean v2, v15, Lz0/m;->n:Z

    if-eqz v2, :cond_f5

    iget-object v2, v15, Lz0/m;->i:Lc1/a;

    goto :goto_fe

    :cond_f5
    iget-boolean v2, v15, Lz0/m;->o:Z

    if-eqz v2, :cond_fc

    iget-object v2, v15, Lz0/m;->j:Lc1/a;

    goto :goto_fe

    :cond_fc
    iget-object v2, v15, Lz0/m;->h:Lc1/a;

    :goto_fe
    iget-object v2, v2, Lc1/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_103
    .catchall {:try_start_d5 .. :try_end_103} :catchall_115

    monitor-exit v15

    sget-boolean v2, Lz0/l;->i:Z

    if-eqz v2, :cond_10f

    const-string v2, "Started new load"

    move-wide/from16 v3, p21

    invoke-static {v2, v3, v4, v12}, Lz0/l;->d(Ljava/lang/String;JLw0/c;)V

    :cond_10f
    new-instance v2, Lz0/l$d;

    invoke-direct {v2, v0, v1, v15}, Lz0/l$d;-><init>(Lz0/l;Lp1/i;Lz0/m;)V

    return-object v2

    :catchall_115
    move-exception v0

    monitor-exit v15

    throw v0

    :catchall_118
    move-exception v0

    monitor-exit v15

    throw v0
.end method
