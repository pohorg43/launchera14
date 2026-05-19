.class public final Ll1/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll1/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:La1/d;

.field public final b:Ll1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Ll1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La1/d;Ll1/e;Ll1/e;)V
    .registers 4
    .param p1  # La1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ll1/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ll1/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/d;",
            "Ll1/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Ll1/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/c;->a:La1/d;

    iput-object p2, p0, Ll1/c;->b:Ll1/e;

    iput-object p3, p0, Ll1/c;->c:Ll1/e;

    return-void
.end method


# virtual methods
.method public a(Lz0/w;Lw0/e;)Lz0/w;
    .registers 5
    .param p1  # Lz0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/w<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lw0/e;",
            ")",
            "Lz0/w<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1d

    iget-object p1, p0, Ll1/c;->b:Ll1/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Ll1/c;->a:La1/d;

    invoke-static {v0, p0}, Lg1/e;->c(Landroid/graphics/Bitmap;La1/d;)Lg1/e;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ll1/e;->a(Lz0/w;Lw0/e;)Lz0/w;

    move-result-object p0

    return-object p0

    :cond_1d
    instance-of v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_28

    iget-object p0, p0, Ll1/c;->c:Ll1/e;

    invoke-interface {p0, p1, p2}, Ll1/e;->a(Lz0/w;Lw0/e;)Lz0/w;

    move-result-object p0

    return-object p0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method
