.class public final Lcom/bumptech/glide/load/resource/gif/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Lu0/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:La1/d;


# direct methods
.method public constructor <init>(La1/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/c;->a:La1/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILw0/e;)Lz0/w;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lu0/a;

    invoke-interface {p1}, Lu0/a;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/c;->a:La1/d;

    invoke-static {p1, p0}, Lg1/e;->c(Landroid/graphics/Bitmap;La1/d;)Lg1/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lw0/e;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lu0/a;

    const/4 p0, 0x1

    return p0
.end method
