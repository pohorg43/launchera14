.class public Lg1/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/w;
.implements Lz0/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz0/w<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lz0/s;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:La1/d;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;La1/d;)V
    .registers 4
    .param p1  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # La1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lg1/e;->a:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lg1/e;->b:La1/d;

    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;La1/d;)Lg1/e;
    .registers 3
    .param p0  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1  # La1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lg1/e;

    invoke-direct {v0, p0, p1}, Lg1/e;-><init>(Landroid/graphics/Bitmap;La1/d;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 1

    iget-object p0, p0, Lg1/e;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lt1/f;->d(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lg1/e;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public initialize()V
    .registers 1

    iget-object p0, p0, Lg1/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .registers 2

    iget-object v0, p0, Lg1/e;->b:La1/d;

    iget-object p0, p0, Lg1/e;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, p0}, La1/d;->d(Landroid/graphics/Bitmap;)V

    return-void
.end method
