.class public abstract Lg1/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw0/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract transform(La1/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .param p1  # La1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final transform(Landroid/content/Context;Lz0/w;II)Lz0/w;
    .registers 7
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
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lz0/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {p3, p4}, Lt1/f;->i(II)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p1

    iget-object p1, p1, Lcom/bumptech/glide/b;->b:La1/d;

    invoke-interface {p2}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    :cond_1a
    if-ne p4, v1, :cond_20

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    :cond_20
    invoke-virtual {p0, p1, v0, p3, p4}, Lg1/f;->transform(La1/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-static {p0, p1}, Lg1/e;->c(Landroid/graphics/Bitmap;La1/d;)Lg1/e;

    move-result-object p2

    :goto_2f
    return-object p2

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot apply transformation on width: "

    const-string p2, " or height: "

    const-string v0, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-static {p1, p3, p2, p4, v0}, Landroidx/room/q0;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
