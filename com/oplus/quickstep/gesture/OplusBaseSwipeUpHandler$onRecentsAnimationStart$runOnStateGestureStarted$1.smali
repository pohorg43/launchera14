.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $wrapInterrupt:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-boolean p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->$wrapInterrupt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRunningWindowAnim$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    array-length v0, v0

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iget-boolean v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->$wrapInterrupt:Z

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$isInterruptRectEmpty(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z

    move-result v3

    if-nez v3, :cond_23

    move v1, v2

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasRunningWindowAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", needAnimToCurrent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_6f

    if-eqz v1, :cond_4d

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    :cond_4d
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getCurrentAnimateRectF$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object p0

    instance-of v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v0, :cond_63

    move-object v2, p0

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_63
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getReverseToFullscreenAnim()Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-result-object p0

    if-eqz p0, :cond_6e

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reallyCancel()V

    :cond_6e
    return-void

    :cond_6f
    if-nez v1, :cond_79

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->fromRecentReverseState()Z

    move-result v0

    if-nez v0, :cond_92

    :cond_79
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    instance-of v3, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v3, :cond_86

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_87

    :cond_86
    move-object v0, v2

    :goto_87
    if-eqz v0, :cond_92

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getReverseToFullscreenAnim()Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reallyCancel()V

    :cond_92
    if-eqz v1, :cond_112

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getAppTransitionManager$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v1

    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v2

    :cond_a0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getInterruptRectF()Landroid/graphics/RectF;

    move-result-object v1

    const-string v2, "appTransitionManager?.in…uptParam!!.interruptRectF"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$createWindowAnimateToCurrent(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setAnimToCurrent$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_be

    invoke-interface {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->hideIconSurface()V

    :cond_be
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_d3

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->releaseLastIconSurface(Landroid/view/View;)V

    :cond_d3
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getAnimToCurrent$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    move-result-object v0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getCurrentAnimateRectF$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelIconLaunchAnimation()V

    return-void

    :cond_ea
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getAnimToCurrent$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1$run$1;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-direct {v1, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1$run$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getAnimToCurrent$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_16a

    :cond_112
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->fromRecentReverseState()Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_125

    invoke-interface {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->hideIconSurface()V

    :cond_125
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMReverseInheritAnimParam$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getAnimRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$createReverseInheritAnimToCurrent(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setMReverseInheritAnim$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V

    goto :goto_16a

    :cond_141
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getCurrentAnimateRectF$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_155

    invoke-interface {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->hideIconSurface()V

    :cond_155
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_16a

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$runOnStateGestureStarted$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->releaseLastIconSurface(Landroid/view/View;)V

    :cond_16a
    :goto_16a
    return-void
.end method
