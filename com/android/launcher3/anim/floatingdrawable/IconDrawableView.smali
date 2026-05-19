.class public final Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;
.super Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView$Companion;

.field private static final NEED_CROP_SIDE_LIMIT:I = 0xb3

.field private static final TAG:Ljava/lang/String; = "IconDrawableView"


# instance fields
.field private final columnOffset:I

.field private cropOffset:I

.field private leftExtentedDrawable:Landroid/graphics/drawable/Drawable;

.field private originalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private rightExtentedDrawable:Landroid/graphics/drawable/Drawable;

.field private final rowOffset:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->Companion:Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->rowOffset:I

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->columnOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->rowOffset:I

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->columnOffset:I

    return-void
.end method


# virtual methods
.method public cropOffset()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->cropOffset:I

    return p0
.end method

.method public isIconClamped()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public needAdjustCornerRadius()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->leftExtentedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_19
    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->rightExtentedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_20

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_27
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2a
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V
    .registers 28

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    const-string/jumbo v0, "originalDrawable"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foreground"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dp"

    move-object/from16 v2, p5

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v8, 0x0

    if-eqz v0, :cond_3b

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_3b

    iget-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_3b
    iput-object v1, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result v0

    int-to-float v10, v0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result v2

    if-le v0, v2, :cond_57

    move v0, v2

    :cond_57
    invoke-virtual {v11, v8, v8, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ly4/h;->b(FF)F

    move-result v12

    iget-object v2, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_26b

    const/16 v19, 0x0

    const/4 v0, 0x1

    if-eqz p6, :cond_1b6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7

    const/16 v18, 0x0

    move-object v13, v2

    invoke-static/range {v13 .. v18}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xb3

    if-ge v3, v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v0, v8

    :goto_a4
    const-string/jumbo v3, "pixel alpha is: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7

    const/16 v18, 0x0

    move-object v13, v2

    invoke-static/range {v13 .. v18}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IconDrawableView"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_fe

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result v0

    int-to-double v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->cropOffset:I

    const-string v0, "last column may be empty, need cropOffset: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->cropOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fe
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->rowOffset:I

    sub-int v4, v0, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRowExtendedDrawable(Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object v0

    if-eqz v0, :cond_120

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_122

    :cond_120
    move-object/from16 v1, v19

    :goto_122
    if-eqz v1, :cond_195

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_12b

    goto :goto_195

    :cond_12b
    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->leftExtentedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    float-to-int v2, v10

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleStartLeft()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    float-to-int v5, v9

    invoke-direct {v1, v8, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->leftExtentedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_148

    goto :goto_14b

    :cond_148
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_14b
    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setRealBtmBgDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleStartLeft()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleEndRight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v12

    float-to-int v6, v6

    invoke-direct {v1, v4, v3, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_170

    goto :goto_173

    :cond_170
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_173
    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->rightExtentedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleEndRight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v12

    float-to-int v0, v0

    iget v4, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->cropOffset:I

    sub-int/2addr v2, v4

    invoke-direct {v1, v0, v3, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->rightExtentedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_190

    goto/16 :goto_26b

    :cond_190
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_26b

    :cond_195
    :goto_195
    if-eqz v0, :cond_19b

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_19b
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setRealBtmBgDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, v10

    div-int/lit8 v2, v1, 0x2

    float-to-int v3, v9

    invoke-direct {v0, v8, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1b1

    goto/16 :goto_26b

    :cond_1b1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_26b

    :cond_1b6
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v3, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->columnOffset:I

    sub-int v3, v0, v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getColumnExtendedDrawable(Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object v0

    if-eqz v0, :cond_1d9

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1db

    :cond_1d9
    move-object/from16 v1, v19

    :goto_1db
    if-eqz v1, :cond_24d

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1e4

    goto :goto_24d

    :cond_1e4
    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->leftExtentedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1ed

    goto :goto_202

    :cond_1ed
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v9

    div-int/lit8 v3, v3, 0x2

    float-to-int v4, v10

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleStartLeft()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    invoke-direct {v2, v3, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_202
    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setRealBtmBgDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_210

    goto :goto_22e

    :cond_210
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v9

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleStartLeft()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    float-to-int v5, v10

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleEndRight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v12

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_22e
    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->rightExtentedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_237

    goto :goto_26b

    :cond_237
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v9

    div-int/lit8 v4, v3, 0x2

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleEndRight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v12

    float-to-int v0, v0

    float-to-int v5, v10

    invoke-direct {v2, v4, v0, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_26b

    :cond_24d
    :goto_24d
    if-eqz v0, :cond_253

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_253
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setRealBtmBgDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_25f

    goto :goto_26b

    :cond_25f
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v2, v9

    div-int/lit8 v3, v2, 0x2

    float-to-int v4, v10

    invoke-direct {v1, v3, v8, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_26b
    :goto_26b
    iget-object v0, v7, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_270

    goto :goto_273

    :cond_270
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_273
    return-void
.end method
