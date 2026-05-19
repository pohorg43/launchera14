.class public Lz0/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx0/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx0/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld1/n$a;

.field public final synthetic b:Lz0/b0;


# direct methods
.method public constructor <init>(Lz0/b0;Ld1/n$a;)V
    .registers 3

    iput-object p1, p0, Lz0/a0;->b:Lz0/b0;

    iput-object p2, p0, Lz0/a0;->a:Ld1/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Exception;)V
    .registers 5
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz0/a0;->b:Lz0/b0;

    iget-object v1, p0, Lz0/a0;->a:Ld1/n$a;

    iget-object v0, v0, Lz0/b0;->f:Ld1/n$a;

    if-eqz v0, :cond_c

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_20

    iget-object v0, p0, Lz0/a0;->b:Lz0/b0;

    iget-object p0, p0, Lz0/a0;->a:Ld1/n$a;

    iget-object v1, v0, Lz0/b0;->b:Lz0/g$a;

    iget-object v0, v0, Lz0/b0;->g:Lz0/e;

    iget-object p0, p0, Ld1/n$a;->c:Lx0/d;

    invoke-interface {p0}, Lx0/d;->e()Lcom/bumptech/glide/load/a;

    move-result-object v2

    invoke-interface {v1, v0, p1, p0, v2}, Lz0/g$a;->a(Lw0/c;Ljava/lang/Exception;Lx0/d;Lcom/bumptech/glide/load/a;)V

    :cond_20
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz0/a0;->b:Lz0/b0;

    iget-object v1, p0, Lz0/a0;->a:Ld1/n$a;

    iget-object v0, v0, Lz0/b0;->f:Ld1/n$a;

    if-eqz v0, :cond_c

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_3f

    iget-object v0, p0, Lz0/a0;->b:Lz0/b0;

    iget-object p0, p0, Lz0/a0;->a:Ld1/n$a;

    iget-object v1, v0, Lz0/b0;->a:Lz0/h;

    iget-object v1, v1, Lz0/h;->p:Lz0/k;

    if-eqz p1, :cond_2d

    iget-object v2, p0, Ld1/n$a;->c:Lx0/d;

    invoke-interface {v2}, Lx0/d;->e()Lcom/bumptech/glide/load/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz0/k;->c(Lcom/bumptech/glide/load/a;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iput-object p1, v0, Lz0/b0;->e:Ljava/lang/Object;

    iget-object p0, v0, Lz0/b0;->b:Lz0/g$a;

    invoke-interface {p0}, Lz0/g$a;->e()V

    goto :goto_3f

    :cond_2d
    iget-object v1, v0, Lz0/b0;->b:Lz0/g$a;

    iget-object v2, p0, Ld1/n$a;->a:Lw0/c;

    iget-object v3, p0, Ld1/n$a;->c:Lx0/d;

    invoke-interface {v3}, Lx0/d;->e()Lcom/bumptech/glide/load/a;

    move-result-object v4

    iget-object v5, v0, Lz0/b0;->g:Lz0/e;

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lz0/g$a;->b(Lw0/c;Ljava/lang/Object;Lx0/d;Lcom/bumptech/glide/load/a;Lw0/c;)V

    :cond_3f
    :goto_3f
    return-void
.end method
