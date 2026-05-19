.class public Lcom/android/launcher3/icons/OplusDotRenderer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BADGE_NUMBER_TEXT_SIZE_PERCENT:F = 0.24f

.field private static final DEBUG:Z = false

.field private static final DOT_SCALE:F = 0.05555f

.field private static final DOT_SIZE_PERCENT:F = 0.2308f

.field private static final FLOAT_1:F = 1.0f

.field private static final INT_5:I = 0x5

.field private static final INT_9:I = 0x9

.field private static final MIN_NUMBER_TEXT_SIZE_PERCENT:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "OplusDotRenderer"

.field private static final TASKBAR_SCALAR:F = 0.5f


# instance fields
.field private mBadgeNumBgHeight:I

.field private mBadgeNumBgWidth:I

.field private final mBadgeNumEndOffset:I

.field private mBadgeNumOffsetRight:I

.field private mBadgeNumOffsetTop:I

.field private mBadgeNumPadding:I

.field private mBadgeNumPaint:Landroid/text/TextPaint;

.field private final mBadgeNumTextColor:I

.field private mBadgeNumTextSize:I

.field private final mBadgeNumTopOffset:I

.field private final mDotDrawableRect:Landroid/graphics/Rect;

.field private final mDotEndOffset:F

.field private mDotSize:I

.field private final mDotTopOffset:F

.field private mEllipPaint:Landroid/graphics/Paint;

.field private mEllipsize:I

.field private final mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

.field private mIsInit:Z

.field private mIsTaskbarContext:Z

.field private mIsXueYing:Z

.field private mNumFormat:Ljava/text/NumberFormat;

