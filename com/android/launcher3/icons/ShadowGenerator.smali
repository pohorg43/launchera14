.class public Lcom/android/launcher3/icons/ShadowGenerator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/ShadowGenerator$Builder;
    }
.end annotation


# static fields
.field private static final AMBIENT_SHADOW_ALPHA:I = 0x19

.field public static final BLUR_FACTOR:F = 0.035f

.field public static final ENABLE_SHADOWS:Z = true

.field private static final HALF_DISTANCE:F = 0.5f

.field private static final KEY_SHADOW_ALPHA:I = 0x7

.field public static final KEY_SHADOW_DISTANCE:F = 0.020833334f

.field private static final TAG:Ljava/lang/String; = "ShadowGenerator"


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mIconSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float p1, p1

    const v1, 0x3d0f5c29  # 0.035f

    mul-float/2addr p1, v1

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, p1, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    return-void
.end method

.method public static getScaleForBounds(Landroid/graphics/RectF;)F
    .registers 4

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3d0f5c29  # 0.035f

    cmpg-float v1, v0, v1

    const/high16 v2, 0x3f000000  # 0.5f

    if-gez v1, :cond_1e

    const v1, 0x3eee147b  # 0.465f

    sub-float v0, v2, v0

    div-float/2addr v1, v0

    goto :goto_20

    :cond_1e
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_20
    const v0, 0x3d64b17e

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_32

    const v0, 0x3ee369d0

    sub-float/2addr v2, p0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :cond_32
    return v1
.end method


# virtual methods
.method public addPathShadow(Landroid/graphics/Path;Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    int-to-float v1, v1

    const v2, 0x3caaaaab

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method public declared-synchronized drawShadow(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .registers 9

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v3

    int-to-float v0, v0

    const v2, 0x3caaaaab

    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method
