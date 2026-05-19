.class public Lcom/android/launcher3/folder/big/SmoothRoundDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source ""


# static fields
.field public static final ALPHA_MAX:I = 0xff

.field public static final ORIGIN_ALPHA:I = 0x66


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintAlpha:I

.field private mPaintColor:I

.field private mPath:Landroid/graphics/Path;

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaintAlpha:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mRadius:I

    iput p3, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaintColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setDrawableAlpha(I)V
    .registers 6

    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L  # 255.0

    div-double/2addr v0, v2

    const-wide v2, 0x4059800000000000L  # 102.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaintAlpha:I

    return-void
.end method

.method public setDrawableColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPaintColor:I

    return-void
.end method

.method public setRadius(I)V
    .registers 3

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iput p1, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mRadius:I

    return-void
.end method

.method public setRadiusBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget p0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mRadius:I

    int-to-float p0, p0

    invoke-virtual {v1, p1, p0}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public setSmoothRadiusPath(Landroid/graphics/Rect;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iput p2, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mRadius:I

    iget-object p2, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/folder/big/SmoothRoundDrawable;->mRadius:I

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method
