.class public Lcom/bumptech/glide/g;
.super Lp1/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lp1/a<",
        "Lcom/bumptech/glide/g<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final A:Landroid/content/Context;

.field public final B:Lcom/bumptech/glide/h;

.field public final C:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final D:Lcom/bumptech/glide/d;

.field public E:Lcom/bumptech/glide/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public F:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public G:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/g<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field public H:Lcom/bumptech/glide/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public N:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lp1/h;

    invoke-direct {v0}, Lp1/h;-><init>()V

    sget-object v1, Lz0/k;->b:Lz0/k;

    invoke-virtual {v0, v1}, Lp1/a;->e(Lz0/k;)Lp1/a;

    move-result-object v0

    check-cast v0, Lp1/h;

    sget-object v1, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/e;

    invoke-virtual {v0, v1}, Lp1/a;->l(Lcom/bumptech/glide/e;)Lp1/a;

    move-result-object v0

    check-cast v0, Lp1/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lp1/a;->p(Z)Lp1/a;

    move-result-object v0

    check-cast v0, Lp1/h;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 8
    .param p1  # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lp1/a;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/g;->B:Lcom/bumptech/glide/h;

    iput-object p3, p0, Lcom/bumptech/glide/g;->C:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/g;->A:Landroid/content/Context;

    iget-object p4, p2, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iget-object p4, p4, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/d;

    iget-object v0, p4, Lcom/bumptech/glide/d;->f:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    if-nez v0, :cond_40

    iget-object p4, p4, Lcom/bumptech/glide/d;->f:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_21
    :goto_21
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    goto :goto_21

    :cond_40
    if-nez v0, :cond_44

    sget-object v0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/i;

    :cond_44
    iput-object v0, p0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/i;

    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/d;

    iput-object p1, p0, Lcom/bumptech/glide/g;->D:Lcom/bumptech/glide/d;

    iget-object p1, p2, Lcom/bumptech/glide/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_50
    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lp1/g;

    if-eqz p3, :cond_50

    iget-object p4, p0, Lcom/bumptech/glide/g;->G:Ljava/util/List;

    if-nez p4, :cond_69

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/bumptech/glide/g;->G:Ljava/util/List;

    :cond_69
    iget-object p4, p0, Lcom/bumptech/glide/g;->G:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_6f
    monitor-enter p2

    :try_start_70
    iget-object p1, p2, Lcom/bumptech/glide/h;->k:Lp1/h;
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_77

    monitor-exit p2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->t(Lp1/a;)Lcom/bumptech/glide/g;

    return-void

    :catchall_77
    move-exception p0

    monitor-exit p2

    throw p0
.end method


# virtual methods
.method public bridge synthetic b(Lp1/a;)Lp1/a;
    .registers 2
    .param p1  # Lp1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->t(Lp1/a;)Lcom/bumptech/glide/g;

    move-result-object p0

    return-object p0
.end method

