.class Lcom/android/wm/shell/back/CrossActivityAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;,
        Lcom/android/wm/shell/back/CrossActivityAnimation$Callback;
    }
.end annotation


# static fields
.field private static final ENTER_ALPHA_THRESHOLD:F = 0.22f

.field private static final ENTER_PROGRESS_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/wm/shell/back/CrossActivityAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final LEAVE_PROGRESS_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/wm/shell/back/CrossActivityAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_WINDOW_ALPHA:F = 0.01f

.field private static final MIN_WINDOW_SCALE:F = 0.9f

.field private static final POST_ANIMATION_DURATION:I = 0x15e

.field private static final SCALE_FACTOR:I = 0x64

.field private static final TARGET_COMMIT_PROGRESS:F = 0.5f

.field private static final WINDOW_X_SHIFT_DP:F = 96.0f


# instance fields
.field public final mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field private mBackInProgress:Z

.field private final mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field private final mClosingRect:Landroid/graphics/RectF;

.field private mClosingTarget:Landroid/view/RemoteAnimationTarget;

.field private final mCornerRadius:F

.field private mEnteringProgress:F

.field private final mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field private final mEnteringRect:Landroid/graphics/RectF;

.field private final mEnteringStartRect:Landroid/graphics/Rect;

.field private mEnteringTarget:Landroid/view/RemoteAnimationTarget;

.field private mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field private final mInitialTouchPos:Landroid/graphics/PointF;

.field private mLeavingProgress:F

.field private final mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field private final mProgressAnimator:Landroid/window/BackProgressAnimator;

.field private final mStartTaskRect:Landroid/graphics/Rect;

.field private final mTmpFloat9:[F

.field private mTouchPos:Landroid/graphics/PointF;

.field private mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mTransformMatrix:Landroid/graphics/Matrix;

.field private final mWindowXShift:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/wm/shell/back/CrossActivityAnimation$1;

    const-string v1, "enter-alpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/CrossActivityAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->ENTER_PROGRESS_PROP:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/wm/shell/back/CrossActivityAnimation$2;

    const-string v1, "leave-alpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/CrossActivityAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->LEAVE_PROGRESS_PROP:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgress:F

    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgress:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTmpFloat9:[F

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackInProgress:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTouchPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mCornerRadius:F

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance v1, Lcom/android/wm/shell/back/CrossActivityAnimation$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/back/CrossActivityAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CrossActivityAnimation;Lcom/android/wm/shell/back/CrossActivityAnimation$1;)V

    new-instance v3, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;

    invoke-direct {v3, p0, v2}, Lcom/android/wm/shell/back/CrossActivityAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CrossActivityAnimation;Lcom/android/wm/shell/back/CrossActivityAnimation$1;)V

    invoke-direct {v0, v1, v3}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    new-instance p2, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->ENTER_PROGRESS_PROP:Landroid/util/FloatProperty;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    const v1, 0x44bb8000  # 1500.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->LEAVE_PROGRESS_PROP:Landroid/util/FloatProperty;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x42c00000  # 96.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mWindowXShift:F

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/CrossActivityAnimation;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->lambda$onGestureCommitted$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/back/CrossActivityAnimation;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->setEnteringProgress(F)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/back/CrossActivityAnimation;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->getEnteringProgress()F

    move-result p0

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/wm/shell/back/CrossActivityAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/android/wm/shell/back/CrossActivityAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/back/CrossActivityAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->startBackAnimation()V

    return-void
.end method

.method public static synthetic access$1302(Lcom/android/wm/shell/back/CrossActivityAnimation;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/view/IRemoteAnimationFinishedCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/back/CrossActivityAnimation;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->setLeavingProgress(F)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/back/CrossActivityAnimation;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->getLeavingProgress()F

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/back/CrossActivityAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->finishAnimation()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/back/CrossActivityAnimation;)Landroid/window/BackProgressAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/back/CrossActivityAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->onGestureCommitted()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/back/CrossActivityAnimation;Landroid/window/BackEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->onGestureProgress(Landroid/window/BackEvent;)V

    return-void
.end method

