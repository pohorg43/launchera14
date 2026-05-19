.class public Ll1/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll1/e<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz0/w;Lw0/e;)Lz0/w;
    .registers 6
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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lw0/e;",
            ")",
            "Lz0/w<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lcom/bumptech/glide/load/resource/gif/b;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lu0/a;

    invoke-interface {p0}, Lu0/a;->d()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Lh1/b;

    sget-object p2, Lcom/bumptech/glide/util/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result p2

    if-nez p2, :cond_36

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p2

    if-eqz p2, :cond_36

    new-instance p2, Lcom/bumptech/glide/util/a$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p2, v0, v1, v2}, Lcom/bumptech/glide/util/a$b;-><init>([BII)V

    goto :goto_37

    :cond_36
    const/4 p2, 0x0

    :goto_37
    if-eqz p2, :cond_49

    iget v0, p2, Lcom/bumptech/glide/util/a$b;->a:I

    if-nez v0, :cond_49

    iget v0, p2, Lcom/bumptech/glide/util/a$b;->b:I

    iget-object p2, p2, Lcom/bumptech/glide/util/a$b;->c:[B

    array-length p2, p2

    if-ne v0, p2, :cond_49

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    goto :goto_5b

    :cond_49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p0, p2

    :goto_5b
    invoke-direct {p1, p0}, Lh1/b;-><init>([B)V

    return-object p1
.end method
