.class public Lz0/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/g;
.implements Lx0/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz0/g;",
        "Lx0/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lz0/g$a;

.field public final b:Lz0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/h<",
            "*>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Lw0/c;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public g:I

.field public volatile h:Ld1/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Ljava/io/File;

.field public j:Lz0/y;


# direct methods
.method public constructor <init>(Lz0/h;Lz0/g$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/h<",
            "*>;",
            "Lz0/g$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz0/x;->d:I

    iput-object p1, p0, Lz0/x;->b:Lz0/h;

    iput-object p2, p0, Lz0/x;->a:Lz0/g$a;

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lz0/x;->b:Lz0/h;

    invoke-virtual {v1}, Lz0/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    return v3

    :cond_10
    iget-object v2, v0, Lz0/x;->b:Lz0/h;

    iget-object v4, v2, Lz0/h;->c:Lcom/bumptech/glide/d;

    iget-object v4, v4, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object v5, v2, Lz0/h;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v2, Lz0/h;->g:Ljava/lang/Class;

    iget-object v2, v2, Lz0/h;->k:Ljava/lang/Class;

    iget-object v7, v4, Lcom/bumptech/glide/f;->h:Lo1/d;

    iget-object v8, v7, Lo1/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt1/d;

    if-nez v8, :cond_33

    new-instance v8, Lt1/d;

    invoke-direct {v8, v5, v6, v2}, Lt1/d;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_39

    :cond_33
    iput-object v5, v8, Lt1/d;->a:Ljava/lang/Class;

    iput-object v6, v8, Lt1/d;->b:Ljava/lang/Class;

    iput-object v2, v8, Lt1/d;->c:Ljava/lang/Class;

    :goto_39
    iget-object v10, v7, Lo1/d;->b:Landroidx/collection/ArrayMap;

    monitor-enter v10

    :try_start_3c
    iget-object v11, v7, Lo1/d;->b:Landroidx/collection/ArrayMap;

    invoke-virtual {v11, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    monitor-exit v10
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_1c7

    iget-object v7, v7, Lo1/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v11, :cond_b8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v4, Lcom/bumptech/glide/f;->a:Ld1/p;

    monitor-enter v7

    :try_start_54
    iget-object v8, v7, Ld1/p;->a:Ld1/r;

    invoke-virtual {v8, v5}, Ld1/r;->e(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_b5

    monitor-exit v7

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_61
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    iget-object v10, v4, Lcom/bumptech/glide/f;->c:Lo1/e;

    invoke-virtual {v10, v8, v6}, Lo1/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_79
    :goto_79
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_61

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    iget-object v12, v4, Lcom/bumptech/glide/f;->f:Ll1/f;

    invoke-virtual {v12, v10, v2}, Ll1/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_79

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_79

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_9d
    iget-object v4, v4, Lcom/bumptech/glide/f;->h:Lo1/d;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v4, Lo1/d;->b:Landroidx/collection/ArrayMap;

    monitor-enter v8

    :try_start_a6
    iget-object v4, v4, Lo1/d;->b:Landroidx/collection/ArrayMap;

    new-instance v10, Lt1/d;

    invoke-direct {v10, v5, v6, v2}, Lt1/d;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    goto :goto_b8

    :catchall_b2
    move-exception v0

    monitor-exit v8
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_b2

    throw v0

    :catchall_b5
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_b8
    :goto_b8
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f2

    const-class v1, Ljava/io/File;

    iget-object v2, v0, Lz0/x;->b:Lz0/h;

    iget-object v2, v2, Lz0/h;->k:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    return v3

    :cond_cb
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find any load path from "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lz0/x;->b:Lz0/h;

    iget-object v3, v3, Lz0/h;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lz0/x;->b:Lz0/h;

    iget-object v0, v0, Lz0/h;->k:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f2
    :goto_f2
    iget-object v2, v0, Lz0/x;->f:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v2, :cond_159

    iget v5, v0, Lz0/x;->g:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_101

    move v2, v4

    goto :goto_102

    :cond_101
    move v2, v3

    :goto_102
    if-nez v2, :cond_105

    goto :goto_159

    :cond_105
    iput-object v9, v0, Lz0/x;->h:Ld1/n$a;

    move v1, v3

    :cond_108
    :goto_108
    if-nez v1, :cond_158

    iget v2, v0, Lz0/x;->g:I

    iget-object v5, v0, Lz0/x;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_116

    move v2, v4

    goto :goto_117

    :cond_116
    move v2, v3

    :goto_117
    if-eqz v2, :cond_158

    iget-object v2, v0, Lz0/x;->f:Ljava/util/List;

    iget v5, v0, Lz0/x;->g:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lz0/x;->g:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/n;

    iget-object v5, v0, Lz0/x;->i:Ljava/io/File;

    iget-object v6, v0, Lz0/x;->b:Lz0/h;

    iget v7, v6, Lz0/h;->e:I

    iget v8, v6, Lz0/h;->f:I

    iget-object v6, v6, Lz0/h;->i:Lw0/e;

    invoke-interface {v2, v5, v7, v8, v6}, Ld1/n;->buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;

    move-result-object v2

    iput-object v2, v0, Lz0/x;->h:Ld1/n$a;

    iget-object v2, v0, Lz0/x;->h:Ld1/n$a;

    if-eqz v2, :cond_108

    iget-object v2, v0, Lz0/x;->b:Lz0/h;

    iget-object v5, v0, Lz0/x;->h:Ld1/n$a;

    iget-object v5, v5, Ld1/n$a;->c:Lx0/d;

    invoke-interface {v5}, Lx0/d;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Lz0/h;->g(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_108

    iget-object v1, v0, Lz0/x;->h:Ld1/n$a;

    iget-object v1, v1, Ld1/n$a;->c:Lx0/d;

    iget-object v2, v0, Lz0/x;->b:Lz0/h;

    iget-object v2, v2, Lz0/h;->o:Lcom/bumptech/glide/e;

    invoke-interface {v1, v2, v0}, Lx0/d;->c(Lcom/bumptech/glide/e;Lx0/d$a;)V

    move v1, v4

    goto :goto_108

    :cond_158
    return v1

    :cond_159
    :goto_159
    iget v2, v0, Lz0/x;->d:I

    add-int/2addr v2, v4

    iput v2, v0, Lz0/x;->d:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_172

    iget v2, v0, Lz0/x;->c:I

    add-int/2addr v2, v4

    iput v2, v0, Lz0/x;->c:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_170

    return v3

    :cond_170
    iput v3, v0, Lz0/x;->d:I

    :cond_172
    iget v2, v0, Lz0/x;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/c;

    iget v4, v0, Lz0/x;->d:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iget-object v5, v0, Lz0/x;->b:Lz0/h;

    invoke-virtual {v5, v4}, Lz0/h;->f(Ljava/lang/Class;)Lw0/g;

    move-result-object v18

    new-instance v5, Lz0/y;

    iget-object v6, v0, Lz0/x;->b:Lz0/h;

    iget-object v7, v6, Lz0/h;->c:Lcom/bumptech/glide/d;

    iget-object v13, v7, Lcom/bumptech/glide/d;->a:La1/b;

    iget-object v15, v6, Lz0/h;->n:Lw0/c;

    iget v7, v6, Lz0/h;->e:I

    iget v8, v6, Lz0/h;->f:I

    iget-object v10, v6, Lz0/h;->i:Lw0/e;

    move-object v12, v5

    move-object v14, v2

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Lz0/y;-><init>(La1/b;Lw0/c;Lw0/c;IILw0/g;Ljava/lang/Class;Lw0/e;)V

    iput-object v5, v0, Lz0/x;->j:Lz0/y;

    invoke-virtual {v6}, Lz0/h;->b()Lb1/a;

    move-result-object v4

    iget-object v5, v0, Lz0/x;->j:Lz0/y;

    invoke-interface {v4, v5}, Lb1/a;->b(Lw0/c;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v0, Lz0/x;->i:Ljava/io/File;

    if-eqz v4, :cond_f2

    iput-object v2, v0, Lz0/x;->e:Lw0/c;

    iget-object v2, v0, Lz0/x;->b:Lz0/h;

    iget-object v2, v2, Lz0/h;->c:Lcom/bumptech/glide/d;

    iget-object v2, v2, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lz0/x;->f:Ljava/util/List;

    iput v3, v0, Lz0/x;->g:I

    goto/16 :goto_f2

    :catchall_1c7
    move-exception v0

    :try_start_1c8
    monitor-exit v10
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c7

    throw v0
.end method

.method public cancel()V
    .registers 1

    iget-object p0, p0, Lz0/x;->h:Ld1/n$a;

    if-eqz p0, :cond_9

    iget-object p0, p0, Ld1/n$a;->c:Lx0/d;

    invoke-interface {p0}, Lx0/d;->cancel()V

    :cond_9
    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .registers 5
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz0/x;->a:Lz0/g$a;

    iget-object v1, p0, Lz0/x;->j:Lz0/y;

    iget-object p0, p0, Lz0/x;->h:Ld1/n$a;

    iget-object p0, p0, Ld1/n$a;->c:Lx0/d;

    sget-object v2, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, p1, p0, v2}, Lz0/g$a;->a(Lw0/c;Ljava/lang/Exception;Lx0/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lz0/x;->a:Lz0/g$a;

    iget-object v1, p0, Lz0/x;->e:Lw0/c;

    iget-object v2, p0, Lz0/x;->h:Ld1/n$a;

    iget-object v3, v2, Ld1/n$a;->c:Lx0/d;

    sget-object v4, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    iget-object v5, p0, Lz0/x;->j:Lz0/y;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lz0/g$a;->b(Lw0/c;Ljava/lang/Object;Lx0/d;Lcom/bumptech/glide/load/a;Lw0/c;)V

    return-void
.end method
