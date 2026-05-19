.class public final Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->animateToProgressInternal(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;FFLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/PointF;ZLandroid/animation/Animator$AnimatorListener;)Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $emptyAnimator:Landroid/animation/ValueAnimator;

.field public final synthetic $listener:Landroid/animation/Animator$AnimatorListener;

.field public final synthetic $swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/touch/TaskWindowSpringScrollController;",
            "Landroid/animation/Animator$AnimatorListener;",
            "Landroid/animation/ValueAnimator;",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    iput-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->$emptyAnimator:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->$swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;ZFFZFF)V
    .registers 8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Swipe down fling animation finish. xCanceled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",yCanceled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "QuickStep"

    const-string p4, "TaskWindowSpringScroller"

    invoke-static {p3, p4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    invoke-static {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->access$getSpringScroller$p(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;)Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->removeEndListener(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->access$setCurrentSwipeDownFlingAnimEndListener$p(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V

    if-nez p2, :cond_43

    if-eqz p5, :cond_34

    goto :goto_43

    :cond_34
    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->$swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getGestureState()Lcom/android/quickstep/GestureState;

    move-result-object p1

    sget p2, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    sget p3, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/android/quickstep/GestureState;->setState(I)V

    goto :goto_50

    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->access$updateState(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;IZ)V

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->$listener:Landroid/animation/Animator$AnimatorListener;

    iget-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->$emptyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :goto_50
    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->$listener:Landroid/animation/Animator$AnimatorListener;

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;->$emptyAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
