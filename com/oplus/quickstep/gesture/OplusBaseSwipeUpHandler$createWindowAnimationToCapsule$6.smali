.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToCapsule(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $capsuleLeash:Landroid/view/SurfaceControl;

.field public final synthetic $currentCapsuleRect:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $forceInvisibleRecentsView:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic $homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $transformParams:Lcom/android/quickstep/util/TransformParams;

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/util/TransformParams;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/SurfaceControl;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;",
            "Lcom/android/quickstep/util/TransformParams;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$forceInvisibleRecentsView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$capsuleLeash:Landroid/view/SurfaceControl;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$currentCapsuleRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->onAnimationSuccess$lambda$0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private static final onAnimationSuccess$lambda$0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    :cond_e
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    sget-object p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$capsuleLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->startHideCapsuleSurfaceAnim(Landroid/view/SurfaceControl;)V

    const-string p0, "OplusBaseSwipeUpHandler"

    const-string p1, "Capsule onAnimationCancel: animate cancel"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onEnd()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capsule onAnimationEnd: currentWindowRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$currentCapsuleRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBaseSwipeUpHandler"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_CAPSULE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "OplusBaseSwipeUpHandler"

    const-string v0, "Capsule onAnimationStart: animate start"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    invoke-virtual {p1}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->notifyAnimatorStart()V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_CAPSULE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenWindowAnimate(ZLjava/lang/String;Z)V

    sput-boolean v2, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$forceInvisibleRecentsView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    if-nez p1, :cond_2e

    goto :goto_32

    :cond_2e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v1, "targets"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p0, v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParamsImmediately(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 5

    sget-boolean p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    if-eqz p1, :cond_a

    sget-object p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    invoke-virtual {p1}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->notifyAnimatorNormalEnd()V

    goto :goto_18

    :cond_a
    sget-object p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$capsuleLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->startHideCapsuleSurfaceAnim(Landroid/view/SurfaceControl;)V

    const-string p1, "OplusBaseSwipeUpHandler"

    const-string v0, "Capsule onAnimationSuccess: not normal end"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$resolveHomeAnimEnd(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    new-instance v1, Lcom/oplus/quickstep/gesture/r;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/oplus/quickstep/gesture/r;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3b
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$maybeUpdateRecentsAttachedState(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivityInterface$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$6;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDeviceState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/BaseActivityInterface;->onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    return-void
.end method
