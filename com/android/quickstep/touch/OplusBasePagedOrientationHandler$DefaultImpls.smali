.class public final Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic applyOffset$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/PointF;FIZILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_b

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_7

    const/4 p4, 0x0

    :cond_7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyOffset(Landroid/graphics/PointF;FIZ)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: applyOffset"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic calculateScale$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;IILjava/lang/Object;)F
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: calculateScale"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateIconSurfaceRectCrop$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;FIILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_b

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_7

    const/4 p4, 0x0

    :cond_7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconSurfaceRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FI)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateIconSurfaceRectCrop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateWindowCrop$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/Rect;FFFFIZZILjava/lang/Object;)V
    .registers 21

    if-nez p10, :cond_1b

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    move v9, v0

    goto :goto_d

    :cond_b
    move/from16 v9, p8

    :goto_d
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: updateWindowCrop"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
