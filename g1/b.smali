.class public Lg1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw0/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw0/f<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:La1/d;

.field public final b:Lw0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La1/d;Lw0/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/d;",
            "Lw0/f<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/b;->a:La1/d;

    iput-object p2, p0, Lg1/b;->b:Lw0/f;

    return-void
.end method


# virtual methods
.method public a(Lw0/e;)Lcom/bumptech/glide/load/c;
    .registers 2
    .param p1  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lg1/b;->b:Lw0/f;

    invoke-interface {p0, p1}, Lw0/f;->a(Lw0/e;)Lcom/bumptech/glide/load/c;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/io/File;Lw0/e;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lz0/w;

    iget-object v0, p0, Lg1/b;->b:Lw0/f;

    new-instance v1, Lg1/e;

    invoke-interface {p1}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lg1/b;->a:La1/d;

    invoke-direct {v1, p1, p0}, Lg1/e;-><init>(Landroid/graphics/Bitmap;La1/d;)V

    invoke-interface {v0, v1, p2, p3}, Lw0/a;->b(Ljava/lang/Object;Ljava/io/File;Lw0/e;)Z

    move-result p0

    return p0
.end method