.field private mNumberDotScale:F

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Path;IIFI)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotDrawableRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsXueYing:Z

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsInit:Z

    iput-boolean p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsTaskbarContext:Z

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumberDotScale:F

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f05002d

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsXueYing:Z

    const-string p4, "iconSizePx="

    const-string p5, ", iconVisibleSizePx="

    invoke-static {p4, p3, p5, p6}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "Icon"

    const-string v0, "OplusDotRenderer"

    invoke-static {p5, v0, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    iget p5, p5, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p5, p5

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p5, v0

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_5f

    const/high16 v0, 0x3f400000  # 0.75f

    const/high16 v1, 0x3e800000  # 0.25f

    int-to-float v2, p6

    mul-float/2addr v2, p2

    div-float/2addr v2, p5

    const/high16 v3, 0x42200000  # 40.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x41800000  # 16.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    goto :goto_60

    :cond_5f
    move v2, p2

    :goto_60
    const v0, 0x3e75c28f  # 0.24f

    int-to-float p3, p3

    mul-float/2addr v0, p3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextSize:I

    const v0, 0x7f070174

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipsize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    const v0, 0x3e6c56d6  # 0.2308f

    mul-float/2addr v0, p3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float v1, p5, p2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    const v0, 0x7f070173

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTopOffset:I

    const v0, 0x7f07016e

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumEndOffset:I

    const v0, 0x7f07016f

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float p6, p6

    mul-float/2addr p6, p2

    const/high16 p2, 0x42600000  # 56.0f

    mul-float/2addr p5, p2

    div-float/2addr p6, p5

    mul-float/2addr p6, v0

    float-to-int p2, p6

    iput p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    iput p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p2

    if-eqz p2, :cond_b9

    const p2, 0x7f070171

    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    goto :goto_c2

    :cond_b9
    const p2, 0x7f070170

    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    :goto_c2
    const p2, 0x7f070172

    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    const p2, 0x7f060543

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextColor:I

    invoke-direct {p0}, Lcom/android/launcher3/icons/OplusDotRenderer;->initBadgeNumTextPaint()V

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumFormat:Ljava/text/NumberFormat;

    const p2, 0x3d638866  # 0.05555f

    mul-float/2addr p3, p2

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotTopOffset:F

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotEndOffset:F

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    const p0, 0x7f07016d

    invoke-virtual {p4, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const p0, 0x7f060509

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private initBadgeNumTextPaint()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_b

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const-string/jumbo v3, "sans-serif-regular"

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPadding:I

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4e

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    :cond_4e
    iget-object p0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public changeDotBranchSearchSupport()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V
    .registers 10

    if-nez p2, :cond_a

    const-string p0, "OplusDotRenderer"

    const-string p1, "Invalid null argument(s) passed in call to draw."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v2, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-boolean v4, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2b

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotEndOffset:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_3c

    :cond_2b
    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    iget v6, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotEndOffset:F

    add-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_3c
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotTopOffset:F

    sub-float/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotDrawableRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotDrawableRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    sget-object v4, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    invoke-virtual {v4}, Lcom/android/common/util/CacheUtils;->getDotDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object p0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    add-float/2addr v3, v1

    add-float/2addr v2, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget p0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v4}, Lcom/android/common/util/CacheUtils;->getDotDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawNumber(Landroid/graphics/Canvas;ILcom/android/launcher3/icons/DotRenderer$DrawParams;Ljava/lang/Boolean;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    if-eqz v4, :cond_1f9

    if-lez v2, :cond_1f9

    const-string v4, "OplusDotRenderer"

    if-nez v3, :cond_1a

    const-string v0, "Badge"

    const-string v1, "drawNumber, Invalid null argument(s) passed in call to draw."

    invoke-static {v0, v4, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    sget-object v5, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v5}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/Launcher;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2e

    const/high16 v6, 0x437f0000  # 255.0f

    goto :goto_30

    :cond_2e
    iget v6, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    :goto_30
    iget-object v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    const/16 v8, 0x3e7

    if-le v2, v8, :cond_3b

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3f

    :cond_3b
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_3f
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget v8, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    iget v9, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    iget v10, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPadding:I

    mul-int/lit8 v11, v10, 0x2

    sub-int v11, v9, v11

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-lez v11, :cond_57

    mul-int/lit8 v10, v10, 0x2

    int-to-float v9, v10

    add-float/2addr v7, v9

    float-to-int v9, v7

    :cond_57
    div-int/lit8 v7, v9, 0x2

    div-int/lit8 v10, v8, 0x2

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int v12, v7

    neg-int v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    iget-object v12, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v11, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget-boolean v13, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    if-nez v13, :cond_fa

    iget v13, v11, Landroid/graphics/Rect;->right:I

    int-to-float v14, v13

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v15, v11

    move/from16 p4, v14

    iget v14, v12, Landroid/graphics/Rect;->right:I

    move/from16 v16, v6

    sub-int v6, v14, v13

    move/from16 v17, v8

    iget v8, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    div-int/lit8 v3, v8, 0x2

    if-lt v6, v3, :cond_a2

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sub-int v3, v11, v3

    iget v6, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    div-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_96

    goto :goto_a2

    :cond_96
    const/16 v3, 0x9

    if-le v2, v3, :cond_9f

    sub-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v13, v9

    goto :goto_cf

    :cond_9f
    move/from16 v14, p4

    goto :goto_d0

    :cond_a2
    :goto_a2
    div-int/lit8 v3, v8, 0x2

    sub-int v6, v14, v13

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    div-int/lit8 v6, v6, 0x2

    iget v9, v12, Landroid/graphics/Rect;->top:I

    sub-int v12, v11, v9

    sub-int/2addr v6, v12

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c5

    sub-int v3, v14, v13

    sub-int v3, v7, v3

    sub-int v3, v13, v3

    int-to-float v3, v3

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v14, v13

    sub-int/2addr v8, v14

    int-to-float v6, v8

    add-float/2addr v15, v6

    move v14, v3

    goto :goto_d0

    :cond_c5
    sub-int v3, v11, v9

    sub-int v3, v10, v3

    add-int/2addr v3, v11

    int-to-float v15, v3

    sub-int/2addr v11, v9

    sub-int v3, v7, v11

    sub-int/2addr v13, v3

    :goto_cf
    int-to-float v14, v13

    :goto_d0
    iget-boolean v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsXueYing:Z

    if-eqz v3, :cond_ee

    if-eqz v5, :cond_ee

    iget-object v3, v5, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_ee

    const-string v3, "drawNumber when landscape"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    int-to-float v3, v3

    add-float/2addr v14, v3

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    int-to-float v3, v3

    add-float/2addr v15, v3

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_158

    :cond_ee
    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    int-to-float v3, v3

    sub-float/2addr v14, v3

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    int-to-float v3, v3

    add-float/2addr v15, v3

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_158

    :cond_fa
    move/from16 v16, v6

    move/from16 v17, v8

    iget v3, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v5, v11, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    iget v8, v12, Landroid/graphics/Rect;->left:I

    sub-int v11, v3, v8

    if-lt v11, v7, :cond_11e

    iget v11, v12, Landroid/graphics/Rect;->top:I

    sub-int v11, v5, v11

    if-ge v11, v10, :cond_111

    goto :goto_11e

    :cond_111
    const/16 v5, 0x9

    if-le v2, v5, :cond_14d

    iget v4, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    const/4 v5, 0x2

    invoke-static {v9, v4, v5, v3}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v3

    int-to-float v4, v3

    goto :goto_14d

    :cond_11e
    :goto_11e
    iget v4, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    div-int/lit8 v9, v4, 0x2

    sub-int v11, v3, v8

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iget v11, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    div-int/lit8 v11, v11, 0x2

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int v13, v5, v12

    sub-int/2addr v11, v13

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_142

    sub-int v5, v3, v8

    sub-int v5, v7, v5

    add-int/2addr v5, v3

    int-to-float v5, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v8

    sub-int/2addr v4, v3

    int-to-float v3, v4

    add-float/2addr v6, v3

    move v4, v5

    goto :goto_14d

    :cond_142
    sub-int v4, v5, v12

    sub-int v4, v10, v4

    add-int/2addr v4, v5

    int-to-float v6, v4

    sub-int/2addr v5, v12

    sub-int v4, v7, v5

    add-int/2addr v4, v3

    int-to-float v4, v4

    :cond_14d
    :goto_14d
    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_158
    move-object/from16 v3, p3

    iget v3, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget v4, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumberDotScale:F

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->scale(FF)V

    sub-int/2addr v7, v7

    int-to-float v3, v7

    move/from16 v4, v17

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-static {v4, v5}, Lcom/android/common/util/IconUtils;->getBaselineInVerticalCenter(FLandroid/graphics/Paint;)F

    move-result v4

    int-to-float v5, v10

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    move/from16 v6, v16

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v5, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextColor:I

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v5, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    const/16 v5, 0x3e7

    if-le v2, v5, :cond_1ed

    iget-object v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsTaskbarContext:Z

    const/high16 v3, 0x41100000  # 9.0f

    const/high16 v4, 0x40a00000  # 5.0f

    const/high16 v5, 0x40000000  # 2.0f

    if-eqz v2, :cond_1c8

    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipsize:I

    int-to-float v2, v2

    const/high16 v6, 0x3f000000  # 0.5f

    mul-float/2addr v2, v6

    iget v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    mul-float/2addr v7, v6

    mul-float v6, v2, v4

    div-float/2addr v6, v5

    div-float/2addr v2, v5

    neg-float v5, v6

    neg-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v7, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float/2addr v4, v7

    iget-object v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float/2addr v3, v7

    iget-object v0, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1f6

    :cond_1c8
    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipsize:I

    mul-int/lit8 v6, v2, 0x5

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v2, v2

    div-float/2addr v2, v5

    neg-float v5, v6

    neg-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    iget-object v5, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    mul-float/2addr v4, v2

    iget-object v5, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    mul-float/2addr v3, v2

    iget-object v0, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1f6

    :cond_1ed
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1f6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1f9
    return-void
.end method

.method public getNumberDotScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumberDotScale:F

    return p0
.end method

.method public initTextPaint()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/android/launcher3/icons/OplusDotRenderer;->initBadgeNumTextPaint()V

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumFormat:Ljava/text/NumberFormat;

    return-void
.end method

.method public setNumberDotScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumberDotScale:F

    return-void
.end method

.method public updateDotSizeInTaskBar(Landroid/content/Context;)V
    .registers 6

    instance-of v0, p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsInit:Z

    const/high16 v2, 0x3f000000  # 0.5f

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsTaskbarContext:Z

    iput-boolean v1, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsInit:Z

    iget v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextSize:I

    iget v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    iget v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    :cond_3c
    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07016d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-direct {p0}, Lcom/android/launcher3/icons/OplusDotRenderer;->initBadgeNumTextPaint()V

    goto :goto_54

    :cond_52
    iput-boolean v1, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mIsTaskbarContext:Z

    :goto_54
    return-void
.end method
