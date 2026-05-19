.class public final Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;
.super Lcom/android/wm/shell/pip/PipContentOverlay;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipContentOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PipAppIconOverlay"
.end annotation


# static fields
.field private static final MAX_APP_ICON_SIZE_DP:I = 0x48

.field private static final TAG:Ljava/lang/String; = "PipAppIconOverlay"


# instance fields
.field private final mAppBounds:Landroid/graphics/Rect;

.field private final mAppIconSizePx:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mTmpFloat9:[F

.field private final mTmpTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V
    .registers 7

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipContentOverlay;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mTmpTransform:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mTmpFloat9:[F

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x42900000  # 72.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppIconSizePx:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3}, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->prepareAppIconOverlay(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance p2, Landroid/view/SurfaceSession;

    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    sget-object p2, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "PipContentOverlay"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method private prepareAppIconOverlay(Landroid/graphics/drawable/Drawable;)V
    .registers 10

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010031

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_19
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-virtual {v0, v3, v5, v2}, Landroid/graphics/Canvas;->drawRGB(III)V
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_71

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppIconSizePx:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v5, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppIconSizePx:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v6, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppIconSizePx:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v5, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v7, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppIconSizePx:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    invoke-direct {v1, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :catchall_71
    move-exception p0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public attach(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public detach(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/wm/shell/pip/PipContentOverlay;->detach(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    return-void
.end method

.method public onAnimationEnd(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v2, p2

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->mTmpFloat9:[F

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    const/high16 p2, 0x3f000000  # 0.5f

    cmpg-float v0, p3, p2

    if-gez v0, :cond_46

    const/4 p2, 0x0

    goto :goto_4a

    :cond_46
    sub-float/2addr p3, p2

    const/high16 p2, 0x40000000  # 2.0f

    mul-float/2addr p2, p3

    :goto_4a
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
