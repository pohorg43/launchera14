.class Lcom/android/wm/shell/back/CrossTaskBackAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;,
        Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;
    }
.end annotation


# static fields
.field private static final BACKGROUNDCOLOR:I = 0x43433a

.field private static final CLOSING_MIN_WINDOW_COLOR_SCALE:F = 0.1f

.field private static final CLOSING_MIN_WINDOW_SCALE:F = 0.75f

.field private static final ENTERING_MIN_WINDOW_SCALE:F = 0.85f

.field private static final WINDOW_MARGIN:I = 0x23

.field private static final WINDOW_MAX_DELTA_Y:I = 0xa0


# instance fields
.field public final mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field private mBackInProgress:Z

.field private final mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field private final mClosingCurrentRect:Landroid/graphics/RectF;

.field private mClosingTarget:Landroid/view/RemoteAnimationTarget;

.field private final mCornerRadius:F

.field private final mEnteringCurrentRect:Landroid/graphics/RectF;

.field private final mEnteringStartRect:Landroid/graphics/Rect;

.field private mEnteringTarget:Landroid/view/RemoteAnimationTarget;

.field private mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field private final mInitialTouchPos:Landroid/graphics/PointF;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRightEdge:Z

.field private mProgress:F

.field private mProgressAnimator:Landroid/window/BackProgressAnimator;

.field private final mStartTaskRect:Landroid/graphics/Rect;

.field private final mTmpFloat9:[F

.field private final mTmpTranslate:[F

.field private mTouchPos:Landroid/graphics/PointF;

.field private mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mTransformMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_78

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpTranslate:[F

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgress:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTouchPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    new-instance p1, Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;)V

    new-instance v2, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;)V

    invoke-direct {p1, v0, v2}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    return-void

    :array_78
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->lambda$onGestureCommitted$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->finishAnimation()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)Landroid/window/BackProgressAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->onGestureCommitted()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/window/BackEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->onGestureProgress(Landroid/window/BackEvent;)V

    return-void
.end method

.method public static synthetic access$602(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->startBackAnimation()V

    return-void
.end method

.method public static synthetic access$902(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/view/IRemoteAnimationFinishedCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-object p1
.end method

.method private applyColorTransform(Landroid/view/SurfaceControl;F)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    invoke-static {p2, v0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->computeScaleTransformMatrix(F[F)V

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpTranslate:[F

    invoke-virtual {p2, p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public static computeScaleTransformMatrix(F[F)V
    .registers 4

    const/4 v0, 0x0

    aput p0, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v1, p1, v0

    const/4 v0, 0x3

    aput v1, p1, v0

    const/4 v0, 0x4

    aput p0, p1, v0

    const/4 v0, 0x5

    aput v1, p1, v0

    const/4 v0, 0x6

    aput v1, p1, v0

    const/4 v0, 0x7

    aput v1, p1, v0

    const/16 v0, 0x8

    aput p0, p1, v0

    return-void
.end method

.method private finishAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    :cond_17
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/back/BackAnimationBackground;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    :cond_20
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_46

    :try_start_3c
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_44
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :cond_46
    return-void
.end method

.method private getInterpolatedProgress(F)F
    .registers 3

    const/high16 p0, 0x3f800000  # 1.0f

    sub-float p1, p0, p1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    sub-float/2addr p0, v0

    return p0
.end method

.method private synthetic lambda$onGestureCommitted$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->updatePostCommitEnteringAnimation(F)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->updatePostCommitClosingAnimation(F)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static mapRange(FFF)F
    .registers 3

    invoke-static {p2, p1, p0, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private onGestureCommitted()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_9

    goto :goto_39

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/back/m;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/m;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->finishAnimation()V

    return-void

    nop

    :array_3e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private onGestureProgress(Landroid/window/BackEvent;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mIsRightEdge:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    :cond_1f
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgress:F

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgress:F

    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->getInterpolatedProgress(F)F

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->updateGestureBackProgress(FLandroid/window/BackEvent;)V

    return-void
.end method

.method private startBackAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_a

    goto :goto_2d

    :cond_a
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const v2, 0x43433a

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/back/BackAnimationBackground;->ensureBackground(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_2d
    :goto_2d
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p0, :cond_3c

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x684743a0

    const/4 v2, 0x0

    const-string v3, "Entering target or closing target is null."

    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    return-void
.end method

.method private updateGestureBackProgress(FLandroid/window/BackEvent;)V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_a

    goto/16 :goto_a5

    :cond_a
    invoke-virtual {p2}, Landroid/window/BackEvent;->getTouchX()F

    move-result v0

    invoke-virtual {p2}, Landroid/window/BackEvent;->getTouchY()F

    move-result p2

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const v2, 0x3f59999a  # 0.85f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {p1, v3, v2}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result v2

    const/high16 v4, 0x3f400000  # 0.75f

    invoke-static {p1, v3, v4}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result v4

    const v5, 0x3dcccccd  # 0.1f

    invoke-static {p1, v3, v5}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result v3

    int-to-float v0, v0

    mul-float/2addr v2, v0

    mul-float/2addr v4, v0

    int-to-float v1, v1

    div-float v5, v1, v0

    mul-float v6, v5, v2

    mul-float/2addr v5, v4

    iget-object v7, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v7

    div-float/2addr p2, v1

    float-to-double v7, p2

    const-wide v9, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float p2, v7

    const/high16 v7, 0x43200000  # 160.0f

    mul-float/2addr p2, v7

    const/high16 v7, 0x3f000000  # 0.5f

    invoke-static {v1, v5, v7, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v8

    invoke-static {v1, v6, v7, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p2

    const/high16 v1, 0x420c0000  # 35.0f

    mul-float v7, p1, v1

    sub-float/2addr v0, v7

    sub-float v4, v0, v4

    iget-object v7, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    add-float/2addr v5, v8

    invoke-virtual {v7, v4, v8, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    sub-float v2, v4, v2

    sub-float/2addr v2, v1

    sub-float/2addr v4, v1

    add-float/2addr v6, p2

    invoke-virtual {v0, v2, p2, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    invoke-direct {p0, p2, v0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {p0, p2, v3}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyColorTransform(Landroid/view/SurfaceControl;F)V

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    invoke-direct {p0, p2, v0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationBackground;->onBackProgressed(F)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method private updatePostCommitClosingAnimation(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private updatePostCommitEnteringAnimation(F)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {p1, v1, v2}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v2, v3}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result p1

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr p1, v1

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    return-void
.end method
