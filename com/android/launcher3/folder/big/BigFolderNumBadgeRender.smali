.class public Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BADGE_NUMBER_TEXT_SIZE_PERCENT:F = 0.3f

.field private static final DEBUG:Z = false

.field private static final DOT_SCALE:F = 0.05555f

.field private static final DOT_SIZE_PERCENT:F = 0.2308f

.field private static final FLOAT_1:F = 1.0f

.field private static final MIN_NUMBER_TEXT_SIZE_PERCENT:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "BigFolderNumBadgeRender"


# instance fields
.field private final mBadgeNumBgHeight:I

.field private final mBadgeNumBgWidth:I

.field private final mBadgeNumEndOffset:I

.field private final mBadgeNumOffsetRight:I

.field private final mBadgeNumOffsetTop:I

.field private mBadgeNumPadding:I

.field private mBadgeNumPaint:Landroid/text/TextPaint;

.field private final mBadgeNumTextColor:I

.field private final mBadgeNumTextSize:I

.field private final mBadgeNumTopOffset:I

.field private final mDotDrawableRect:Landroid/graphics/Rect;

.field private final mDotEndOffset:F

.field private final mDotSize:I

.field private final mDotTopOffset:F

.field private final mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

.field private mNumFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotDrawableRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    const-string v0, "iconSizePx="

    const-string v1, ", iconVisibleSizePx="

    invoke-static {v0, p2, v1, p3}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Badge"

    const-string v2, "BigFolderNumBadgeRender"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_3e

    const/high16 v1, 0x3f400000  # 0.75f

    const/high16 v3, 0x3e800000  # 0.25f

    int-to-float v4, p3

    mul-float/2addr v4, v2

    div-float/2addr v4, v0

    const/high16 v5, 0x42200000  # 40.0f

    sub-float/2addr v4, v5

    const/high16 v5, 0x41800000  # 16.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    goto :goto_3f

    :cond_3e
    move v4, v2

    :goto_3f
    const v1, 0x3e99999a  # 0.3f

    int-to-float p2, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumTextSize:I

    const v1, 0x3e6c56d6  # 0.2308f

    mul-float/2addr v1, p2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotSize:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumTopOffset:I

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumEndOffset:I

    const v3, 0x7f070823

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float p3, p3

    mul-float/2addr p3, v2

    const/high16 v2, 0x42600000  # 56.0f

    mul-float/2addr v0, v2

    div-float/2addr p3, v0

    mul-float/2addr p3, v3

    float-to-int p3, p3

    iput p3, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgWidth:I

    iput p3, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgHeight:I

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumOffsetRight:I

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumOffsetTop:I

    const p3, 0x7f060543

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumTextColor:I

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->initBadgeNumTextPaint()V

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mNumFormat:Ljava/text/NumberFormat;

    const p3, 0x3d638866  # 0.05555f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotTopOffset:F

    iput p2, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotEndOffset:F

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    const p0, 0x7f07016d

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const p0, 0x7f060509

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private initBadgeNumTextPaint()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_b

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPadding:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;Landroid/graphics/Rect;)V
    .registers 10

    if-nez p2, :cond_a

    const-string p0, "BigFolderNumBadgeRender"

    const-string p1, "Invalid null argument(s) passed in call to draw."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotSize:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    int-to-float v3, v0

    div-float/2addr v3, v2

    iget-object v2, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget-boolean v4, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_27

    iget p3, v2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotEndOffset:F

    sub-float/2addr p3, v0

    invoke-static {v5, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    goto :goto_36

    :cond_27
    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    iget v4, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotEndOffset:F

    add-float/2addr v0, v4

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    :goto_36
    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotTopOffset:F

    sub-float/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotDrawableRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotSize:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotDrawableRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotSize:I

    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Rect;->offset(II)V

    sget-object v2, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    invoke-virtual {v2}, Lcom/android/common/util/CacheUtils;->getDotDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mDotDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    add-float/2addr p3, v1

    add-float/2addr v0, v3

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget p0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v2}, Lcom/android/common/util/CacheUtils;->getDotDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawNumberForBigFolderItem(Landroid/graphics/Canvas;ILcom/android/launcher3/icons/DotRenderer$DrawParams;Landroid/graphics/Rect;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    if-eqz v5, :cond_1b9

    if-lez v2, :cond_1b9

    const-string v5, "BigFolderNumBadgeRender"

    const-string v6, "Badge"

    if-nez v3, :cond_1c

    const-string v0, "drawNumber, Invalid null argument(s) passed in call to draw."

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v7, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    const/16 v8, 0x3e7

    if-le v2, v8, :cond_2c

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_30

    :cond_2c
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_30
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget v8, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgHeight:I

    iget v9, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgWidth:I

    iget v10, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPadding:I

    mul-int/lit8 v11, v10, 0x2

    sub-int v11, v9, v11

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-lez v11, :cond_48

    mul-int/lit8 v10, v10, 0x2

    int-to-float v9, v10

    add-float/2addr v7, v9

    float-to-int v9, v7

    :cond_48
    div-int/lit8 v7, v9, 0x2

    div-int/lit8 v10, v8, 0x2

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int v12, v7

    neg-int v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    iget-object v12, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v11, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget-boolean v12, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const-string v13, "case dotOffsetX is larger than dotOffsetY\n"

    if-nez v12, :cond_e8

    iget v12, v11, Landroid/graphics/Rect;->right:I

    int-to-float v14, v12

    iget v15, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v14

    int-to-float v14, v15

    move/from16 v17, v8

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int v3, v8, v12

    iget v1, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgWidth:I

    move/from16 v18, v10

    div-int/lit8 v10, v1, 0x2

    if-lt v3, v10, :cond_94

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int v3, v15, v3

    iget v10, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgHeight:I

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_85

    goto :goto_94

    :cond_85
    const/16 v3, 0x9

    if-le v2, v3, :cond_90

    sub-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v12, v9

    int-to-float v1, v12

    move v4, v14

    goto :goto_d8

    :cond_90
    move v4, v14

    move/from16 v14, v16

    goto :goto_d9

    :cond_94
    :goto_94
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v8, v12

    sub-int/2addr v1, v8

    int-to-float v1, v1

    iget v3, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v8

    sub-int/2addr v3, v15

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_c2

    invoke-static {v6, v5, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v11, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v1

    sub-int v4, v7, v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget v8, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v3, v1

    sub-int/2addr v8, v3

    int-to-float v1, v8

    add-float/2addr v14, v1

    move/from16 v19, v14

    move v14, v4

    move/from16 v4, v19

    goto :goto_d9

    :cond_c2
    const-string v1, "case dotOffsetY is larger than dotOffsetX\n"

    invoke-static {v6, v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v11, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v3

    sub-int v10, v18, v4

    add-int/2addr v10, v1

    int-to-float v4, v10

    iget v8, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v1, v7, v1

    sub-int/2addr v8, v1

    int-to-float v1, v8

    :goto_d8
    move v14, v1

    :goto_d9
    iget v1, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumOffsetRight:I

    int-to-float v1, v1

    sub-float/2addr v14, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v14, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v3, p3

    move/from16 v8, v18

    goto/16 :goto_15c

    :cond_e8
    move/from16 v17, v8

    move/from16 v18, v10

    iget v3, v11, Landroid/graphics/Rect;->left:I

    int-to-float v8, v3

    iget v10, v11, Landroid/graphics/Rect;->top:I

    int-to-float v12, v10

    iget v14, v4, Landroid/graphics/Rect;->left:I

    sub-int v15, v3, v14

    if-lt v15, v7, :cond_112

    iget v15, v4, Landroid/graphics/Rect;->top:I

    sub-int v15, v10, v15

    move/from16 v16, v8

    move/from16 v8, v18

    if-ge v15, v8, :cond_103

    goto :goto_114

    :cond_103
    const/16 v4, 0x9

    if-le v2, v4, :cond_10f

    iget v4, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgWidth:I

    const/4 v10, 0x2

    invoke-static {v9, v4, v10, v3}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v3

    goto :goto_152

    :cond_10f
    move/from16 v3, v16

    goto :goto_153

    :cond_112
    move/from16 v8, v18

    :goto_114
    iget v9, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v3, v14

    sub-int/2addr v9, v3

    int-to-float v3, v9

    iget v9, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgHeight:I

    div-int/lit8 v9, v9, 0x2

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v14

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v3, v3, v9

    if-lez v3, :cond_13f

    invoke-static {v6, v5, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v11, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v9, v3, v4

    sub-int v9, v7, v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumBgWidth:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v10, v3

    int-to-float v3, v10

    add-float/2addr v12, v3

    move v3, v9

    goto :goto_153

    :cond_13f
    invoke-static {v6, v5, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v9, v3, v4

    sub-int v10, v8, v9

    add-int/2addr v10, v3

    int-to-float v12, v10

    iget v9, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int v3, v7, v3

    add-int/2addr v3, v9

    :goto_152
    int-to-float v3, v3

    :goto_153
    iget v4, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumOffsetRight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3, v12}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v3, p3

    :goto_15c
    iget v4, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    sub-int/2addr v7, v7

    int-to-float v4, v7

    move/from16 v7, v17

    int-to-float v7, v7

    iget-object v9, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-static {v7, v9}, Lcom/android/common/util/IconUtils;->getBaselineInVerticalCenter(FLandroid/graphics/Paint;)F

    move-result v7

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    iget v9, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v8, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v8, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    iget v9, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumTextColor:I

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v8, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    iget v9, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current scale is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1ad

    iget-object v0, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    const-string/jumbo v2, "···"

    invoke-virtual {v1, v2, v4, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1b6

    :cond_1ad
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v4, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1b6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1b9
    return-void
.end method

.method public initTextPaint()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->initBadgeNumTextPaint()V

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->mNumFormat:Ljava/text/NumberFormat;

    return-void
.end method
