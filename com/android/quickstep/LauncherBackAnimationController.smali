.class public Lcom/android/quickstep/LauncherBackAnimationController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;,
        Lcom/android/quickstep/LauncherBackAnimationController$IStaticRemoteAnimationRunner;
    }
.end annotation


# static fields
.field private static final CANCEL_TRANSITION_DURATION:I = 0xe9

.field private static final MIN_WINDOW_SCALE:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "LauncherBackAnimationController"


# instance fields
.field private mAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field private mAnimatorSetInProgress:Z

.field private mBackCallback:Landroid/window/IOnBackInvokedCallback;

.field private mBackInProgress:Z

.field private mBackProgress:F

.field private mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private final mCancelInterpolator:Landroid/view/animation/Interpolator;

.field private final mCancelRect:Landroid/graphics/RectF;

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private final mInitialTouchPos:Landroid/graphics/PointF;

.field private final mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/BaseQuickstepLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressAnimator:Landroid/window/BackProgressAnimator;

.field private final mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

.field private mSpringAnimationInProgress:Z

.field private final mStartRect:Landroid/graphics/Rect;

.field private mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mTransformMatrix:Landroid/graphics/Matrix;

.field private final mWindowMaxDeltaY:I

.field private final mWindowScaleEndCornerRadius:F

.field private final mWindowScaleMarginX:I

.field private final mWindowScaleStartCornerRadius:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/QuickstepTransitionManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncherRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f56

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float v1, p2

    :cond_5d
    iput v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f58

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f57

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowMaxDeltaY:I

    const p2, 0x7f0c0002

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->lambda$resetPositionAnimated$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->startTransition()V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/quickstep/LauncherBackAnimationController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->resetPositionAnimated()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->tryFinishBackAnimation()V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/quickstep/LauncherBackAnimationController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/android/quickstep/LauncherBackAnimationController;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/view/IRemoteAnimationFinishedCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->startBack(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/android/quickstep/LauncherBackAnimationController;F)F
    .registers 2

    iput p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    return p1
.end method

.method public static synthetic access$900(Lcom/android/quickstep/LauncherBackAnimationController;FLandroid/window/BackEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherBackAnimationController;->updateBackProgress(FLandroid/window/BackEvent;)V

    return-void
.end method

.method private applyTransform(Landroid/graphics/RectF;F)V
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_4c
    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private finishAnimation()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    iput-boolean v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v1, :cond_38

    :try_start_2a
    invoke-interface {v1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception v1

    const-string v2, "ShellBackPreview"

    const-string v3, "Failed call onBackAnimationFinished"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :cond_38
    return-void
.end method

.method private synthetic lambda$resetPositionAnimated$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->updateCancelProgress(F)V

    return-void
.end method

.method private resetPositionAnimated()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/guide/f;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/quickstep/LauncherBackAnimationController$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$1;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_30
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startBack(Landroid/window/BackMotionEvent;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private startTransition()V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-nez v0, :cond_1b

    const-string p0, "LauncherBackAnimationController"

    const-string/jumbo v0, "startTransition mLauncher==null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_22

    return-void

    :cond_22
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->addForceInvisibleFlag(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :cond_35
    const v1, 0x4da274

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iget v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v4, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {v1, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v11

    iget-object v5, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aput-object v1, v6, v2

    new-array v7, v2, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-array v8, v2, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenAnimations([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLandroid/graphics/RectF;F)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, v1}, Lcom/android/quickstep/LauncherBackAnimationController;->startTransitionAnimations(Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;)V

    const/16 p0, 0xf

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    return-void
.end method

.method private startTransitionAnimations(Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    iput-boolean v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    if-eqz p1, :cond_19

    new-instance v0, Lcom/android/quickstep/LauncherBackAnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController$2;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_19
    if-eqz p2, :cond_26

    new-instance p1, Lcom/android/quickstep/LauncherBackAnimationController$3;

    invoke-direct {p1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$3;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_26
    return-void
.end method

.method private tryFinishBackAnimation()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    :cond_b
    return-void
.end method

.method private updateBackProgress(FLandroid/window/BackEvent;)V
    .registers 11

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v0, v2

    const/high16 v3, 0x3f800000  # 1.0f

    const v4, 0x3f333333  # 0.7f

    invoke-static {p1, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {p1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    div-float v3, v1, v0

    mul-float/2addr v3, v2

    invoke-virtual {p2}, Landroid/window/BackEvent;->getTouchY()F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowMaxDeltaY:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000  # 0.5f

    invoke-static {v1, v3, v5, v4}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v1

    invoke-virtual {p2}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result p2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_62

    iget p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    goto :goto_69

    :cond_62
    iget p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    sub-float/2addr v0, p2

    sub-float p2, v0, v2

    :goto_69
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    add-float/2addr v2, p2

    add-float/2addr v3, v1

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iget-object p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {p0, p2, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->applyTransform(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private updateCancelProgress(F)V
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {p1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-static {p1, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iget v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->applyTransform(Landroid/graphics/RectF;F)V

    return-void
.end method


# virtual methods
.method public registerBackCallbacks(Landroid/os/Handler;)V
    .registers 4

    new-instance v0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance p1, Lcom/android/quickstep/LauncherBackAnimationController$IStaticRemoteAnimationRunner;

    invoke-direct {p1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticRemoteAnimationRunner;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-nez v0, :cond_1f

    const-string p0, "LauncherBackAnimationController"

    const-string/jumbo p1, "registerBackCallbacks mLauncher==null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/SystemUiProxy;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    return-void
.end method

.method public unregisterBackCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-nez v0, :cond_13

    const-string p0, "LauncherBackAnimationController"

    const-string/jumbo v0, "unregisterBackCallbacks mLauncher==null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v1, :cond_24

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->clearBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V

    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method
