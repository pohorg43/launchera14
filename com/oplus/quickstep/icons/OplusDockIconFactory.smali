.class public final Lcom/oplus/quickstep/icons/OplusDockIconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;
    }
.end annotation


# static fields
.field private static final BLUR_FACTOR:F = 0.010416667f

.field public static final Companion:Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;

.field private static final NUMBER_2:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->Companion:Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .registers 12

    iget p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p1, :cond_e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_e
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_6b

    const p0, 0x3c2aaaab

    int-to-float v3, p3

    mul-float/2addr p0, v3

    float-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int p0, v6

    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, p2

    mul-float/2addr v4, v3

    int-to-float p2, v5

    div-float/2addr v4, p2

    invoke-static {v4}, Lu4/a;->b(F)I

    move-result p2

    if-ge p0, p2, :cond_48

    move p0, p2

    :cond_48
    move-object p2, p1

    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    sub-int/2addr p3, p0

    sub-int/2addr p3, p0

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result p3

    int-to-float p0, p0

    invoke-virtual {v1, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    instance-of p0, p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz p0, :cond_64

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    invoke-interface {p0, v1}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->drawForPersistence(Landroid/graphics/Canvas;)V

    goto :goto_67

    :cond_64
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_67
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_c4

    :cond_6b
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_8b

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v0, :cond_8b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-nez v4, :cond_8b

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_8b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez p0, :cond_a9

    if-lez v3, :cond_a9

    int-to-float v4, p0

    int-to-float v6, v3

    div-float/2addr v4, v6

    if-le p0, v3, :cond_a2

    int-to-float p0, p3

    div-float/2addr p0, v4

    float-to-int p0, p0

    move v3, p0

    move p0, p3

    goto :goto_ab

    :cond_a2
    if-le v3, p0, :cond_a9

    int-to-float p0, p3

    mul-float/2addr p0, v4

    float-to-int p0, p0

    move v3, p3

    goto :goto_ab

    :cond_a9
    move p0, p3

    move v3, p0

    :goto_ab
    sub-int v4, p3, p0

    div-int/2addr v4, v5

    sub-int v6, p3, v3

    div-int/2addr v6, v5

    add-int/2addr p0, v4

    add-int/2addr v3, v6

    invoke-virtual {p1, v4, v6, p0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    div-int/2addr p3, v5

    int-to-float p0, p3

    invoke-virtual {v1, p2, p2, p0, p0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_c4
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
