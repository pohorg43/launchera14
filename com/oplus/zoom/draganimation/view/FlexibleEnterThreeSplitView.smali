.class public Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BLUR_PANEL_SURFACE_COLOR:Ljava/lang/String; = "#FFFFFFFF"

.field private static final BLUR_PANEL_SURFACE_COLOR_DARK:Ljava/lang/String; = "#FF4D4D4D"

.field private static final DEFAULT_DURATION:J = 0xe9L

.field private static final DRAG_BLUE_RANDIUS:F = 50.0f

.field private static final DRAG_PANEL_ALPHA:F = 0.8f

.field private static final ENTER_SPLIT_CORNER_RADIUS:F = 28.0f

.field private static final ENTER_SPLIT_ENLARGE_CORNER_RADIUS:F = 34.0f

.field private static final FOLD_SCALE_RATIO:F = 1.2f

.field private static final LEFT_RIGHT_BIG_RIGHT:I = 0x3

.field private static final LEFT_RIGHT_LEFT_BOTTOM:I = 0x4

.field private static final LEFT_RIGHT_RIGHT_BOTTOM:I = 0x7

.field private static final METADATA_FLEXIBLE_ACTIVITY:I = 0xc8

.field private static final NAVI_BAR_HEIGHT_THRESHOLD:I = 0x1e

.field private static final NORMAL_SHADOW_COLOR:Ljava/lang/String; = "#8C000000"

.field private static final TABLET_SCALE_RATIO:F = 1.15f

.field private static final TAG:Ljava/lang/String; = "FlexibleEnterThreeSplitView"

.field private static final THREE_HORIZONTAL:I = 0x1

.field private static final THREE_VERTICAL:I = 0x5

.field private static final UP_DOWN_BIG_BOTTOM:I = 0x0

.field private static final UP_DOWN_RIGHT_BOTTOM:I = 0x6

.field private static final UP_DOWN_TOP_RIGHT:I = 0x2


# instance fields
.field private mAdjustedNavHeight:I

.field private mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mAppearAnim:Landroid/animation/ValueAnimator;

.field private mBlurPanelSurface:Landroid/view/SurfaceControl;

.field private final mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

.field private mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDisplayWidth:I

.field private mEnterLayout:Landroid/widget/FrameLayout;

.field private mEnterThreeSurface:Landroid/view/SurfaceControl;

.field private mEnterThreeViewHost:Landroid/view/SurfaceControlViewHost;

.field private mFramelayoutBackground:Landroid/widget/FrameLayout;

.field private mFramelayoutContentPost:Landroid/widget/FrameLayout;

.field private mFramelayoutContentPre:Landroid/widget/FrameLayout;

.field private mIsEnterViewShow:Z

.field private mIsNeedRiseViewHeight:Z

.field private mIsScaleLarge:Z

.field private mMiniScaleRatio:F

.field private mScaleAnim:Landroid/animation/ValueAnimator;

.field private mScaleRatio:F

.field private mShadowRadius:I

