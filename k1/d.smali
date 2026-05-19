.class public Lk1/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw0/g<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lw0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw0/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lk1/d;->b:Lw0/g;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lk1/d;

    if-eqz v0, :cond_f

    check-cast p1, Lk1/d;

    iget-object p0, p0, Lk1/d;->b:Lw0/g;

    iget-object p1, p1, Lk1/d;->b:Lw0/g;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lk1/d;->b:Lw0/g;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public transform(Landroid/content/Context;Lz0/w;II)Lz0/w;
    .registers 9
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lz0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz0/w<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;II)",
            "Lz0/w<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/b;->b:La1/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lg1/e;

    invoke-direct {v3, v2, v1}, Lg1/e;-><init>(Landroid/graphics/Bitmap;La1/d;)V

    iget-object v1, p0, Lk1/d;->b:Lw0/g;

    invoke-interface {v1, p1, v3, p3, p4}, Lw0/g;->transform(Landroid/content/Context;Lz0/w;II)Lz0/w;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_24

    invoke-virtual {v3}, Lg1/e;->recycle()V

    :cond_24
    invoke-interface {p1}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lk1/d;->b:Lw0/g;

    iget-object p3, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object p3, p3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {p3, p0, p1}, Lcom/bumptech/glide/load/resource/gif/b;->c(Lw0/g;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1  # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lk1/d;->b:Lw0/g;

    invoke-interface {p0, p1}, Lw0/c;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
