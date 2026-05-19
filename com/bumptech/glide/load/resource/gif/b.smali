.class public Lcom/bumptech/glide/load/resource/gif/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/b$a;,
        Lcom/bumptech/glide/load/resource/gif/b$c;,
        Lcom/bumptech/glide/load/resource/gif/b$b;
    }
.end annotation


# instance fields
.field public final a:Lu0/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/resource/gif/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/bumptech/glide/h;

.field public final e:La1/d;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/bumptech/glide/load/resource/gif/b$a;

.field public j:Z

.field public k:Lcom/bumptech/glide/load/resource/gif/b$a;

.field public l:Landroid/graphics/Bitmap;

.field public m:Lw0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/bumptech/glide/load/resource/gif/b$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;Lu0/a;IILw0/g;Landroid/graphics/Bitmap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lu0/a;",
            "II",
            "Lw0/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/bumptech/glide/b;->b:La1/d;

    iget-object v1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/d;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/d;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget-object v2, Lcom/bumptech/glide/h;->l:Lp1/h;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/g;->t(Lp1/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget-object v2, Lz0/k;->a:Lz0/k;

    new-instance v3, Lp1/h;

    invoke-direct {v3}, Lp1/h;-><init>()V

    invoke-virtual {v3, v2}, Lp1/a;->e(Lz0/k;)Lp1/a;

    move-result-object v2

    check-cast v2, Lp1/h;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lp1/a;->s(Z)Lp1/a;

    move-result-object v2

    check-cast v2, Lp1/h;

    invoke-virtual {v2, v3}, Lp1/a;->p(Z)Lp1/a;

    move-result-object v2

    check-cast v2, Lp1/h;

    invoke-virtual {v2, p3, p4}, Lp1/a;->j(II)Lp1/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/g;->t(Lp1/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Ljava/util/List;

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/h;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/b$c;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/resource/gif/b$c;-><init>(Lcom/bumptech/glide/load/resource/gif/b;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:La1/d;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Lcom/bumptech/glide/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lu0/a;

    invoke-virtual {p0, p5, p6}, Lcom/bumptech/glide/load/resource/gif/b;->c(Lw0/g;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    if-eqz v0, :cond_9

    goto :goto_5f

    :cond_9
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->n:Lcom/bumptech/glide/load/resource/gif/b$a;

    if-eqz v1, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->n:Lcom/bumptech/glide/load/resource/gif/b$a;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/gif/b;->b(Lcom/bumptech/glide/load/resource/gif/b$a;)V

    return-void

    :cond_15
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lu0/a;

    invoke-interface {v0}, Lu0/a;->e()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lu0/a;

    invoke-interface {v0}, Lu0/a;->b()V

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lu0/a;

    invoke-interface {v4}, Lu0/a;->f()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bumptech/glide/load/resource/gif/b$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Lcom/bumptech/glide/g;

    new-instance v1, Ls1/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Ls1/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lp1/h;

    invoke-direct {v2}, Lp1/h;-><init>()V

    invoke-virtual {v2, v1}, Lp1/a;->o(Lw0/c;)Lp1/a;

    move-result-object v1

    check-cast v1, Lp1/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->t(Lp1/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lu0/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->y(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:Lcom/bumptech/glide/load/resource/gif/b$a;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/g;->v(Lq1/h;)Lq1/h;

    :cond_5f
    :goto_5f
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/resource/gif/b$a;)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    if-nez v0, :cond_19

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->n:Lcom/bumptech/glide/load/resource/gif/b$a;

    return-void

    :cond_19
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:La1/d;

    invoke-interface {v2, v0}, La1/d;->d(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Landroid/graphics/Bitmap;

    :cond_29
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Lcom/bumptech/glide/load/resource/gif/b$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_33
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_43

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/gif/b$b;

    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/gif/b$b;->a()V

    goto :goto_33

    :cond_43
    if-eqz v0, :cond_4e

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4e
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->a()V

    return-void
.end method

.method public c(Lw0/g;Landroid/graphics/Bitmap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->m:Lw0/g;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Lcom/bumptech/glide/g;

    new-instance v1, Lp1/h;

    invoke-direct {v1}, Lp1/h;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lp1/a;->r(Lw0/g;Z)Lp1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->t(Lp1/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Lcom/bumptech/glide/g;

    invoke-static {p2}, Lt1/f;->d(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->o:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->p:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->q:I

    return-void
.end method
