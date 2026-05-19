.class public final Lg1/u;
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
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lz0/s;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Lz0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lz0/w;)V
    .registers 4
    .param p1  # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lz0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lz0/w<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lg1/u;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lg1/u;->b:Lz0/w;

    return-void
.end method

.method public static c(Landroid/content/res/Resources;Lz0/w;)Lz0/w;
    .registers 3
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lz0/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lz0/w<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lz0/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lg1/u;

    invoke-direct {v0, p0, p1}, Lg1/u;-><init>(Landroid/content/res/Resources;Lz0/w;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 1

    iget-object p0, p0, Lg1/u;->b:Lz0/w;

    invoke-interface {p0}, Lz0/w;->a()I

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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lg1/u;->a:Landroid/content/res/Resources;

    iget-object p0, p0, Lg1/u;->b:Lz0/w;

    invoke-interface {p0}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public initialize()V
    .registers 2

    iget-object p0, p0, Lg1/u;->b:Lz0/w;

    instance-of v0, p0, Lz0/s;

    if-eqz v0, :cond_b

    check-cast p0, Lz0/s;

    invoke-interface {p0}, Lz0/s;->initialize()V

    :cond_b
    return-void
.end method

.method public recycle()V
    .registers 1

    iget-object p0, p0, Lg1/u;->b:Lz0/w;

    invoke-interface {p0}, Lz0/w;->recycle()V

    return-void
.end method