.method public c()Lp1/a;
    .registers 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-super {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->b()Lcom/bumptech/glide/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/i;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->b()Lcom/bumptech/glide/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/i;

    return-object p0
.end method

.method public t(Lp1/a;)Lcom/bumptech/glide/g;
    .registers 3
    .param p1  # Lp1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/a<",
            "*>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lp1/a;->b(Lp1/a;)Lp1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    return-object p0
.end method

.method public final u(Ljava/lang/Object;Lq1/h;Lp1/g;Lp1/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILp1/a;Ljava/util/concurrent/Executor;)Lp1/d;
    .registers 26
    .param p3  # Lp1/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Lp1/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq1/h<",
            "TTranscodeType;>;",
            "Lp1/g<",
            "TTranscodeType;>;",
            "Lp1/e;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/e;",
            "II",
            "Lp1/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lp1/d;"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p9

    iget-object v0, v11, Lcom/bumptech/glide/g;->H:Lcom/bumptech/glide/g;

    if-eqz v0, :cond_13

    new-instance v0, Lp1/b;

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lp1/b;-><init>(Ljava/lang/Object;Lp1/e;)V

    move-object v5, v0

    move-object v14, v5

    goto :goto_1a

    :cond_13
    move-object/from16 v13, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v14, v0

    move-object v5, v1

    :goto_1a
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/g;->z(Ljava/lang/Object;Lq1/h;Lp1/g;Lp1/a;Lp1/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILjava/util/concurrent/Executor;)Lp1/d;

    move-result-object v0

    if-nez v14, :cond_34

    return-object v0

    :cond_34
    iget-object v1, v11, Lcom/bumptech/glide/g;->H:Lcom/bumptech/glide/g;

    iget v2, v1, Lp1/a;->k:I

    iget v1, v1, Lp1/a;->j:I

    invoke-static/range {p7 .. p8}, Lt1/f;->i(II)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, v11, Lcom/bumptech/glide/g;->H:Lcom/bumptech/glide/g;

    iget v4, v3, Lp1/a;->k:I

    iget v3, v3, Lp1/a;->j:I

    invoke-static {v4, v3}, Lt1/f;->i(II)Z

    move-result v3

    if-nez v3, :cond_53

    iget v1, v12, Lp1/a;->k:I

    iget v2, v12, Lp1/a;->j:I

    move v8, v1

    move v9, v2

    goto :goto_55

    :cond_53
    move v9, v1

    move v8, v2

    :goto_55
    iget-object v10, v11, Lcom/bumptech/glide/g;->H:Lcom/bumptech/glide/g;

    iget-object v6, v10, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/i;

    iget-object v7, v10, Lp1/a;->d:Lcom/bumptech/glide/e;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v14

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/g;->u(Ljava/lang/Object;Lq1/h;Lp1/g;Lp1/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILp1/a;Ljava/util/concurrent/Executor;)Lp1/d;

    move-result-object v1

    iput-object v0, v14, Lp1/b;->c:Lp1/d;

    iput-object v1, v14, Lp1/b;->d:Lp1/d;

    return-object v14
.end method

.method public v(Lq1/h;)Lq1/h;
    .registers 4
    .param p1  # Lq1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lq1/h<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    sget-object v0, Lt1/a;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p0, v0}, Lcom/bumptech/glide/g;->w(Lq1/h;Lp1/g;Lp1/a;Ljava/util/concurrent/Executor;)Lq1/h;

    return-object p1
.end method

.method public final w(Lq1/h;Lp1/g;Lp1/a;Ljava/util/concurrent/Executor;)Lq1/h;
    .registers 19
    .param p1  # Lq1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lp1/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lq1/h<",
            "TTranscodeType;>;>(TY;",
            "Lp1/g<",
            "TTranscodeType;>;",
            "Lp1/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    move-object v0, p0

    move-object v12, p1

    move-object/from16 v13, p3

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/bumptech/glide/g;->N:Z

    if-eqz v1, :cond_8b

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v6, v0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/i;

    iget-object v7, v13, Lp1/a;->d:Lcom/bumptech/glide/e;

    iget v8, v13, Lp1/a;->k:I

    iget v9, v13, Lp1/a;->j:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/g;->u(Ljava/lang/Object;Lq1/h;Lp1/g;Lp1/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILp1/a;Ljava/util/concurrent/Executor;)Lp1/d;

    move-result-object v1

    invoke-interface {p1}, Lq1/h;->getRequest()Lp1/d;

    move-result-object v2

    invoke-interface {v1, v2}, Lp1/d;->h(Lp1/d;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-boolean v3, v13, Lp1/a;->i:Z

    if-nez v3, :cond_3d

    invoke-interface {v2}, Lp1/d;->e()Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    if-nez v3, :cond_4f

    const-string v0, "Argument must not be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v2}, Lp1/d;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-interface {v2}, Lp1/d;->j()V

    :cond_4e
    return-object v12

    :cond_4f
    iget-object v2, v0, Lcom/bumptech/glide/g;->B:Lcom/bumptech/glide/h;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->c(Lq1/h;)V

    invoke-interface {p1, v1}, Lq1/h;->setRequest(Lp1/d;)V

    iget-object v2, v0, Lcom/bumptech/glide/g;->B:Lcom/bumptech/glide/h;

    monitor-enter v2

    :try_start_5a
    iget-object v0, v2, Lcom/bumptech/glide/h;->f:Lm1/n;

    iget-object v0, v0, Lm1/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/bumptech/glide/h;->d:Lm1/m;

    iget-object v3, v0, Lm1/m;->a:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lm1/m;->c:Z

    if-nez v3, :cond_70

    invoke-interface {v1}, Lp1/d;->j()V

    goto :goto_86

    :cond_70
    invoke-interface {v1}, Lp1/d;->clear()V

    const/4 v3, 0x2

    const-string v4, "RequestTracker"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_81

    const-string v3, "Paused, delaying request"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    iget-object v0, v0, Lm1/m;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catchall {:try_start_5a .. :try_end_86} :catchall_88

    :goto_86
    monitor-exit v2

    return-object v12

    :catchall_88
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public x(Landroid/widget/ImageView;)Lq1/i;
    .registers 6
    .param p1  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lq1/i<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lt1/f;->a()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lp1/a;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lp1/a;->g(II)Z

    move-result v0

    if-nez v0, :cond_73

    iget-boolean v0, p0, Lp1/a;->n:Z

    if-eqz v0, :cond_73

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_73

    sget-object v0, Lcom/bumptech/glide/g$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_bc

    goto :goto_73

    :pswitch_2d  #0x6
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->c()Lp1/a;

    move-result-object v0

    sget-object v2, Lg1/l;->b:Lg1/l;

    new-instance v3, Lg1/j;

    invoke-direct {v3}, Lg1/j;-><init>()V

    invoke-virtual {v0, v2, v3}, Lp1/a;->i(Lg1/l;Lw0/g;)Lp1/a;

    move-result-object v0

    iput-boolean v1, v0, Lp1/a;->y:Z

    goto :goto_74

    :pswitch_3f  #0x3, 0x4, 0x5
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->c()Lp1/a;

    move-result-object v0

    sget-object v2, Lg1/l;->a:Lg1/l;

    new-instance v3, Lg1/q;

    invoke-direct {v3}, Lg1/q;-><init>()V

    invoke-virtual {v0, v2, v3}, Lp1/a;->i(Lg1/l;Lw0/g;)Lp1/a;

    move-result-object v0

    iput-boolean v1, v0, Lp1/a;->y:Z

    goto :goto_74

    :pswitch_51  #0x2
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->c()Lp1/a;

    move-result-object v0

    sget-object v2, Lg1/l;->b:Lg1/l;

    new-instance v3, Lg1/j;

    invoke-direct {v3}, Lg1/j;-><init>()V

    invoke-virtual {v0, v2, v3}, Lp1/a;->i(Lg1/l;Lw0/g;)Lp1/a;

    move-result-object v0

    iput-boolean v1, v0, Lp1/a;->y:Z

    goto :goto_74

    :pswitch_63  #0x1
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->c()Lp1/a;

    move-result-object v0

    sget-object v1, Lg1/l;->c:Lg1/l;

    new-instance v2, Lg1/i;

    invoke-direct {v2}, Lg1/i;-><init>()V

    invoke-virtual {v0, v1, v2}, Lp1/a;->i(Lg1/l;Lw0/g;)Lp1/a;

    move-result-object v0

    goto :goto_74

    :cond_73
    :goto_73
    move-object v0, p0

    :goto_74
    iget-object v1, p0, Lcom/bumptech/glide/g;->D:Lcom/bumptech/glide/d;

    iget-object v2, p0, Lcom/bumptech/glide/g;->C:Ljava/lang/Class;

    iget-object v1, v1, Lcom/bumptech/glide/d;->c:Lq1/f;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    new-instance v1, Lq1/b;

    invoke-direct {v1, p1}, Lq1/b;-><init>(Landroid/widget/ImageView;)V

    goto :goto_98

    :cond_8b
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9f

    new-instance v1, Lq1/d;

    invoke-direct {v1, p1}, Lq1/d;-><init>(Landroid/widget/ImageView;)V

    :goto_98
    const/4 p1, 0x0

    sget-object v2, Lt1/a;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/bumptech/glide/g;->w(Lq1/h;Lp1/g;Lp1/a;Ljava/util/concurrent/Executor;)Lq1/h;

    return-object v1

    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled class: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_63  #00000001
        :pswitch_51  #00000002
        :pswitch_3f  #00000003
        :pswitch_3f  #00000004
        :pswitch_3f  #00000005
        :pswitch_2d  #00000006
    .end packed-switch
.end method

.method public y(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/g;->N:Z

    return-object p0
.end method

.method public final z(Ljava/lang/Object;Lq1/h;Lp1/g;Lp1/a;Lp1/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILjava/util/concurrent/Executor;)Lp1/d;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq1/h<",
            "TTranscodeType;>;",
            "Lp1/g<",
            "TTranscodeType;>;",
            "Lp1/a<",
            "*>;",
            "Lp1/e;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/e;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lp1/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/g;->A:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/g;->D:Lcom/bumptech/glide/d;

    iget-object v4, v0, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    iget-object v5, v0, Lcom/bumptech/glide/g;->C:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/g;->G:Ljava/util/List;

    iget-object v14, v2, Lcom/bumptech/glide/d;->g:Lz0/l;

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lr1/a;->b:Lr1/c;

    new-instance v17, Lp1/j;

    move-object/from16 v0, v17

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p10

    invoke-direct/range {v0 .. v16}, Lp1/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lp1/a;IILcom/bumptech/glide/e;Lq1/h;Lp1/g;Ljava/util/List;Lp1/e;Lz0/l;Lr1/c;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method
