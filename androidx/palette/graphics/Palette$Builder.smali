.class public final Landroidx/palette/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxColors:I

.field private mRegion:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mResizeArea:I

.field private mResizeMaxDimension:I

.field private final mSwatches:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    const/16 v1, 0x10

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v1, 0x3100

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4d

    sget-object v2, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$Filter;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bitmap is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    const/16 v0, 0x10

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v0, 0x3100

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    sget-object v1, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$Filter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List of Swatches is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I
    .registers 12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v8, v7

    new-array v9, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v9

    move v3, v8

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez p1, :cond_1b

    return-object v9

    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int v1, p1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v0, :cond_3d

    iget-object v3, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    mul-int/2addr v4, v8

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    mul-int v3, v2, p1

    invoke-static {v9, v4, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3d
    return-object v1
.end method

.method private scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    iget v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const-wide/high16 v1, -0x4010000000000000L  # -1.0

    if-lez v0, :cond_1b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v3, v0

    iget p0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    if-le v3, p0, :cond_32

    int-to-double v0, p0

    int-to-double v2, v3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    goto :goto_32

    :cond_1b
    iget v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-le v0, p0, :cond_32

    int-to-double v1, p0

    int-to-double v3, v0

    div-double/2addr v1, v3

    :cond_32
    :goto_32
    const-wide/16 v3, 0x0

    cmpg-double p0, v1, v3

    if-gtz p0, :cond_39

    return-object p1

    :cond_39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-double v3, p0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFilter(Landroidx/palette/graphics/Palette$Filter;)Landroidx/palette/graphics/Palette$Builder;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public addTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Builder;
    .registers 3
    .param p1  # Landroidx/palette/graphics/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object p0
.end method

.method public clearFilters()Landroidx/palette/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public clearRegion()Landroidx/palette/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public clearTargets()Landroidx/palette/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    return-object p0
.end method

.method public generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .registers 5
    .param p1  # Landroidx/palette/graphics/Palette$PaletteAsyncListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/palette/graphics/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Landroidx/palette/graphics/Palette;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_16

    new-instance v0, Landroidx/palette/graphics/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Landroidx/palette/graphics/Palette$Builder$1;-><init>(Landroidx/palette/graphics/Palette$Builder;Landroidx/palette/graphics/Palette$PaletteAsyncListener;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object p0, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generate()Landroidx/palette/graphics/Palette;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_88

    invoke-direct {p0, v0}, Landroidx/palette/graphics/Palette$Builder;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_59

    if-eqz v1, :cond_59

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_59
    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer;

    invoke-direct {p0, v0}, Landroidx/palette/graphics/Palette$Builder;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    iget v3, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    iget-object v4, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6b

    const/4 v4, 0x0

    goto :goto_79

    :cond_6b
    iget-object v4, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroidx/palette/graphics/Palette$Filter;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/palette/graphics/Palette$Filter;

    :goto_79
    invoke-direct {v1, v2, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/Palette$Filter;)V

    iget-object v2, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_83

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_83
    invoke-virtual {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v0

    goto :goto_8c

    :cond_88
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    if-eqz v0, :cond_97

    :goto_8c
    new-instance v1, Landroidx/palette/graphics/Palette;

    iget-object p0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-direct {v1, v0, p0}, Landroidx/palette/graphics/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette;->generate()V

    return-object v1

    :cond_97
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    return-object p0
.end method

.method public resizeBitmapArea(I)Landroidx/palette/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    return-object p0
.end method

.method public resizeBitmapSize(I)Landroidx/palette/graphics/Palette$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    return-object p0
.end method

.method public setRegion(IIII)Landroidx/palette/graphics/Palette$Builder;
    .registers 9
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    :cond_f
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_32

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    return-object p0
.end method
