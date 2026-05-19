.class public Lz0/d;
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lz0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lz0/g$a;

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


# direct methods
.method public constructor <init>(Ljava/util/List;Lz0/h;Lz0/g$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw0/c;",
            ">;",
            "Lz0/h<",
            "*>;",
            "Lz0/g$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz0/d;->d:I

    iput-object p1, p0, Lz0/d;->a:Ljava/util/List;

    iput-object p2, p0, Lz0/d;->b:Lz0/h;

    iput-object p3, p0, Lz0/d;->c:Lz0/g$a;

    return-void
.end method

.method public constructor <init>(Lz0/h;Lz0/g$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/h<",
            "*>;",
            "Lz0/g$a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lz0/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lz0/d;->d:I

    iput-object v0, p0, Lz0/d;->a:Ljava/util/List;

    iput-object p1, p0, Lz0/d;->b:Lz0/h;

    iput-object p2, p0, Lz0/d;->c:Lz0/g$a;

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 9

    :cond_0
    :goto_0
    iget-object v0, p0, Lz0/d;->f:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_69

    iget v3, p0, Lz0/d;->g:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    if-nez v0, :cond_14

    goto :goto_69

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lz0/d;->h:Ld1/n$a;

    move v0, v1

    :cond_18
    :goto_18
    if-nez v0, :cond_68

    iget v3, p0, Lz0/d;->g:I

    iget-object v4, p0, Lz0/d;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_26

    move v3, v2

    goto :goto_27

    :cond_26
    move v3, v1

    :goto_27
    if-eqz v3, :cond_68

    iget-object v3, p0, Lz0/d;->f:Ljava/util/List;

    iget v4, p0, Lz0/d;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lz0/d;->g:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/n;

    iget-object v4, p0, Lz0/d;->i:Ljava/io/File;

    iget-object v5, p0, Lz0/d;->b:Lz0/h;

    iget v6, v5, Lz0/h;->e:I

    iget v7, v5, Lz0/h;->f:I

    iget-object v5, v5, Lz0/h;->i:Lw0/e;

    invoke-interface {v3, v4, v6, v7, v5}, Ld1/n;->buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;

    move-result-object v3

    iput-object v3, p0, Lz0/d;->h:Ld1/n$a;

    iget-object v3, p0, Lz0/d;->h:Ld1/n$a;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lz0/d;->b:Lz0/h;

    iget-object v4, p0, Lz0/d;->h:Ld1/n$a;

    iget-object v4, v4, Ld1/n$a;->c:Lx0/d;

    invoke-interface {v4}, Lx0/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lz0/h;->g(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v0, p0, Lz0/d;->h:Ld1/n$a;

    iget-object v0, v0, Ld1/n$a;->c:Lx0/d;

    iget-object v3, p0, Lz0/d;->b:Lz0/h;

    iget-object v3, v3, Lz0/h;->o:Lcom/bumptech/glide/e;

    invoke-interface {v0, v3, p0}, Lx0/d;->c(Lcom/bumptech/glide/e;Lx0/d$a;)V

    move v0, v2

    goto :goto_18

    :cond_68
    return v0

    :cond_69
    :goto_69
    iget v0, p0, Lz0/d;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lz0/d;->d:I

    iget-object v2, p0, Lz0/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_77

    return v1

    :cond_77
    iget-object v0, p0, Lz0/d;->a:Ljava/util/List;

    iget v2, p0, Lz0/d;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/c;

    new-instance v2, Lz0/e;

    iget-object v3, p0, Lz0/d;->b:Lz0/h;

    iget-object v4, v3, Lz0/h;->n:Lw0/c;

    invoke-direct {v2, v0, v4}, Lz0/e;-><init>(Lw0/c;Lw0/c;)V

    invoke-virtual {v3}, Lz0/h;->b()Lb1/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lb1/a;->b(Lw0/c;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lz0/d;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    iput-object v0, p0, Lz0/d;->e:Lw0/c;

    iget-object v0, p0, Lz0/d;->b:Lz0/h;

    iget-object v0, v0, Lz0/h;->c:Lcom/bumptech/glide/d;

    iget-object v0, v0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lz0/d;->f:Ljava/util/List;

    iput v1, p0, Lz0/d;->g:I

    goto/16 :goto_0
.end method

.method public cancel()V
    .registers 1

    iget-object p0, p0, Lz0/d;->h:Ld1/n$a;

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

    iget-object v0, p0, Lz0/d;->c:Lz0/g$a;

    iget-object v1, p0, Lz0/d;->e:Lw0/c;

    iget-object p0, p0, Lz0/d;->h:Ld1/n$a;

    iget-object p0, p0, Ld1/n$a;->c:Lx0/d;

    sget-object v2, Lcom/bumptech/glide/load/a;->c:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, p1, p0, v2}, Lz0/g$a;->a(Lw0/c;Ljava/lang/Exception;Lx0/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lz0/d;->c:Lz0/g$a;

    iget-object v1, p0, Lz0/d;->e:Lw0/c;

    iget-object v2, p0, Lz0/d;->h:Ld1/n$a;

    iget-object v3, v2, Ld1/n$a;->c:Lx0/d;

    sget-object v4, Lcom/bumptech/glide/load/a;->c:Lcom/bumptech/glide/load/a;

    iget-object v5, p0, Lz0/d;->e:Lw0/c;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lz0/g$a;->b(Lw0/c;Ljava/lang/Object;Lx0/d;Lcom/bumptech/glide/load/a;Lw0/c;)V

    return-void
.end method