.method private applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V
    .registers 6

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTmpFloat9:[F

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mCornerRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private finishAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    :cond_17
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/back/BackAnimationBackground;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    :cond_20
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackInProgress:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_41

    :try_start_37
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3f
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :cond_41
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    return-void
.end method

.method private getEnteringProgress()F
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgress:F

    const/high16 v0, 0x42c80000  # 100.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private getLeavingProgress()F
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgress:F

    const/high16 v0, 0x42c80000  # 100.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private synthetic lambda$onGestureCommitted$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->updatePostCommitEnteringAnimation(F)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static mapLinear(FFFFF)F
    .registers 5

    sub-float/2addr p0, p1

    sub-float/2addr p4, p3

    mul-float/2addr p4, p0

    sub-float/2addr p2, p1

    div-float/2addr p4, p2

    add-float/2addr p4, p3

    return p4
.end method

.method private static mapRange(FFF)F
    .registers 3

    invoke-static {p2, p1, p0, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private onGestureCommitted()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_9

    goto :goto_4f

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_54

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/back/k;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/k;-><init>(Lcom/android/wm/shell/back/CrossActivityAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/back/CrossActivityAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossActivityAnimation$3;-><init>(Lcom/android/wm/shell/back/CrossActivityAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4f
    :goto_4f
    invoke-direct {p0}, Lcom/android/wm/shell/back/CrossActivityAnimation;->finishAnimation()V

    return-void

    nop

    :array_54
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private onGestureProgress(Landroid/window/BackEvent;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackInProgress:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackInProgress:Z

    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    const v0, 0x3dcccccd  # 0.1f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    if-lez v1, :cond_35

    invoke-static {p1, v0, v3, v2, v3}, Lcom/android/wm/shell/back/CrossActivityAnimation;->mapLinear(FFFFF)F

    move-result v0

    goto :goto_3a

    :cond_35
    const/4 v0, 0x0

    invoke-static {p1, v0, v3, v0, v2}, Lcom/android/wm/shell/back/CrossActivityAnimation;->mapLinear(FFFFF)F

    move-result v0

    :goto_3a
    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationBackground;->onBackProgressed(F)V

    return-void
.end method

.method private setEnteringProgress(F)V
    .registers 10

    const/high16 v0, 0x42c80000  # 100.0f

    div-float v2, p1, v0

    iput v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgress:F

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p1, :cond_2c

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_2c

    const p1, 0x3e6147ae  # 0.22f

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v2}, Lcom/android/wm/shell/back/CrossActivityAnimation;->smoothstep(FFF)F

    move-result p1

    const v0, 0x3c23d70a  # 0.01f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v4, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringRect:Landroid/graphics/RectF;

    iget p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mWindowXShift:F

    neg-float v6, p1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/back/CrossActivityAnimation;->transformWithProgress(FFLandroid/view/SurfaceControl;Landroid/graphics/RectF;FF)V

    :cond_2c
    return-void
.end method

.method private setLeavingProgress(F)V
    .registers 10

    const/high16 v0, 0x42c80000  # 100.0f

    div-float v2, p1, v0

    iput v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgress:F

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p1, :cond_2d

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_2d

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    const v1, 0x3e6147ae  # 0.22f

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/back/CrossActivityAnimation;->smoothstep(FFF)F

    move-result v0

    sub-float/2addr p1, v0

    const v0, 0x3c23d70a  # 0.01f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v4, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mWindowXShift:F

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/back/CrossActivityAnimation;->transformWithProgress(FFLandroid/view/SurfaceControl;Landroid/graphics/RectF;FF)V

    :cond_2d
    return-void
.end method

.method private static smoothstep(FFF)F
    .registers 4

    cmpg-float v0, p2, p0

    if-gez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    cmpl-float v0, p2, p1

    if-ltz v0, :cond_d

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_d
    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    mul-float p0, p2, p2

    const/high16 p1, 0x40400000  # 3.0f

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p2, v0, p1, p0}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private startBackAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_a

    goto :goto_3b

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/back/BackAnimationBackground;->ensureBackground(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_3b
    :goto_3b
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p0, :cond_4a

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x62eae75d

    const/4 v2, 0x0

    const-string v3, "Entering target or closing target is null."

    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4a
    return-void
.end method

.method private transformWithProgress(FFLandroid/view/SurfaceControl;Landroid/graphics/RectF;FF)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTouchPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Lcom/android/wm/shell/back/CrossActivityAnimation;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3dccccd0  # 0.100000024f

    const v4, 0x3f666666  # 0.9f

    invoke-static {v2, p1, v3, v4}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    int-to-float v0, v0

    mul-float/2addr v2, v0

    int-to-float v1, v1

    div-float v3, v1, v0

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    invoke-static {v0, v2, v5, v4}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result v0

    invoke-static {p1, p5, p6}, Lcom/android/wm/shell/back/CrossActivityAnimation;->mapRange(FFF)F

    move-result p1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    const/high16 p1, 0x3f000000  # 0.5f

    mul-float/2addr v1, p1

    add-float/2addr v2, v0

    add-float/2addr v3, v1

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const p1, 0x3c23d70a  # 0.01f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0, p3, p4, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private updatePostCommitEnteringAnimation(F)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {p1, v1, v2}, Lcom/android/wm/shell/back/CrossActivityAnimation;->mapRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v2, v3}, Lcom/android/wm/shell/back/CrossActivityAnimation;->mapRange(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Lcom/android/wm/shell/back/CrossActivityAnimation;->mapRange(FFF)F

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgress:F

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {p1, v4, v5}, Lcom/android/wm/shell/back/CrossActivityAnimation;->mapRange(FFF)F

    move-result p1

    iget-object v4, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringRect:Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    return-void
.end method
