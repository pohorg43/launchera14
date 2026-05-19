.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToHome(FLandroid/graphics/PointF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $toHomeAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->$toHomeAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseSwipeUpHandler"

    const-string v1, "createAnimateToHome onAnimationCancel()"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsAnimationController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object p0

    sget p1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/GestureState;->setState(I)V

    :cond_1f
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "createAnimateToHome onAnimationEnd()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->$toHomeAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setBetweenTransitionEndAndFinish(Z)V

    :cond_19
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onWindowAnimationEnd()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p0, "HM_APP_GAP"

    const-string p1, "launcher"

    const-string v0, ".activity_exit_gesture"

    const-string v1, " end"

    invoke-static {p0, p1, v0, v1}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseSwipeUpHandler"

    const-string v1, "createAnimateToHome onAnimationStart()"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HM_APP_GAP"

    const-string v0, "launcher"

    const-string v1, ".activity_exit_gesture"

    const-string v2, " begin"

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onWindowAnimationStart()V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseSwipeUpHandler"

    const-string v1, "createAnimateToHome onAnimationSuccess()"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsAnimationController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object p0

    sget p1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/GestureState;->setState(I)V

    return-void
.end method
