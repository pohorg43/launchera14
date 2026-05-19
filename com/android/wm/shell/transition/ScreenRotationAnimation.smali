.class Lcom/android/wm/shell/transition/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAX_ANIMATION_DURATION:I = 0x2710


# instance fields
.field private final mAnimHint:I

.field private final mAnimLeash:Landroid/view/SurfaceControl;

.field private mBackColorSurface:Landroid/view/SurfaceControl;

.field private final mCaptureIdentificationForSurfaceFlinger:I

.field private final mContext:Landroid/content/Context;

.field private final mEndHeight:I

.field private mEndLuma:F

.field private final mEndRotation:I

.field private final mEndWidth:I

.field private mInfo:Landroid/window/TransitionInfo;

.field private mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field private mRotateEnterAnimation:Landroid/view/animation/Animation;

.field private mRotateExitAnimation:Landroid/view/animation/Animation;

.field private mScreenshotLayer:Landroid/view/SurfaceControl;

.field private final mStartHeight:I

.field private mStartLuma:F

.field private final mStartRotation:I

.field private final mStartWidth:I

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTmpFloats:[F

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    const-string v4, "ShellTransitions"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v5, 0x9

    new-array v5, v5, [F

    iput-object v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    const/16 v5, -0xde

    iput v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mCaptureIdentificationForSurfaceFlinger:I

    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    move-object/from16 v5, p3

    iput-object v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move/from16 v5, p7

    iput v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimHint:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iput v9, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v10

    iput v10, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v10

    iput v10, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    new-instance v10, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v10, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v10, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    const-string v11, "ShellRotationAnimation"

    invoke-virtual {v10, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    const-string v12, "Animation leash of screenshot rotation"

    invoke-virtual {v10, v12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v10

    iput-object v10, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    :try_start_7c
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_95

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v6, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshotLuma()F

    move-result v6

    iput v6, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    goto/16 :goto_118

    :cond_95
    new-instance v12, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v12, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v12, v14}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v12

    check-cast v12, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v12, v14}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v12

    check-cast v12, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v13, v13, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v15}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v6

    check-cast v6, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v6, v14}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v6

    check-cast v6, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const-wide/16 v13, -0xde

    invoke-virtual {v6, v13, v14}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v6

    check-cast v6, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v6}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v6

    invoke-static {v6}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v6

    if-nez v6, :cond_cf

    const-string v0, "Unable to take screenshot of display"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_cf
    new-instance v7, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v7, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v7, v10}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v12

    invoke-virtual {v7, v12}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    const-string v12, "RotationLayer"

    invoke-virtual {v7, v12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v7

    iput-object v7, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v2, v7, v6}, Lcom/android/internal/policy/TransitionAnimation;->configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    invoke-virtual {v6}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v7

    iget-object v12, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v12}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->isCustomRotate()Z

    move-result v12

    if-nez v12, :cond_115

    invoke-virtual {v6}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v6

    iput v6, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    :cond_115
    invoke-virtual {v7}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_118
    const v6, 0x1eab90

    invoke-virtual {v2, v10, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->isCustomRotate()Z

    move-result v5

    if-nez v5, :cond_181

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v5

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookScreenRotateBackColor(Landroid/window/TransitionInfo$Change;)Z

    move-result v5

    if-eqz v5, :cond_181

    new-instance v5, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v5, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v3, "BackColorSurface"

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    const/4 v6, 0x0

    aput v5, v3, v6

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v6, 0x2

    aput v5, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_17a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_7c .. :try_end_17a} :catch_17b

    goto :goto_181

    :catch_17b
    move-exception v0

    const-string v3, "Unable to allocate freeze surface"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_181
    :goto_181
    invoke-direct {v1, v2}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->setScreenshotTransform(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/ScreenRotationAnimation;Landroid/animation/ValueAnimator;II[FLandroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->lambda$startColorAnimation$0(Landroid/animation/ValueAnimator;II[FLandroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/transition/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$100(II[FFLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->applyColor(II[FFLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/transition/ScreenRotationAnimation;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method private static applyColor(II[FFLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p3, p0, p1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result p1

    const/4 p3, 0x0

    aput p1, p2, p3

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result p1

    const/4 p3, 0x1

    aput p1, p2, p3

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    const/4 p1, 0x2

    aput p0, p2, p1

    invoke-virtual {p4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_38

    invoke-virtual {p5, p4, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_38
    invoke-virtual {p5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private buildScreenshotAlphaAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v8}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    return-void
.end method

.method private isCustomRotate()Z
    .registers 3

    iget p0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimHint:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method private synthetic lambda$startColorAnimation$0(Landroid/animation/ValueAnimator;II[FLandroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 15

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-float v5, v0

    iget-object v6, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->applyColor(II[FFLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private setScreenshotTransform(Landroid/view/SurfaceControl$Transaction;)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    iget v2, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    invoke-static {v1, v2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_47

    const/4 v6, 0x0

    if-eq v1, v5, :cond_3b

    if-eq v1, v2, :cond_2c

    if-eq v1, v3, :cond_20

    goto :goto_6c

    :cond_20
    const/high16 v1, 0x43870000  # 270.0f

    invoke-virtual {v0, v1, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6c

    :cond_2c
    const/high16 v1, 0x43340000  # 180.0f

    invoke-virtual {v0, v1, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    int-to-float v1, v1

    iget v6, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    int-to-float v6, v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6c

    :cond_3b
    const/high16 v1, 0x42b40000  # 90.0f

    invoke-virtual {v0, v1, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6c

    :cond_47
    iget v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    iget v6, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    if-le v1, v6, :cond_4f

    move v7, v5

    goto :goto_50

    :cond_4f
    move v7, v4

    :goto_50
    iget v8, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    iget v9, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    if-le v8, v9, :cond_58

    move v10, v5

    goto :goto_59

    :cond_58
    move v10, v4

    :goto_59
    if-ne v7, v10, :cond_6c

    if-ne v1, v6, :cond_5f

    if-eq v8, v9, :cond_6c

    :cond_5f
    int-to-float v1, v1

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v6, v8

    int-to-float v7, v9

    div-float/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_6c
    :goto_6c
    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    aget v1, v0, v2

    const/4 v2, 0x5

    aget v0, v0, v2

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/transition/OplusTransitionController;->loadLightScreenRotationAnimations()Z

    move-result v2

    const/4 v6, 0x4

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    aget v9, p0, v4

    aget v10, p0, v3

    aget v11, p0, v5

    aget v12, p0, v6

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ae

    :cond_99
    iget-object v2, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    aget v9, p0, v4

    aget v10, p0, v3

    aget v11, p0, v5

    aget v12, p0, v6

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    :goto_ae
    return-void
.end method

.method private startColorAnimation(FLcom/android/wm/shell/common/ShellExecutor;)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$integer;->config_screen_rotation_color_transition:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v9

    iget v2, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndLuma:F

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v10

    int-to-long v2, v0

    float-to-long v4, p1

    mul-long/2addr v2, v4

    iget-object p1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_5c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/wm/shell/transition/n;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v0

    move v5, v9

    move v6, v10

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/transition/n;-><init>(Lcom/android/wm/shell/transition/ScreenRotationAnimation;Landroid/animation/ValueAnimator;II[FLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Lcom/android/wm/shell/transition/ScreenRotationAnimation$1;

    move-object v2, v8

    move v4, v9

    move v5, v10

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/transition/ScreenRotationAnimation$1;-><init>(Lcom/android/wm/shell/transition/ScreenRotationAnimation;II[FLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/android/launcher3/dragndrop/l;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/dragndrop/l;-><init>(Landroid/animation/ValueAnimator;I)V

    invoke-interface {p2, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :array_5c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startDisplayRotation(Ljava/util/ArrayList;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/OplusTransitionController;->getTaskAnimExtraBundle(Landroid/window/TransitionInfo;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method private startScreenshotRotationAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v8}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public buildAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;FLcom/android/wm/shell/common/ShellExecutor;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "F",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    if-nez v5, :cond_10

    return v6

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->isCustomRotate()Z

    move-result v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_3f

    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimHint:I

    if-ne v9, v7, :cond_21

    sget v7, Lcom/android/internal/R$anim;->rotation_animation_jump_exit:I

    goto :goto_23

    :cond_21
    sget v7, Lcom/android/internal/R$anim;->rotation_animation_xfade_exit:I

    :goto_23
    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/internal/R$anim;->rotation_animation_enter:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/internal/R$anim;->screen_rotate_alpha:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_c4

    :cond_3f
    iget v9, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    iget v10, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    invoke-static {v9, v10}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v12

    if-eqz v12, :cond_90

    if-eq v12, v8, :cond_7b

    if-eq v12, v7, :cond_66

    const/4 v7, 0x3

    if-eq v12, v7, :cond_51

    goto :goto_a4

    :cond_51
    iget-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/internal/R$anim;->screen_rotate_minus_90_exit:I

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/internal/R$anim;->screen_rotate_minus_90_enter:I

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_a4

    :cond_66
    iget-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/internal/R$anim;->screen_rotate_180_exit:I

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/internal/R$anim;->screen_rotate_180_enter:I

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_a4

    :cond_7b
    iget-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/internal/R$anim;->screen_rotate_plus_90_exit:I

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/internal/R$anim;->screen_rotate_plus_90_enter:I

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_a4

    :cond_90
    iget-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/internal/R$anim;->screen_rotate_0_exit:I

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/internal/R$anim;->rotation_animation_enter:I

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    :goto_a4
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v11

    iget v13, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    iget v14, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    iget v15, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    iget v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    iget-object v9, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v16, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v11 .. v17}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookRotationAnimation(IIIIILandroid/view/SurfaceControl;)[Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_c4

    aget-object v6, v7, v6

    iput-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    aget-object v6, v7, v8

    iput-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    :cond_c4
    :goto_c4
    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    iget v9, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    iget v10, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    iget v11, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const-wide/16 v9, 0x2710

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    iget v11, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    iget v12, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    iget v13, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    invoke-virtual {v6, v7, v11, v12, v13}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v6, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    if-eqz v5, :cond_fa

    invoke-direct {v0, v1, v2, v4}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->startDisplayRotation(Ljava/util/ArrayList;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    goto :goto_100

    :cond_fa
    invoke-direct {v0, v1, v2, v4}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->startDisplayRotation(Ljava/util/ArrayList;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->startScreenshotRotationAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    :goto_100
    return v8
.end method

.method public kill()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_22
    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_31
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public setTransitionInfo(Landroid/window/TransitionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mInfo:Landroid/window/TransitionInfo;

    return-void
.end method
