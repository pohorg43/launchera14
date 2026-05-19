.class public Lcom/bumptech/glide/load/resource/gif/b$a;
.super Lq1/c;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:I

.field public final c:J

.field public d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .registers 5

    invoke-direct {p0}, Lq1/c;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->a:Landroid/os/Handler;

    iput p2, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->b:I

    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->c:J

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lr1/b;)V
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lr1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->d:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->a:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->a:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/bumptech/glide/load/resource/gif/b$a;->c:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
