.class Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vbox"
.end annotation


# instance fields
.field private mLowerIndex:I

.field private mMaxBlue:I

.field private mMaxGreen:I

.field private mMaxRed:I

.field private mMinBlue:I

.field private mMinGreen:I

.field private mMinRed:I

.field private mPopulation:I

.field private mUpperIndex:I

.field public final synthetic this$0:Landroidx/palette/graphics/ColorCutQuantizer;


# direct methods
.method public constructor <init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V
    .registers 4

    iput-object p1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iput p3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    return-void
.end method


# virtual methods
.method public final canSplit()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final findSplitPoint()I
    .registers 8

    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    iget-object v2, v1, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    iget-object v1, v1, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v2, v0, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->sort([III)V

    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v2, v0, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v4, 0x0

    :goto_28
    iget v5, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v3, v5, :cond_3d

    aget v6, v2, v3

    aget v6, v1, v6

    add-int/2addr v4, v6

    if-lt v4, v0, :cond_3a

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_3d
    iget p0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return p0
.end method

.method public final fitBox()V
    .registers 14

    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    iget-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    iget-object v0, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v5

    move v4, v3

    move v5, v4

    :goto_14
    iget v10, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v10, :cond_3e

    aget v10, v1, v2

    aget v11, v0, v10

    add-int/2addr v9, v11

    invoke-static {v10}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v11

    invoke-static {v10}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v12

    invoke-static {v10}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v10

    if-le v11, v6, :cond_2c

    move v6, v11

    :cond_2c
    if-ge v11, v3, :cond_2f

    move v3, v11

    :cond_2f
    if-le v12, v7, :cond_32

    move v7, v12

    :cond_32
    if-ge v12, v4, :cond_35

    move v4, v12

    :cond_35
    if-le v10, v8, :cond_38

    move v8, v10

    :cond_38
    if-ge v10, v5, :cond_3b

    move v5, v10

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3e
    iput v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    iput v6, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iput v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    iput v7, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iput v5, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    iput v8, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iput v9, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    return-void
.end method

.method public final getAverageColor()Landroidx/palette/graphics/Palette$Swatch;
    .registers 11

    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    iget-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    iget-object v0, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_c
    iget v7, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v7, :cond_2a

    aget v7, v1, v2

    aget v8, v0, v7

    add-int/2addr v4, v8

    invoke-static {v7}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    invoke-static {v7}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v5, v9

    invoke-static {v7}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v7

    mul-int/2addr v8, v7

    add-int/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2a
    int-to-float p0, v3

    int-to-float v0, v4

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float v1, v5

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, v6

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v2, Landroidx/palette/graphics/Palette$Swatch;

    invoke-static {p0, v1, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result p0

    invoke-direct {v2, p0, v4}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    return-object v2
.end method

.method public final getColorCount()I
    .registers 2

    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getLongestColorDimension()I
    .registers 4

    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget p0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v2, p0

    if-lt v0, v1, :cond_15

    if-lt v0, v2, :cond_15

    const/4 p0, -0x3

    return p0

    :cond_15
    if-lt v1, v0, :cond_1b

    if-lt v1, v2, :cond_1b

    const/4 p0, -0x2

    return p0

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public final getVolume()I
    .registers 4

    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget p0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final splitBox()Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    .registers 6

    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v1, v2, v3, v4}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    iput v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    return-object v1

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can not split a box with only 1 color"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
