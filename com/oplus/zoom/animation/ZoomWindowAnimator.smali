.class public Lcom/oplus/zoom/animation/ZoomWindowAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;
    }
.end annotation


# static fields
.field private static final ALPHA_SHOW:F = 1.0f

.field private static final DOUBLE_FLOAT:F = 2.0f

.field public static final DRAG_ZOOM_PANEL_COLOR:Ljava/lang/String; = "#FFFFFFFF"

.field public static final DRAG_ZOOM_PANEL_COLOR_NIGHT:Ljava/lang/String; = "#FF4D4D4D"

.field private static final START_BLUR:F = 80.0f

.field private static final TAG:Ljava/lang/String; = "ZoomAnimation"


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mAnimator:Landroid/animation/Animator;

.field private mBlurSurfaceSession:Landroid/view/SurfaceSession;

.field private mContext:Landroid/content/Context;

.field private mIsAnimRunning:Z

.field private mPsViewBlur:Landroid/view/SurfaceControl;

.field private mTransitionManager:Lcom/oplus/zoom/transition/ZoomTransitionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/transition/ZoomTransitionManager;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mBlurSurfaceSession:Landroid/view/SurfaceSession;

    iput-object p2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mTransitionManager:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    iput-object p3, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Landroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->lambda$loadAnimator$1(Landroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mIsAnimRunning:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/animation/ZoomWindowAnimator;)Lcom/oplus/zoom/transition/ZoomTransitionManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mTransitionManager:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/animation/ZoomWindowAnimator;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Landroid/content/Context;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->preparePocketStudioBlur(Landroid/content/Context;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->releasePsBlur(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic b(Landroid/animation/Animator;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->lambda$startAnimation$0(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/animation/ZoomWindowAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->lambda$cancelAnimation$2()V

    return-void
.end method

.method private synthetic lambda$cancelAnimation$2()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method

.method private synthetic lambda$loadAnimator$1(Landroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "ZoomAnimation"

    if-eqz v1, :cond_178

    invoke-virtual/range {p1 .. p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_178

    :cond_14
    iget-boolean v5, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mIsAnimRunning:Z

    if-nez v5, :cond_1e

    const-string v0, "current animator has been stopped"

    invoke-static {v4, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ValueAnimator;->getDuration()J

    invoke-virtual/range {p5 .. p5}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    invoke-virtual/range {p5 .. p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget-object v8, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget-object v7, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iget-object v8, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    iget-object v9, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget v8, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startScale:F

    iget v9, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishScale:F

    invoke-static {v9, v8, v5, v8}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v8

    iget v9, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startAlpha:F

    iget v10, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishAlpha:F

    invoke-static {v10, v9, v5, v9}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    const/high16 v11, 0x40000000  # 2.0f

    div-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v6, v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    div-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v7, v10

    iget v10, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->type:I

    const/16 v11, 0xca

    const/high16 v12, 0x3f800000  # 1.0f

    if-ne v10, v11, :cond_c2

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v6

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v7

    iget-object v10, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    iget v13, v10, Landroid/graphics/Rect;->left:I

    iget-object v14, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishRect:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v13

    int-to-float v15, v15

    mul-float/2addr v15, v5

    float-to-int v15, v15

    add-int/2addr v13, v15

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v10

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    add-int/2addr v10, v14

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    sub-float v14, v12, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int v15, v7, v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v14, v15

    sub-int/2addr v7, v14

    invoke-virtual {v3, v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move v7, v10

    move v6, v13

    :cond_c2
    iget v10, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->type:I

    const/16 v13, 0x68

    if-ne v10, v13, :cond_e3

    iget-object v6, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v13, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishRect:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v7

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    add-int/2addr v7, v14

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v6

    int-to-float v13, v13

    mul-float/2addr v13, v5

    float-to-int v13, v13

    add-int/2addr v6, v13

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    :cond_e3
    const/4 v13, 0x0

    cmpl-float v13, v8, v13

    if-eqz v13, :cond_103

    if-eq v10, v11, :cond_fa

    const/16 v11, 0x66

    if-eq v10, v11, :cond_fa

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopLimitInZoom()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_fa
    int-to-float v10, v6

    int-to-float v11, v7

    invoke-virtual {v3, v1, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    invoke-virtual {v10, v1, v8, v8}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_103
    iget v2, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->type:I

    const/16 v10, 0x6a

    if-eq v2, v10, :cond_115

    iget-object v0, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mTransitionManager:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->isForceHideZoomWindow()Z

    move-result v0

    if-nez v0, :cond_13d

    invoke-virtual {v3, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_13d

    :cond_115
    invoke-virtual {v3, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_13d

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_13d

    iget-object v1, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    sub-float/2addr v12, v5

    invoke-virtual {v3, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 v1, 0x42a00000  # 80.0f

    iget-object v2, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v5, v1

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v0, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_13d
    :goto_13d
    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zoom animation update, scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",taskBound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_178
    :goto_178
    const-string v0, "leash state error"

    invoke-static {v4, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$0(Landroid/animation/Animator;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomUtil;->setAnimationThreadUx(Z)V

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private preparePocketStudioBlur(Landroid/content/Context;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 18

    move-object v0, p0

    :try_start_1
    new-instance v12, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v12}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {p0, v12}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->releasePsBlur(Landroid/view/SurfaceControl$Transaction;)V

    move-object v1, p2

    iget-object v1, v1, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iget-object v1, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "#FF4D4D4D"

    goto :goto_23

    :cond_21
    const-string v1, "#FFFFFFFF"

    :goto_23
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-instance v5, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v5, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mBlurSurfaceSession:Landroid/view/SurfaceSession;

    const-string v10, "ps_zoomBg"

    const-string v11, "preparePocketStudioBlur"

    move-object/from16 v6, p3

    invoke-static/range {v6 .. v11}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v9, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    iget-object v10, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    move-object v4, v5

    move-object v8, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getZoomCornerRadius()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v12, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getZoomCornerRadius()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v2, p3

    invoke-virtual {v12, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    const/high16 v2, 0x42a00000  # 80.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v12}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8c} :catch_8d

    goto :goto_a4

    :catch_8d
    move-exception v0

    const-string v1, "preparePocketStudioBlur "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomAnimation"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a4
    return-void
.end method

.method private releasePsBlur(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mPsViewBlur:Landroid/view/SurfaceControl;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_2d

    :catch_16
    move-exception p0

    const-string p1, "releasePsBlur error "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomAnimation"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mIsAnimRunning:Z

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/zoom/animation/ZoomWindowAnimator;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method public loadAnimator(Landroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnimator, info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomAnimation"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/locateaction/a;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher/locateaction/a;-><init>(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Landroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_3e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public startAnimation(Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;)V
    .registers 15

    if-eqz p1, :cond_31

    if-eqz p3, :cond_31

    if-nez p5, :cond_7

    goto :goto_31

    :cond_7
    const/16 v0, 0x7532

    invoke-virtual {p4, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p3, p1, p4, p2}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->loadAnimator(Landroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_30

    new-instance v8, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;-><init>(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->cancelAnimation()V

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/coui/appcompat/reddot/a;

    invoke-direct {p2, v0}, Lcom/coui/appcompat/reddot/a;-><init>(Landroid/animation/Animator;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->mAnimator:Landroid/animation/Animator;

    :cond_30
    return-void

    :cond_31
    :goto_31
    const-string p0, "ZoomAnimation"

    const-string p1, "startAnimation, something is null"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