.field private mThirdIconMode:I

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mShadowRadius:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    const v0, 0x3f99999a  # 1.2f

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    const v0, 0x3e4ccccd  # 0.2f

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mMiniScaleRatio:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsScaleLarge:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsEnterViewShow:Z

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsNeedRiseViewHeight:Z

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAdjustedNavHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mWM:Landroid/view/WindowManager;

    invoke-static {}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->getScaleRatio()F

    move-result p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;FLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->lambda$appearScaleAnim$1(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsScaleLarge:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPre:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPost:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    return p0
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;F)Landroid/graphics/Rect;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->calculateRectArea(F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;FLandroid/graphics/Rect;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->showAndCropPanelSurface(FLandroid/graphics/Rect;Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mMiniScaleRatio:F

    return p0
.end method

.method public static synthetic access$800(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method private adjustViewHeightIfNeed()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-direct {p0, v1, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->getNavBarHeight()I

    move-result v1

    iput v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAdjustedNavHeight:I

    if-le v1, v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsNeedRiseViewHeight:Z

    goto :goto_1d

    :cond_18
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAdjustedNavHeight:I

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsNeedRiseViewHeight:Z

    :goto_1d
    sget-object v0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->TAG:Ljava/lang/String;

    const-string v1, "adjustViewHeightIfNeed mAdjustedNavHeight:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAdjustedNavHeight:I

    invoke-static {v1, p0, v0}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private appearScaleAnim()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x42480000  # 50.0f

    invoke-direct {p0, v1, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_40

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xe9

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/bubbles/q0;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/bubbles/q0;-><init>(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;-><init>(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic b(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->lambda$setScaleAnimPlayIfNeed$0(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calculateRectArea(F)Landroid/graphics/Rect;
    .registers 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v4, v3, p1

    const/high16 v5, 0x40000000  # 2.0f

    invoke-static {v2, v4, v5, v1}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v1

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v2

    float-to-int v2, v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p1, v3

    invoke-static {v6, p1, v5, v4}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p1, v5, v4}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private cancelAllAnim()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAppearAnim:Landroid/animation/ValueAnimator;

    :cond_17
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    :cond_2d
    return-void
.end method

.method private createBlurSurfacePanel(Landroid/view/SurfaceControl;)V
    .registers 16

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayWidth:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/view/SurfaceSession;

    invoke-direct {v7}, Landroid/view/SurfaceSession;-><init>()V

    if-eqz p1, :cond_b7

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsNeedRiseViewHeight:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAdjustedNavHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_30
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayWidth:I

    iget v6, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayHeight:I

    const-string v8, "enter_split_blur_Surface"

    const-string v9, "enter_split_blur_Surface_layer"

    invoke-static/range {v4 .. v9}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_52

    const-string p1, "#FF4D4D4D"

    goto :goto_54

    :cond_52
    const-string p1, "#FFFFFFFF"

    :goto_54
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayWidth:I

    iget v9, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayHeight:I

    iget-object v10, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v11, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    iget-object v12, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    const/high16 v1, 0x41e00000  # 28.0f

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mShadowRadius:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    const/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_b7
    return-void
.end method

.method private dpToPx(FLandroid/content/res/Resources;)I
    .registers 3

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p2, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getNavBarHeight()I
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mWM:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method private static getScaleRatio()F
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x3f933333  # 1.15f

    return v0

    :cond_e
    const v0, 0x3f99999a  # 1.2f

    return v0
.end method

.method private hideEnterSplit()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->cancelAllAnim()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->TAG:Ljava/lang/String;

    const-string v1, "hideEnterSplit() this="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->removeBluePanelSurface()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsScaleLarge:Z

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsEnterViewShow:Z

    :cond_2b
    return-void
.end method

.method private initDisplayRect()V
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayWidth:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayHeight:I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayWidth:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayRect:Landroid/graphics/Rect;

    return-void
.end method

.method private isUpDownMode(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x1

    if-lt p0, v1, :cond_17

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ne p0, v1, :cond_17

    return v0

    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v1

    if-lt p0, v2, :cond_2d

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ne p0, v1, :cond_2d

    return v0

    :cond_2d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p2

    if-lt p0, v1, :cond_43

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p1, :cond_43

    return v0

    :cond_43
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$appearScaleAnim$1(FLandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mMiniScaleRatio:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0, p2, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPre:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    invoke-direct {p0, p2}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->calculateRectArea(F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_4b
    return-void
.end method

.method private synthetic lambda$setScaleAnimPlayIfNeed$0(ZLandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPre:Landroid/widget/FrameLayout;

    sub-float v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPost:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    invoke-static {p1, v0, p2, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->calculateRectArea(F)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->showAndCropPanelSurface(FLandroid/graphics/Rect;Z)V

    goto :goto_6b

    :cond_3d
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    sub-float/2addr v1, v0

    sub-float v2, v0, p2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPre:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPost:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    invoke-static {p1, v0, v2, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->calculateRectArea(F)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->showAndCropPanelSurface(FLandroid/graphics/Rect;Z)V

    :goto_6b
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private removeBluePanelSurface()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_19
    return-void
.end method

.method private setImageViewRes(Landroid/widget/ImageView;Z)V
    .registers 3

    iget p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    packed-switch p0, :pswitch_data_7a

    goto/16 :goto_78

    :pswitch_7  #0x7
    if-eqz p2, :cond_10

    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_enter_three_split_icon6:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_78

    :cond_10
    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_wait_enter_three_split_icon6:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_78

    :pswitch_17  #0x6
    if-eqz p2, :cond_1f

    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_enter_three_split_icon7:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :cond_1f
    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_wait_enter_three_split_icon7:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :pswitch_25  #0x5
    if-eqz p2, :cond_2d

    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_enter_three_split_icon2:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :cond_2d
    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_wait_enter_three_split_icon2:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :pswitch_33  #0x4
    if-eqz p2, :cond_3b

    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_enter_three_split_icon3:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :cond_3b
    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_wait_enter_three_split_icon3:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :pswitch_41  #0x3
    if-eqz p2, :cond_49

    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_enter_three_split_icon1:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :cond_49
    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_wait_enter_three_split_icon1:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :pswitch_4f  #0x2
    if-eqz p2, :cond_57

    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_enter_three_split_icon4:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :cond_57
    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_wait_enter_three_split_icon4:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :pswitch_5d  #0x1
    if-eqz p2, :cond_65

    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_enter_three_split_icon5:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :cond_65
    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_wait_enter_three_split_icon5:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :pswitch_6b  #0x0
    if-eqz p2, :cond_73

    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_enter_three_split_icon:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_78

    :cond_73
    sget p0, Lcom/android/wm/shell/R$drawable;->oplus_flexiable_wait_enter_three_split_icon:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_78
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6b  #00000000
        :pswitch_5d  #00000001
        :pswitch_4f  #00000002
        :pswitch_41  #00000003
        :pswitch_33  #00000004
        :pswitch_25  #00000005
        :pswitch_17  #00000006
        :pswitch_7  #00000007
    .end packed-switch
.end method

.method private showAndCropPanelSurface(FLandroid/graphics/Rect;Z)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    const v1, 0x3f4ccccd  # 0.8f

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 p2, 0x40c00000  # 6.0f

    const/high16 v0, 0x42080000  # 34.0f

    if-eqz p3, :cond_4e

    const/high16 p3, 0x41e00000  # 28.0f

    mul-float/2addr p1, p2

    add-float/2addr p1, p3

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_75

    :cond_4e
    mul-float/2addr p1, p2

    sub-float p1, v0, p1

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mBlurPanelSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    iget-object p3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_75
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_7a
    return-void
.end method

.method private showEnterSplit()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsEnterViewShow:Z

    if-nez v0, :cond_28

    sget-object v0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->TAG:Ljava/lang/String;

    const-string v1, "showEnterSplit() this="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsEnterViewShow:Z

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->appearScaleAnim()V

    :cond_28
    return-void
.end method


# virtual methods
.method public getCurrentRectArea()Landroid/graphics/Rect;
    .registers 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsScaleLarge:Z

    if-eqz v1, :cond_71

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    float-to-int v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    sub-float v7, v5, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v3

    add-float/2addr v7, v4

    float-to-int v4, v7

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    sub-float/2addr v8, v5

    mul-float/2addr v8, v7

    div-float/2addr v8, v3

    add-float/2addr v8, v6

    float-to-int v6, v8

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v8, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleRatio:F

    sub-float/2addr v8, v5

    mul-float/2addr v8, v0

    div-float/2addr v8, v3

    add-float/2addr v8, v7

    float-to-int v0, v8

    invoke-direct {v1, v2, v4, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    :cond_71
    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsNeedRiseViewHeight:Z

    if-eqz v1, :cond_7c

    const/4 v1, 0x0

    iget p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mAdjustedNavHeight:I

    neg-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_7c
    return-object v0
.end method

.method public prepareEnterSplitView(Landroid/view/SurfaceControl;)V
    .registers 13

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isInAppInnerSplitScreen(I)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->TAG:Ljava/lang/String;

    const-string p1, "prepareEnterSplitView abort for InAppInnerSplitScreen"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->initDisplayRect()V

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->adjustViewHeightIfNeed()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    const/16 v3, 0x7f6

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$layout;->oplus_flexible_three_split_enter_layout:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/wm/shell/R$id;->flexible_three_split_background_rect:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/wm/shell/R$id;->flexible_three_split_content_pre:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPre:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/wm/shell/R$id;->flexible_three_split_content_post:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutContentPost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/wm/shell/R$id;->flexible_wait_enter_split_text:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/wm/shell/R$color;->flexible_enter_split_text_color_night:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_7d

    :cond_71
    iget-object v5, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/wm/shell/R$color;->flexible_enter_split_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    :goto_7d
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    sget v5, Lcom/android/wm/shell/R$id;->flexible_enter_split_text:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/wm/shell/R$color;->flexible_enter_split_text_color_night:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_a5

    :cond_99
    iget-object v3, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/wm/shell/R$color;->flexible_enter_split_text_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_a5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mFramelayoutBackground:Landroid/widget/FrameLayout;

    const-string v3, "#8C000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOutlineSpotShadowColor(I)V

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/wm/shell/R$id;->flexible_wait_enter_split_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->setImageViewRes(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/wm/shell/R$id;->flexible_enter_split_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->setImageViewRes(Landroid/widget/ImageView;Z)V

    new-instance v0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeViewHost:Landroid/view/SurfaceControlViewHost;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x7f6

    const/16 v9, 0x18

    const/4 v10, -0x3

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000040

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v1, "enterThreeSplitTarget"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    if-eqz v0, :cond_11c

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeSurface:Landroid/view/SurfaceControl;

    :cond_11c
    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->createBlurSurfacePanel(Landroid/view/SurfaceControl;)V

    sget-object p1, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->TAG:Ljava/lang/String;

    const-string v0, "prepareEnterSplitView enterLayout="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " enterThreeViewHost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterThreeViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFlexibleEnterThreeSplitShowIfNeeded(Z)V
    .registers 5

    if-eqz p1, :cond_6

    :try_start_2
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->showEnterSplit()V

    goto :goto_23

    :cond_6
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->hideEnterSplit()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_23

    :catch_a
    move-exception p0

    sget-object v0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->TAG:Ljava/lang/String;

    const-string v1, "setFlexibleEnterThreeSplitShowIfNeeded failed show="

    const-string v2, " "

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public setRectList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->initDisplayRect()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_35

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_35

    iput v2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    goto/16 :goto_cc

    :cond_35
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v5, :cond_44

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v5, :cond_44

    const/4 v0, 0x5

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    goto/16 :goto_cc

    :cond_44
    invoke-direct {p0, v1, v3, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->isUpDownMode(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v2, v5, :cond_56

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_60

    :cond_56
    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v5, :cond_64

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_64

    :cond_60
    iput v4, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    goto/16 :goto_cc

    :cond_64
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_88

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_7a

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_84

    :cond_7a
    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_88

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-le v2, v4, :cond_88

    :cond_84
    const/4 v0, 0x6

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    goto :goto_cc

    :cond_88
    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    goto :goto_cc

    :cond_8b
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_97

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v4, :cond_a1

    :cond_97
    iget v2, v3, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_a5

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_a5

    :cond_a1
    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    goto :goto_cc

    :cond_a5
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_bb

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v4, :cond_c5

    :cond_bb
    iget v2, v3, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_c9

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_c9

    :cond_c5
    const/4 v0, 0x7

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    goto :goto_cc

    :cond_c9
    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    :goto_cc
    sget-object v0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRectList leftRect:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rightRect:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " thirdRect:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mThirdIconMode:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mThirdIconMode:I

    invoke-static {v2, p0, v0}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public setScaleAnimPlayIfNeed(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mEnterLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mIsScaleLarge:Z

    if-ne p1, v0, :cond_9

    goto :goto_3a

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguardservice/d;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguardservice/d;-><init>(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;-><init>(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->mScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3a
    :goto_3a
    return-void

    nop

    :array_3c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
