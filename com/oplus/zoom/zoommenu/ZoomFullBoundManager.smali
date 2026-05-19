.class public Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;
.super Landroid/view/WindowlessWindowManager;
.source ""


# static fields
.field private static final EXPAND_ANIM_DURATION:I = 0x258

.field private static final FADE_OUT_ANIM_DURATION:I = 0x96

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

.field private static final OFFSET_TIME_FADE_OUT:I = 0x96

.field private static final SHRINK_ANIM_DURATION:I = 0xfa

.field public static final SHRINK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String; = "ZoomDecor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFull:Landroid/view/View;

.field private mFullBound:Landroid/view/View;

.field private mFullBoundAnimator:Landroid/animation/AnimatorSet;

.field private mIsExpand:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLeash:Landroid/view/SurfaceControl;

.field private mPendingRemove:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field public mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;

.field private mZoomPos:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b  # 0.17f

    const v3, 0x3f547ae1  # 0.83f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->SHRINK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;ZILandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->lambda$buildExpandAnimation$0(ZILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFullBound:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFull:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mIsExpand:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mPendingRemove:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->removeFullBoundInner()V

    return-void
.end method

.method private buildExpandAnimation(Z)Landroid/animation/ValueAnimator;
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getZoomCornerRadius()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_3a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/pageindicators/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher/pageindicators/c;-><init>(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;ZI)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;-><init>(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_2f

    const-wide/16 p0, 0x258

    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_39

    :cond_2f
    const-wide/16 p0, 0xfa

    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->SHRINK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_39
    return-object v1

    :array_3a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private buildFadeOutAnimation()Landroid/animation/ValueAnimator;
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFull:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;-><init>(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_22
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private buildLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x90f

    const v4, 0x1000038

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenWidth:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenHeight:I

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance p0, Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string p0, "ZoomFullScreenView"

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, 0x20000040

    or-int/2addr p0, v0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method private cancelFullBoundAnim()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFullBoundAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFullBoundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    const-string p0, "ZoomDecor"

    const-string v0, "startFullBoundAnim, cancel"

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method private createFullBound(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenHeight:I

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenWidth:I

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mZoomPos:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mIsExpand:Z

    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    const-string v3, "ZoomFullBoundManager"

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->zoom_full_bound:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFullBound:Landroid/view/View;

    sget v1, Lcom/android/wm/shell/R$id;->full_bound:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFull:Landroid/view/View;

    const-string v1, "#262660F5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->buildLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFullBound:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->moveFullBound(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const-string p0, "ZoomDecor"

    const-string p1, "createFullBound"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildExpandAnimation$0(ZILandroid/animation/ValueAnimator;)V
    .registers 12

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mZoomPos:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mZoomPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenWidth:I

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    iget v3, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenHeight:I

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mZoomPos:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int p2, p2

    move v5, v4

    move v4, v2

    move v2, v1

    move v1, v0

    move v0, p2

    goto :goto_4e

    :cond_2d
    iget p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenWidth:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr p1, v0

    iget v1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mZoomPos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mZoomPos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v4, p2

    iget-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mZoomPos:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    move v5, v4

    move v7, v0

    move v0, p2

    move p2, v2

    move v2, v1

    move v1, v7

    :goto_4e
    int-to-float v6, p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, p3

    add-float/2addr p1, v6

    float-to-int p1, p1

    int-to-float v2, v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v5

    sub-int/2addr p2, v5

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, v2

    float-to-int p2, p2

    int-to-float v2, v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr p3, v0

    add-float/2addr p3, v2

    float-to-int p3, p3

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p1, p2

    add-int/2addr v1, p3

    invoke-direct {v0, p2, p3, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->moveFullBound(Landroid/graphics/Rect;)V

    return-void
.end method

.method private moveFullBound(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFull:Landroid/view/View;

    if-eqz v0, :cond_2e

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFull:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2e
    return-void
.end method

.method private removeFullBoundInner()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->cancelFullBoundAnim()V

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    :cond_a
    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLeash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFullBound:Landroid/view/View;

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFull:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mPendingRemove:Z

    const-string p0, "ZoomDecor"

    const-string v0, "removeFullBoundInner"

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startFullBoundAnim(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mIsExpand:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFullBoundAnim isExpand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomDecor"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mIsExpand:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_2d

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->buildExpandAnimation(Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_42

    :cond_2d
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->buildExpandAnimation(Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->buildFadeOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_42
    invoke-direct {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->cancelFullBoundAnim()V

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFullBoundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .registers 4

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance p2, Landroid/view/SurfaceSession;

    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget p2, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenWidth:I

    iget v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mScreenHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "ZoomFullBound"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "ZoomFullBoundManager#attachToParentSurface"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLeash:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method public hideFullBound()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->startFullBoundAnim(Z)V

    :cond_d
    :goto_d
    return-void
.end method

.method public removeFullBound()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mFullBoundAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mPendingRemove:Z

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->removeFullBoundInner()V

    return-void
.end method

.method public showFullBound(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_b

    :cond_8
    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->createFullBound(Landroid/graphics/Rect;)V

    :cond_b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->mPendingRemove:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->startFullBoundAnim(Z)V

    return-void
.end method
