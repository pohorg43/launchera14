.class public abstract Lp1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lp1/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:Lz0/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:Lcom/bumptech/glide/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:I

.field public g:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:Lw0/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:I

.field public q:Lw0/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public r:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lw0/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lp1/a;->b:F

    sget-object v0, Lz0/k;->c:Lz0/k;

    iput-object v0, p0, Lp1/a;->c:Lz0/k;

    sget-object v0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/e;

    iput-object v0, p0, Lp1/a;->d:Lcom/bumptech/glide/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp1/a;->i:Z

    const/4 v1, -0x1

    iput v1, p0, Lp1/a;->j:I

    iput v1, p0, Lp1/a;->k:I

    sget-object v1, Ls1/a;->b:Ls1/a;

    iput-object v1, p0, Lp1/a;->l:Lw0/c;

    iput-boolean v0, p0, Lp1/a;->n:Z

    new-instance v1, Lw0/e;

    invoke-direct {v1}, Lw0/e;-><init>()V

    iput-object v1, p0, Lp1/a;->q:Lw0/e;

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lp1/a;->r:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lp1/a;->s:Ljava/lang/Class;

    iput-boolean v0, p0, Lp1/a;->y:Z

    return-void
.end method

.method public static g(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method


# virtual methods
.method public b(Lp1/a;)Lp1/a;
    .registers 6
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
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->b(Lp1/a;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    iget v0, p1, Lp1/a;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p1, Lp1/a;->b:F

    iput v0, p0, Lp1/a;->b:F

    :cond_1a
    iget v0, p1, Lp1/a;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p1, Lp1/a;->w:Z

    iput-boolean v0, p0, Lp1/a;->w:Z

    :cond_28
    iget v0, p1, Lp1/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p1, Lp1/a;->z:Z

    iput-boolean v0, p0, Lp1/a;->z:Z

    :cond_36
    iget v0, p1, Lp1/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lp1/a;->c:Lz0/k;

    iput-object v0, p0, Lp1/a;->c:Lz0/k;

    :cond_43
    iget v0, p1, Lp1/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lp1/a;->d:Lcom/bumptech/glide/e;

    iput-object v0, p0, Lp1/a;->d:Lcom/bumptech/glide/e;

    :cond_51
    iget v0, p1, Lp1/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lp1/a;->g(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p1, Lp1/a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lp1/a;->e:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lp1/a;->f:I

    iget v0, p0, Lp1/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lp1/a;->a:I

    :cond_68
    iget v0, p1, Lp1/a;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lp1/a;->g(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7f

    iget v0, p1, Lp1/a;->f:I

    iput v0, p0, Lp1/a;->f:I

    iput-object v2, p0, Lp1/a;->e:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lp1/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lp1/a;->a:I

    :cond_7f
    iget v0, p1, Lp1/a;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p1, Lp1/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lp1/a;->g:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lp1/a;->h:I

    iget v0, p0, Lp1/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lp1/a;->a:I

    :cond_95
    iget v0, p1, Lp1/a;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget v0, p1, Lp1/a;->h:I

    iput v0, p0, Lp1/a;->h:I

    iput-object v2, p0, Lp1/a;->g:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lp1/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lp1/a;->a:I

    :cond_ab
    iget v0, p1, Lp1/a;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-boolean v0, p1, Lp1/a;->i:Z

    iput-boolean v0, p0, Lp1/a;->i:Z

    :cond_b9
    iget v0, p1, Lp1/a;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_cb

    iget v0, p1, Lp1/a;->k:I

    iput v0, p0, Lp1/a;->k:I

    iget v0, p1, Lp1/a;->j:I

    iput v0, p0, Lp1/a;->j:I

    :cond_cb
    iget v0, p1, Lp1/a;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p1, Lp1/a;->l:Lw0/c;

    iput-object v0, p0, Lp1/a;->l:Lw0/c;

    :cond_d9
    iget v0, p1, Lp1/a;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p1, Lp1/a;->s:Ljava/lang/Class;

    iput-object v0, p0, Lp1/a;->s:Ljava/lang/Class;

    :cond_e7
    iget v0, p1, Lp1/a;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p1, Lp1/a;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lp1/a;->o:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lp1/a;->p:I

    iget v0, p0, Lp1/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lp1/a;->a:I

    :cond_fd
    iget v0, p1, Lp1/a;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_113

    iget v0, p1, Lp1/a;->p:I

    iput v0, p0, Lp1/a;->p:I

    iput-object v2, p0, Lp1/a;->o:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lp1/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lp1/a;->a:I

    :cond_113
    iget v0, p1, Lp1/a;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p1, Lp1/a;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lp1/a;->u:Landroid/content/res/Resources$Theme;

    :cond_122
    iget v0, p1, Lp1/a;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_130

    iget-boolean v0, p1, Lp1/a;->n:Z

    iput-boolean v0, p0, Lp1/a;->n:Z

    :cond_130
    iget v0, p1, Lp1/a;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_13e

    iget-boolean v0, p1, Lp1/a;->m:Z

    iput-boolean v0, p0, Lp1/a;->m:Z

    :cond_13e
    iget v0, p1, Lp1/a;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_153

    iget-object v0, p0, Lp1/a;->r:Ljava/util/Map;

    iget-object v2, p1, Lp1/a;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lp1/a;->y:Z

    iput-boolean v0, p0, Lp1/a;->y:Z

    :cond_153
    iget v0, p1, Lp1/a;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lp1/a;->g(II)Z

    move-result v0

    if-eqz v0, :cond_161

    iget-boolean v0, p1, Lp1/a;->x:Z

    iput-boolean v0, p0, Lp1/a;->x:Z

    :cond_161
    iget-boolean v0, p0, Lp1/a;->n:Z

    if-nez v0, :cond_17b

    iget-object v0, p0, Lp1/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lp1/a;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lp1/a;->a:I

    iput-boolean v1, p0, Lp1/a;->m:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lp1/a;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp1/a;->y:Z

    :cond_17b
    iget v0, p0, Lp1/a;->a:I

    iget v1, p1, Lp1/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lp1/a;->a:I

    iget-object v0, p0, Lp1/a;->q:Lw0/e;

    iget-object p1, p1, Lp1/a;->q:Lw0/e;

    invoke-virtual {v0, p1}, Lw0/e;->b(Lw0/e;)V

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public c()Lp1/a;
    .registers 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/a;

    new-instance v1, Lw0/e;

    invoke-direct {v1}, Lw0/e;-><init>()V

    iput-object v1, v0, Lp1/a;->q:Lw0/e;

    iget-object v2, p0, Lp1/a;->q:Lw0/e;

    invoke-virtual {v1, v2}, Lw0/e;->b(Lw0/e;)V

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lp1/a;->r:Ljava/util/Map;

    iget-object p0, p0, Lp1/a;->r:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lp1/a;->t:Z

    iput-boolean p0, v0, Lp1/a;->v:Z
    :try_end_23
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v0

    :catch_24
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Class;)Lp1/a;
    .registers 3
    .param p1  # Ljava/lang/Class;
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
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->d(Ljava/lang/Class;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lp1/a;->s:Ljava/lang/Class;

    iget p1, p0, Lp1/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public e(Lz0/k;)Lp1/a;
    .registers 3
    .param p1  # Lz0/k;
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
            "Lz0/k;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->e(Lz0/k;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lp1/a;->c:Lz0/k;

    iget p1, p0, Lp1/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lp1/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_ae

    check-cast p1, Lp1/a;

    iget v0, p1, Lp1/a;->b:F

    iget v2, p0, Lp1/a;->b:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_ae

    iget v0, p0, Lp1/a;->f:I

    iget v2, p1, Lp1/a;->f:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lp1/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lp1/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lt1/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget v0, p0, Lp1/a;->h:I

    iget v2, p1, Lp1/a;->h:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lp1/a;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lp1/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lt1/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget v0, p0, Lp1/a;->p:I

    iget v2, p1, Lp1/a;->p:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lp1/a;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lp1/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lt1/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-boolean v0, p0, Lp1/a;->i:Z

    iget-boolean v2, p1, Lp1/a;->i:Z

    if-ne v0, v2, :cond_ae

    iget v0, p0, Lp1/a;->j:I

    iget v2, p1, Lp1/a;->j:I

    if-ne v0, v2, :cond_ae

    iget v0, p0, Lp1/a;->k:I

    iget v2, p1, Lp1/a;->k:I

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lp1/a;->m:Z

    iget-boolean v2, p1, Lp1/a;->m:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lp1/a;->n:Z

    iget-boolean v2, p1, Lp1/a;->n:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lp1/a;->w:Z

    iget-boolean v2, p1, Lp1/a;->w:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lp1/a;->x:Z

    iget-boolean v2, p1, Lp1/a;->x:Z

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lp1/a;->c:Lz0/k;

    iget-object v2, p1, Lp1/a;->c:Lz0/k;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lp1/a;->d:Lcom/bumptech/glide/e;

    iget-object v2, p1, Lp1/a;->d:Lcom/bumptech/glide/e;

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lp1/a;->q:Lw0/e;

    iget-object v2, p1, Lp1/a;->q:Lw0/e;

    invoke-virtual {v0, v2}, Lw0/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lp1/a;->r:Ljava/util/Map;

    iget-object v2, p1, Lp1/a;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lp1/a;->s:Ljava/lang/Class;

    iget-object v2, p1, Lp1/a;->s:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lp1/a;->l:Lw0/c;

    iget-object v2, p1, Lp1/a;->l:Lw0/c;

    invoke-static {v0, v2}, Lt1/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object p0, p0, Lp1/a;->u:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lp1/a;->u:Landroid/content/res/Resources$Theme;

    invoke-static {p0, p1}, Lt1/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ae

    const/4 v1, 0x1

    :cond_ae
    return v1
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Lp1/a;
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
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
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->f(Landroid/graphics/drawable/Drawable;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    iput-object p1, p0, Lp1/a;->e:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lp1/a;->a:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lp1/a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lp1/a;->f:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public h(Z)Lp1/a;
    .registers 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->h(Z)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    iput-boolean p1, p0, Lp1/a;->x:Z

    iget p1, p0, Lp1/a;->a:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lp1/a;->b:F

    sget-object v1, Lt1/f;->a:[C

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget v1, p0, Lp1/a;->f:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lp1/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lp1/a;->h:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lp1/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lp1/a;->p:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lp1/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lp1/a;->i:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lp1/a;->j:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lp1/a;->k:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lp1/a;->m:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lp1/a;->n:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lp1/a;->w:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lp1/a;->x:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lp1/a;->c:Lz0/k;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lp1/a;->d:Lcom/bumptech/glide/e;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lp1/a;->q:Lw0/e;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lp1/a;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lp1/a;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lp1/a;->l:Lw0/c;

    invoke-static {v1, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object p0, p0, Lp1/a;->u:Landroid/content/res/Resources$Theme;

    invoke-static {p0, v0}, Lt1/f;->f(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final i(Lg1/l;Lw0/g;)Lp1/a;
    .registers 5
    .param p1  # Lg1/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lw0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg1/l;",
            "Lw0/g<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lp1/a;->i(Lg1/l;Lw0/g;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object v0, Lg1/l;->f:Lw0/d;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lp1/a;->n(Lw0/d;Ljava/lang/Object;)Lp1/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lp1/a;->r(Lw0/g;Z)Lp1/a;

    move-result-object p0

    return-object p0
.end method

.method public j(II)Lp1/a;
    .registers 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lp1/a;->j(II)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    iput p1, p0, Lp1/a;->k:I

    iput p2, p0, Lp1/a;->j:I

    iget p1, p0, Lp1/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public k(Landroid/graphics/drawable/Drawable;)Lp1/a;
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
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
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->k(Landroid/graphics/drawable/Drawable;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    iput-object p1, p0, Lp1/a;->g:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lp1/a;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lp1/a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lp1/a;->h:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public l(Lcom/bumptech/glide/e;)Lp1/a;
    .registers 3
    .param p1  # Lcom/bumptech/glide/e;
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
            "Lcom/bumptech/glide/e;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->l(Lcom/bumptech/glide/e;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lp1/a;->d:Lcom/bumptech/glide/e;

    iget p1, p0, Lp1/a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public final m()Lp1/a;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->t:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n(Lw0/d;Ljava/lang/Object;)Lp1/a;
    .registers 4
    .param p1  # Lw0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lw0/d<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lp1/a;->n(Lw0/d;Ljava/lang/Object;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lp1/a;->q:Lw0/e;

    iget-object v0, v0, Lw0/e;->b:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public o(Lw0/c;)Lp1/a;
    .registers 3
    .param p1  # Lw0/c;
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
            "Lw0/c;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->o(Lw0/c;)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lp1/a;->l:Lw0/c;

    iget p1, p0, Lp1/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public p(Z)Lp1/a;
    .registers 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lp1/a;->p(Z)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_e
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lp1/a;->i:Z

    iget p1, p0, Lp1/a;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public q(Ljava/lang/Class;Lw0/g;Z)Lp1/a;
    .registers 5
    .param p1  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lw0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lw0/g<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lp1/a;->q(Ljava/lang/Class;Lw0/g;Z)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lp1/a;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lp1/a;->a:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lp1/a;->a:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lp1/a;->n:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lp1/a;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp1/a;->y:Z

    if-eqz p3, :cond_34

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p0, Lp1/a;->a:I

    iput-boolean p2, p0, Lp1/a;->m:Z

    :cond_34
    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public r(Lw0/g;Z)Lp1/a;
    .registers 5
    .param p1  # Lw0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/g<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lp1/a;->r(Lw0/g;Z)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance v0, Lg1/o;

    invoke-direct {v0, p1, p2}, Lg1/o;-><init>(Lw0/g;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lp1/a;->q(Ljava/lang/Class;Lw0/g;Z)Lp1/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lp1/a;->q(Ljava/lang/Class;Lw0/g;Z)Lp1/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lp1/a;->q(Ljava/lang/Class;Lw0/g;Z)Lp1/a;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v1, Lk1/d;

    invoke-direct {v1, p1}, Lk1/d;-><init>(Lw0/g;)V

    invoke-virtual {p0, v0, v1, p2}, Lp1/a;->q(Ljava/lang/Class;Lw0/g;Z)Lp1/a;

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method

.method public s(Z)Lp1/a;
    .registers 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lp1/a;->v:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lp1/a;->c()Lp1/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1/a;->s(Z)Lp1/a;

    move-result-object p0

    return-object p0

    :cond_d
    iput-boolean p1, p0, Lp1/a;->z:Z

    iget p1, p0, Lp1/a;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lp1/a;->a:I

    invoke-virtual {p0}, Lp1/a;->m()Lp1/a;

    return-object p0
.end method
