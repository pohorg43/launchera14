.class Lcom/android/wm/shell/back/CustomizeActivityAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;,
        Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;,
        Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;,
        Lcom/android/wm/shell/back/CustomizeActivityAnimation$Callback;
    }
.end annotation


# static fields
.field private static final ENTER_PROGRESS_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/wm/shell/back/CustomizeActivityAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final POST_ANIMATION_DURATION:I = 0xfa

.field private static final SCALE_FACTOR:I = 0x3e8

.field private static final TARGET_COMMIT_PROGRESS:F = 0.5f


# instance fields
.field public final mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field private final mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCloseAnimation:Landroid/view/animation/Animation;

.field private mClosingTarget:Landroid/view/RemoteAnimationTarget;

.field private final mCornerRadius:F

.field public final mCustomAnimationLoader:Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mEnterAnimation:Landroid/view/animation/Animation;

.field private mEnteringTarget:Landroid/view/RemoteAnimationTarget;

.field private mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field private mLatestProgress:F

.field private mNextBackgroundColor:I

.field private final mProgressAnimator:Landroid/window/BackProgressAnimator;

.field private final mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field private final mTmpFloat9:[F

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;

    const-string v1, "enter"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->ENTER_PROGRESS_PROP:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .registers 5

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Landroid/view/SurfaceControl$Transaction;Landroid/view/Choreographer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Landroid/view/SurfaceControl$Transaction;Landroid/view/Choreographer;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTmpFloat9:[F

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCornerRadius:F

    iput-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    new-instance p2, Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance v0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;)V

    new-instance v2, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;)V

    invoke-direct {p2, v0, v2}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    iput-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    new-instance p2, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCustomAnimationLoader:Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

    new-instance p1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->ENTER_PROGRESS_PROP:Landroid/util/FloatProperty;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    const v0, 0x44bb8000  # 1500.0f

    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-nez p3, :cond_67

    new-instance p3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_67
    iput-object p3, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p4, :cond_6c

    goto :goto_70

    :cond_6c
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p4

    :goto_70
    iput-object p4, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->lambda$onGestureCommitted$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/view/IRemoteAnimationFinishedCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/back/CustomizeActivityAnimation;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->setLatestProgress(F)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->getLatestProgress()F

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)Landroid/window/BackProgressAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/android/wm/shell/back/CustomizeActivityAnimation;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->startBackAnimation()V

    return-void
.end method

.method private applyTransform(Landroid/view/SurfaceControl;FLandroid/view/animation/Animation;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3, p2, v0}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    iget-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTmpFloat9:[F

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p3

    invoke-static {p3}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->keepMinimumAlpha(F)F

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCornerRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private applyTransformTransaction(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v1, :cond_9

    goto :goto_29

    :cond_9
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->applyTransform(Landroid/view/SurfaceControl;FLandroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->applyTransform(Landroid/view/SurfaceControl;FLandroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_29
    :goto_29
    return-void
.end method

.method private getLatestProgress()F
    .registers 2

    iget p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private static initializeAnimation(Landroid/view/animation/Animation;Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1, v0, p1}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method private static keepMinimumAlpha(F)F
    .registers 2

    const v0, 0x3ba3d70a  # 0.005f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$onGestureCommitted$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->applyTransformTransaction(F)V

    return-void
.end method

.method public static mapLinear(FFFFF)F
    .registers 5

    sub-float/2addr p0, p1

    sub-float/2addr p4, p3

    mul-float/2addr p4, p0

    sub-float/2addr p2, p1

    div-float/2addr p4, p2

    add-float/2addr p4, p3

    return p4
.end method

.method private setLatestProgress(F)V
    .registers 3

    const/high16 v0, 0x447a0000  # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->applyTransformTransaction(F)V

    return-void
.end method

.method private startBackAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_47

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_11

    goto :goto_47

    :cond_11
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->initializeAnimation(Landroid/view/animation/Animation;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->initializeAnimation(Landroid/view/animation/Animation;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_46

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mNextBackgroundColor:I

    if-nez v2, :cond_41

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    :cond_41
    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/back/BackAnimationBackground;->ensureBackground(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    :cond_46
    return-void

    :cond_47
    :goto_47
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p0, :cond_57

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x2c67a5e6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Entering target or closing target is null."

    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_57
    return-void
.end method


# virtual methods
.method public finishAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    :cond_1e
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_29

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    :cond_29
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    if-eqz v0, :cond_32

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/back/BackAnimationBackground;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    :cond_32
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mNextBackgroundColor:I

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v2, :cond_5b

    :try_start_51
    invoke-interface {v2}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_59
    iput-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :cond_5b
    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    return-void
.end method

.method public onGestureCommitted()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_11

    goto :goto_46

    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/back/k;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/k;-><init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/back/CustomizeActivityAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$2;-><init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->finishAnimation()V

    return-void
.end method

.method public onGestureProgress(Landroid/window/BackEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_11

    goto :goto_32

    :cond_11
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    const v0, 0x3dcccccd  # 0.1f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    if-lez v1, :cond_25

    invoke-static {p1, v0, v3, v2, v3}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mapLinear(FFFFF)F

    move-result p1

    goto :goto_2a

    :cond_25
    const/4 v0, 0x0

    invoke-static {p1, v0, v3, v0, v2}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mapLinear(FFFFF)F

    move-result p1

    :goto_2a
    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_32
    :goto_32
    return-void
.end method

.method public prepareNextAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCustomAnimationLoader:Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->loadAll(Landroid/window/BackNavigationInfo$CustomAnimationInfo;)Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object v0, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mCloseAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    iget-object v0, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mEnterAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget p1, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mBackgroundColor:I

    iput p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mNextBackgroundColor:I

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
