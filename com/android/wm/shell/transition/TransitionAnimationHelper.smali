.class public Lcom/android/wm/shell/transition/TransitionAnimationHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBackgroundToTransition(Landroid/view/SurfaceControl;ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    aput p1, v0, v1

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v1, "Animation Background"

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p1, -0x80000000

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private static createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurfaceWithChange(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method private static createExtensionSurfaceWithChange(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p8, :cond_e

    const/16 v2, 0x200

    invoke-virtual {p8, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p8

    if-eqz p8, :cond_e

    move p8, v1

    goto :goto_f

    :cond_e
    move p8, v0

    :goto_f
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v2, p5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p5

    invoke-virtual {p5, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p5

    invoke-virtual {p5, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p5

    const-string v2, "TransitionAnimationHelper#createExtensionSurface"

    invoke-virtual {p5, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p5

    xor-int/lit8 v2, p8, 0x1

    invoke-virtual {p5, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p5

    if-eqz p8, :cond_30

    const/4 v2, -0x3

    goto :goto_31

    :cond_30
    const/4 v2, -0x1

    :goto_31
    invoke-virtual {p5, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p5, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p5

    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v2, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object p0

    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_88

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_87

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x64883b0b

    const-string p3, "Failed to capture edge of window."

    invoke-static {p0, p2, v0, p3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_87
    return-object p1

    :cond_88
    new-instance p1, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1, p5}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {p1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz p8, :cond_ab

    sget-object p8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, p8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_ab
    invoke-virtual {v2, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    const/high16 p0, -0x80000000

    invoke-virtual {p6, p5, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    int-to-float p0, p3

    int-to-float p1, p4

    invoke-virtual {p6, p5, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p6, p5, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p7, p5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p5
.end method

.method public static edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 21

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3, v2}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Insets;->left:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_77

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v4, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    neg-int v2, v2

    invoke-direct {v10, v4, v4, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v11, v0, Landroid/graphics/Insets;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    const/4 v12, 0x0

    const-string v13, "Left Edge Extension"

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p0

    invoke-static/range {v8 .. v16}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurfaceWithChange(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    :cond_77
    iget v2, v0, Landroid/graphics/Insets;->top:I

    if-gez v2, :cond_98

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    neg-int v2, v2

    invoke-direct {v10, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v12, v0, Landroid/graphics/Insets;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    const/4 v11, 0x0

    const-string v13, "Top Edge Extension"

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    :cond_98
    iget v2, v0, Landroid/graphics/Insets;->right:I

    if-gez v2, :cond_bc

    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v2, v1, -0x1

    invoke-direct {v9, v2, v4, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->right:I

    neg-int v2, v2

    invoke-direct {v10, v4, v4, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    const/4 v12, 0x0

    const-string v13, "Right Edge Extension"

    move v11, v1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p0

    invoke-static/range {v8 .. v16}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurfaceWithChange(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    :cond_bc
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-gez v2, :cond_df

    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v7, -0x1

    invoke-direct {v2, v4, v3, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    neg-int v3, v3

    invoke-direct {v5, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, v0, Landroid/graphics/Insets;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    const-string v8, "Bottom Edge Extension"

    move-object v4, v2

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v10}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    :cond_df
    return-void
.end method

.method public static getCustomActivityTransition(ILandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    .registers 3

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_activityOpenEnterAnimation:I

    if-eq p0, v0, :cond_16

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_activityOpenExitAnimation:I

    if-ne p0, v0, :cond_9

    goto :goto_16

    :cond_9
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_activityCloseEnterAnimation:I

    if-eq p0, v0, :cond_14

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_activityCloseExitAnimation:I

    if-ne p0, v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    move-result-object p0

    return-object p0
.end method

.method public static getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I
    .registers 5

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    move-result v0

    if-nez v0, :cond_7

    return p3

    :cond_7
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    move-result p0

    return p0

    :cond_20
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getBackdropColor()I

    move-result p0

    if-eqz p0, :cond_2b

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getBackdropColor()I

    move-result p0

    return p0

    :cond_2b
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result p0

    if-eqz p0, :cond_36

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result p0

    return p0

    :cond_36
    return p3
.end method

.method public static loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;
    .registers 23

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v9

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_1d

    move v13, v12

    goto :goto_1e

    :cond_1d
    const/4 v13, 0x0

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v14

    if-eqz v14, :cond_2a

    invoke-virtual {v14}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    move v15, v0

    goto :goto_2b

    :cond_2a
    const/4 v15, 0x0

    :goto_2b
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x4

    if-eqz p4, :cond_43

    if-ne v8, v12, :cond_3a

    if-eqz v10, :cond_37

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_dreamActivityOpenEnterAnimation:I

    goto :goto_4c

    :cond_37
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_dreamActivityOpenExitAnimation:I

    goto :goto_4c

    :cond_3a
    if-ne v8, v4, :cond_c7

    if-eqz v10, :cond_40

    const/4 v0, 0x0

    goto :goto_4c

    :cond_40
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_dreamActivityCloseExitAnimation:I

    goto :goto_4c

    :cond_43
    if-ne v6, v5, :cond_4f

    if-eqz v10, :cond_4a

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_wallpaperIntraOpenEnterAnimation:I

    goto :goto_4c

    :cond_4a
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_wallpaperIntraOpenExitAnimation:I

    :goto_4c
    move v1, v0

    goto/16 :goto_c8

    :cond_4f
    if-ne v6, v3, :cond_59

    if-eqz v10, :cond_56

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_wallpaperIntraCloseEnterAnimation:I

    goto :goto_4c

    :cond_56
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_wallpaperIntraCloseExitAnimation:I

    goto :goto_4c

    :cond_59
    if-ne v6, v12, :cond_63

    if-eqz v10, :cond_60

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_wallpaperOpenEnterAnimation:I

    goto :goto_4c

    :cond_60
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_wallpaperOpenExitAnimation:I

    goto :goto_4c

    :cond_63
    if-ne v6, v4, :cond_6d

    if-eqz v10, :cond_6a

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_wallpaperCloseEnterAnimation:I

    goto :goto_4c

    :cond_6a
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_wallpaperCloseExitAnimation:I

    goto :goto_4c

    :cond_6d
    if-ne v8, v12, :cond_94

    and-int/lit8 v0, v9, 0x4

    if-eqz v0, :cond_75

    move v0, v12

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    if-eqz v13, :cond_80

    if-eqz v0, :cond_80

    if-nez v10, :cond_80

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_activityCloseExitAnimation:I

    :goto_7e
    move v2, v0

    goto :goto_c9

    :cond_80
    if-eqz v13, :cond_8c

    if-nez v0, :cond_8c

    if-eqz v10, :cond_89

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_taskOpenEnterAnimation:I

    goto :goto_7e

    :cond_89
    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_taskOpenExitAnimation:I

    goto :goto_7e

    :cond_8c
    if-eqz v10, :cond_91

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_activityOpenEnterAnimation:I

    goto :goto_7e

    :cond_91
    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_activityOpenExitAnimation:I

    goto :goto_7e

    :cond_94
    if-ne v8, v5, :cond_9e

    if-eqz v10, :cond_9b

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_taskToFrontEnterAnimation:I

    goto :goto_4c

    :cond_9b
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_taskToFrontExitAnimation:I

    goto :goto_4c

    :cond_9e
    if-ne v8, v4, :cond_bd

    and-int/lit8 v0, v9, 0x4

    if-eqz v0, :cond_a8

    if-nez v10, :cond_a8

    move v0, v12

    goto :goto_a9

    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    if-eqz v13, :cond_b5

    if-nez v0, :cond_b5

    if-eqz v10, :cond_b2

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_taskCloseEnterAnimation:I

    goto :goto_7e

    :cond_b2
    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_taskCloseExitAnimation:I

    goto :goto_7e

    :cond_b5
    if-eqz v10, :cond_ba

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_activityCloseEnterAnimation:I

    goto :goto_7e

    :cond_ba
    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_activityCloseExitAnimation:I

    goto :goto_7e

    :cond_bd
    if-ne v8, v3, :cond_c7

    if-eqz v10, :cond_c4

    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_taskToBackEnterAnimation:I

    goto :goto_4c

    :cond_c4
    sget v0, Lcom/android/internal/R$styleable;->WindowAnimation_taskToBackExitAnimation:I

    goto :goto_4c

    :cond_c7
    const/4 v1, 0x0

    :goto_c8
    const/4 v2, 0x0

    :goto_c9
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v0

    move/from16 p4, v1

    move-object/from16 v1, p0

    move/from16 p0, v2

    move-object/from16 v2, p1

    move v11, v3

    move/from16 v3, p0

    move/from16 v16, v4

    move/from16 v4, p2

    move/from16 v17, v5

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookTransitionAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ZII)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_e7

    return-object v0

    :cond_e7
    const/4 v0, 0x0

    move/from16 v1, p4

    if-eqz v1, :cond_122

    const/16 v2, 0xe

    if-ne v15, v2, :cond_10c

    if-nez v13, :cond_10c

    invoke-static {v1, v14}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getCustomActivityTransition(ILandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    move-result-object v0

    if-eqz v0, :cond_fd

    invoke-static {v0, v14, v10, v7}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadCustomActivityTransition(Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;Landroid/window/TransitionInfo$AnimationOptions;ZLcom/android/internal/policy/TransitionAnimation;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_122

    :cond_fd
    invoke-virtual {v14}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Landroid/window/TransitionInfo$AnimationOptions;->getAnimations()I

    move-result v2

    move/from16 v3, p0

    invoke-virtual {v7, v0, v2, v1, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_122

    :cond_10c
    move/from16 v3, p0

    if-eqz v3, :cond_119

    if-nez v13, :cond_119

    const v2, 0x10102

    and-int/2addr v2, v9

    if-nez v2, :cond_119

    goto :goto_122

    :cond_119
    invoke-virtual {v7, v1, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v13, :cond_122

    invoke-static {v0, v6, v10, v12}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->addRoundedCornersToAnimationIfNeed(Landroid/view/animation/Animation;IZZ)V

    :cond_122
    :goto_122
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_152

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v8}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x72e04ae

    const/16 v7, 0xc4

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v12

    aput-object v1, v8, v16

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v17

    const-string v1, "loadAnimation: anim=%s animAttr=0x%x type=%s isEntrance=%b"

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_152
    return-object v0
.end method

.method public static loadCustomActivityTransition(Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;Landroid/window/TransitionInfo$AnimationOptions;ZLcom/android/internal/policy/TransitionAnimation;)Landroid/view/animation/Animation;
    .registers 4

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomEnterResId()I

    move-result p2

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomExitResId()I

    move-result p2

    :goto_f
    invoke-virtual {p3, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomBackgroundColor()I

    move-result p2

    if-eqz p2, :cond_22

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomBackgroundColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    :cond_22
    return-object p1
.end method
