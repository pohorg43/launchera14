.class public Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/InputConsumer;
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;
    }
.end annotation


# static fields
.field private static final RECENTS_TRANSLATION_DELAY:J = 0x1f4L

.field private static final STATE_HANDLER_INVALIDATED:I

.field private static final STATE_NAMES:[Ljava/lang/String;

.field private static final STATE_TARGET_RECEIVED:I

.field private static final TAG:Ljava/lang/String; = "DeviceLockedInputConsumer"

.field private static lastStartRecentTranslationTime:J


# instance fields
.field private mCancelWhenRecentsStart:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private mDismissTask:Z

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mGestureState:Lcom/android/quickstep/GestureState;

.field private mHomeLaunched:Z

.field private final mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMaxTranslationY:F

.field private final mProgress:Lcom/android/quickstep/AnimatedFloat;

.field private mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field private final mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field public mThresholdCrossed:Z

.field private final mTouchDown:Landroid/graphics/PointF;

.field private final mTouchSlopSquared:F

.field private final mTransformParams:Lcom/android/quickstep/util/TransformParams;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "STATE_TARGET_RECEIVED"

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_TARGET_RECEIVED:I

    const/4 v0, 0x1

    const-string v1, "STATE_HANDLER_INVALIDATED"

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->getFlagForIndex(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mCancelWhenRecentsStart:Z

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDismissTask:Z

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchSlopSquared:F

    new-instance p2, Lcom/android/quickstep/util/TransformParams;

    invoke-direct {p2}, Lcom/android/quickstep/util/TransformParams;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    iput-object p5, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070772

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMaxTranslationY:F

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    new-instance p1, Lcom/android/quickstep/MultiStateCallback;

    sget-object p2, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_NAMES:[Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_TARGET_RECEIVED:I

    sget p3, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr p2, p3

    new-instance p3, Lcom/android/launcher3/model/b1;

    invoke-direct {p3, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/TaskAnimationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/RecentsAnimationController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishRecentsAnimationForShell(Z)V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mCancelWhenRecentsStart:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDismissTask:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/GestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    return p1
.end method

.method public static synthetic access$800()I
    .registers 1

    sget v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    return v0
.end method

.method public static synthetic access$900(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/MultiStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    return-object p0
.end method

.method private applyTransform()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/TransformParams;->createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_1a
    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->applyTransform()V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->endRemoteAnimation()V

    return-void
.end method

.method private endRemoteAnimation()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    goto :goto_15

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method private finishRecentsAnimationForShell(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mCancelWhenRecentsStart:Z

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    :cond_d
    return-void
.end method

.method private static getFlagForIndex(ILjava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_NAMES:[Ljava/lang/String;

    aput-object p1, v0, p0

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method

.method private startRecentsTransition()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mHomeLaunched:Z

    const-string v0, "Pilfer"

    const-string/jumbo v1, "pilferPointers"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result v1

    const-string v2, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-string/jumbo v2, "recentapps"

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public createRecentsIntent()Landroid/content/Intent;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public finishTouchTracking(Landroid/view/MotionEvent;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6e

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d7c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v3, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_35

    cmpg-float p1, p1, v4

    if-gez p1, :cond_33

    goto :goto_40

    :cond_33
    move v0, v3

    goto :goto_40

    :cond_35
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget p1, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const v2, 0x3e99999a  # 0.3f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_33

    :goto_40
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v2, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p1, v2, v4}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;

    invoke-direct {v2, p0, v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;-><init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    if-eqz v0, :cond_6a

    new-instance v2, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;

    invoke-direct {v2, p1, v1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;-><init>(Landroid/animation/Animator;Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    :cond_6a
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_75

    :cond_6e
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :goto_75
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public getType()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 5

    iget-object p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget p3, p3, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMaxTranslationY:F

    mul-float/2addr p3, v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    return-void
.end method

.method public onConsumerAboutToBeSwitched()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_bd

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_47

    const/4 v0, 0x3

    if-eq v2, v0, :cond_b9

    const/4 v1, 0x5

    if-eq v2, v1, :cond_24

    goto/16 :goto_c2

    :cond_24
    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    if-nez v1, :cond_c2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-nez v1, :cond_c2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_c2

    :cond_47
    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    if-nez p1, :cond_a3

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result p1

    iget v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchSlopSquared:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c2

    sget-wide v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->lastStartRecentTranslationTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_73

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v6, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->lastStartRecentTranslationTime:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1f4

    cmp-long p1, v0, v6

    if-lez p1, :cond_73

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_91

    const-string/jumbo p1, "onMotionEvent: isNextEnter:"

    const-string v0, ", lastStartRecentTranslationTime:"

    invoke-static {p1, v3, v0}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-wide v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->lastStartRecentTranslationTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceLockedInputConsumer"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    sget-wide v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->lastStartRecentTranslationTime:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_99

    if-eqz v3, :cond_c2

    :cond_99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->lastStartRecentTranslationTime:J

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->startRecentsTransition()V

    goto :goto_c2

    :cond_a3
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mProgress:Lcom/android/quickstep/AnimatedFloat;

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    goto :goto_c2

    :cond_b9
    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    goto :goto_c2

    :cond_bd
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_c2
    :goto_c2
    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mCancelWhenRecentsStart:Z

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->applyTransform()V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->STATE_TARGET_RECEIVED:I

    invoke-virtual {p1, p2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mCancelWhenRecentsStart:Z

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mDismissTask:Z

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishRecentsAnimationForShell(Z)V

    :cond_1a
    return-void
.end method
