.class public Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DARK_PANLE_COLOR:Ljava/lang/String; = "#FF191919"

.field private static final DIVIDE_HALF:F = 0.5f

.field private static final ICON_SIZE:I = 0x40

.field public static final LEFT:I = 0x1

.field public static final NORMAL:I = 0x0

.field private static final NORMAL_PANLE_COLOR:Ljava/lang/String; = "#FFF0F8F5"

.field public static final RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "com.oplus.zoom.draganimation.OplusFlexibleWindowAnimationUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .registers 7

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0, p3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static buildContainerSurface(Landroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .registers 4

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static calculationStep(FFF)F
    .registers 3

    invoke-static {p1, p2, p0, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static drawContentSource(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIII)V
    .registers 10

    if-eqz p0, :cond_28

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000  # 0.5f

    if-eqz p6, :cond_1f

    const/4 v2, 0x1

    if-eq p6, v2, :cond_17

    const/4 v2, 0x2

    if-eq p6, v2, :cond_e

    goto :goto_28

    :cond_e
    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    mul-float/2addr p3, v1

    invoke-virtual {p1, p0, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_28

    :cond_17
    const/4 p2, 0x0

    sub-int/2addr p5, p3

    int-to-float p3, p5

    mul-float/2addr p3, v1

    invoke-virtual {p1, p0, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_28

    :cond_1f
    sub-int/2addr p4, p2

    int-to-float p2, p4

    mul-float/2addr p2, v1

    sub-int/2addr p5, p3

    int-to-float p3, p5

    mul-float/2addr p3, v1

    invoke-virtual {p1, p0, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public static drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V
    .registers 25

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    sget-object v3, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawSurface:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " begin"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Picture;

    invoke-direct {v4}, Landroid/graphics/Picture;-><init>()V

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v7

    move v6, p0

    invoke-virtual {v7, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    if-eqz v0, :cond_50

    const/16 v1, 0x40

    move-object/from16 v3, p9

    invoke-static {v3, p1, v1, v1}, Lcom/android/wm/shell/splitscreen/OplusMultiWindowUtils;->getSpecifySizePackageIcon(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_111

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p10

    invoke-static/range {v6 .. v12}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawContentSource(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_111

    :cond_50
    if-eqz v1, :cond_111

    const-string v0, "captureLayers begin"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0, v6}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    const-string v8, "captureLayers over"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_8c

    :cond_8a
    move-object v0, v3

    move-object v8, v0

    :goto_8c
    if-eqz v8, :cond_ab

    :try_start_8e
    invoke-static {v8, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8e .. :try_end_92} :catch_93

    goto :goto_ab

    :catch_93
    move-exception v0

    move-object v9, v0

    sget-object v0, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected snapshot without USAGE_GPU_SAMPLED_IMAGE: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ab
    :goto_ab
    if-nez v3, :cond_d2

    if-eqz p4, :cond_be

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_cc

    :cond_be
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_cc
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_d3

    :cond_d2
    move-object v0, v3

    :goto_d3
    if-eqz p4, :cond_ff

    sget-object v1, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->TAG:Ljava/lang/String;

    const-string v3, "createScaledBitmap begin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v0, v3, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p10

    invoke-static/range {v6 .. v12}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawContentSource(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIII)V

    const-string v0, "createScaledBitmap over"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    :cond_ff
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object v6, v0

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p10

    invoke-static/range {v6 .. v12}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawContentSource(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIII)V

    :cond_111
    :goto_111
    invoke-virtual {v4}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    sget-object v0, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " over"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static generateSurfacePkgNameByUserId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_8

    const-string v0, ":"

    invoke-static {p0, v0, p1}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public static getBackColor(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_b

    const-string p0, "#FF191919"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const-string p0, "#FFF0F8F5"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
