.class public final Landroidx/palette/graphics/Palette;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/Palette$Filter;,
        Landroidx/palette/graphics/Palette$Builder;,
        Landroidx/palette/graphics/Palette$Swatch;,
        Landroidx/palette/graphics/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field public static final DEFAULT_FILTER:Landroidx/palette/graphics/Palette$Filter;

.field public static final DEFAULT_RESIZE_BITMAP_AREA:I = 0x3100

.field public static final LOG_TAG:Ljava/lang/String; = "Palette"

.field public static final LOG_TIMINGS:Z = false

.field public static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field public static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f


# instance fields
.field private final mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSelectedSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/palette/graphics/Target;",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwatches:Ljava/util/List;
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

.field private final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/palette/graphics/Palette$1;

    invoke-direct {v0}, Landroidx/palette/graphics/Palette$1;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$Filter;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Target;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    iput-object p2, p0, Landroidx/palette/graphics/Palette;->mTargets:Ljava/util/List;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/palette/graphics/Palette;->findDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p1

    iput-object p1, p0, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    return-void
.end method

.method private findDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_22

    iget-object v4, p0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {v4}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v5

    if-le v5, v1, :cond_1f

    invoke-virtual {v4}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    move-object v2, v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_22
    return-object v2
.end method

.method public static from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;
    .registers 2
    .param p0  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v0, p0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static from(Ljava/util/List;)Landroidx/palette/graphics/Palette;
    .registers 2
    .param p0  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;)",
            "Landroidx/palette/graphics/Palette;"
        }
    .end annotation

    new-instance v0, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v0, p0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Landroidx/palette/graphics/Palette;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/palette/graphics/Palette$Builder;->maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILandroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Landroidx/palette/graphics/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Landroidx/palette/graphics/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/palette/graphics/Palette$Builder;->maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroidx/palette/graphics/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Landroidx/palette/graphics/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private generateScore(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Target;)F
    .registers 9

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v0

    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    const/4 v1, 0x1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result p0

    goto :goto_f

    :cond_e
    move p0, v1

    :goto_f
    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getSaturationWeight()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-lez v2, :cond_2d

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getSaturationWeight()F

    move-result v2

    aget v1, v0, v1

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getTargetSaturation()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v4, v1

    mul-float/2addr v1, v2

    goto :goto_2e

    :cond_2d
    move v1, v3

    :goto_2e
    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getLightnessWeight()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_49

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getLightnessWeight()F

    move-result v2

    const/4 v5, 0x2

    aget v0, v0, v5

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getTargetLightness()F

    move-result v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    goto :goto_4a

    :cond_49
    move v4, v3

    :goto_4a
    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getPopulationWeight()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5f

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getPopulationWeight()F

    move-result p2

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result p1

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float v3, p1, p2

    :cond_5f
    add-float/2addr v1, v4

    add-float/2addr v1, v3

    return v1
.end method

.method private generateScoredTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Landroidx/palette/graphics/Palette;->getMaxScoredSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroidx/palette/graphics/Target;->isExclusive()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_16
    return-object v0
.end method

.method private getMaxScoredSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_28

    iget-object v4, p0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/palette/graphics/Palette$Swatch;

    invoke-direct {p0, v4, p1}, Landroidx/palette/graphics/Palette;->shouldBeScoredForTarget(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Target;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-direct {p0, v4, p1}, Landroidx/palette/graphics/Palette;->generateScore(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Target;)F

    move-result v5

    if-eqz v2, :cond_23

    cmpl-float v6, v5, v1

    if-lez v6, :cond_25

    :cond_23
    move-object v2, v4

    move v1, v5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_28
    return-object v2
.end method

.method private shouldBeScoredForTarget(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Target;)Z
    .registers 8

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getMinimumSaturation()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3b

    aget v2, v0, v1

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getMaximumSaturation()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3b

    const/4 v2, 0x2

    aget v3, v0, v2

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getMinimumLightness()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3b

    aget v0, v0, v2

    invoke-virtual {p2}, Landroidx/palette/graphics/Target;->getMaximumLightness()F

    move-result p2

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_3b

    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    return v1
.end method


# virtual methods
.method public generate()V
    .registers 6

    iget-object v0, p0, Landroidx/palette/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Landroidx/palette/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/palette/graphics/Target;

    invoke-virtual {v2}, Landroidx/palette/graphics/Target;->normalizeWeights()V

    iget-object v3, p0, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0, v2}, Landroidx/palette/graphics/Palette;->generateScoredTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public getColorForTarget(Landroidx/palette/graphics/Target;I)I
    .registers 3
    .param p1  # Landroidx/palette/graphics/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/palette/graphics/Palette;->getSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p2

    :cond_a
    return p2
.end method

.method public getDarkMutedColor(I)I
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0, p1}, Landroidx/palette/graphics/Palette;->getColorForTarget(Landroidx/palette/graphics/Target;I)I

    move-result p0

    return p0
.end method

.method public getDarkMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette;->getSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getDarkVibrantColor(I)I
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0, p1}, Landroidx/palette/graphics/Palette;->getColorForTarget(Landroidx/palette/graphics/Target;I)I

    move-result p0

    return p0
.end method

.method public getDarkVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette;->getSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getDominantColor(I)I
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    :cond_8
    return p1
.end method

.method public getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    return-object p0
.end method

.method public getLightMutedColor(I)I
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0, p1}, Landroidx/palette/graphics/Palette;->getColorForTarget(Landroidx/palette/graphics/Target;I)I

    move-result p0

    return p0
.end method

.method public getLightMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette;->getSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getLightVibrantColor(I)I
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0, p1}, Landroidx/palette/graphics/Palette;->getColorForTarget(Landroidx/palette/graphics/Target;I)I

    move-result p0

    return p0
.end method

.method public getLightVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette;->getSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getMutedColor(I)I
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0, p1}, Landroidx/palette/graphics/Palette;->getColorForTarget(Landroidx/palette/graphics/Target;I)I

    move-result p0

    return p0
.end method

.method public getMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette;->getSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;
    .registers 2
    .param p1  # Landroidx/palette/graphics/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/palette/graphics/Palette$Swatch;

    return-object p0
.end method

.method public getSwatches()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTargets()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Target;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVibrantColor(I)I
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0, p1}, Landroidx/palette/graphics/Palette;->getColorForTarget(Landroidx/palette/graphics/Target;I)I

    move-result p0

    return p0
.end method

.method public getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette;->getSwatchForTarget(Landroidx/palette/graphics/Target;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method
