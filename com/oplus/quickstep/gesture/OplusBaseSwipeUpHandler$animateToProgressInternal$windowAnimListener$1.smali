.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $target:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public final synthetic $type:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Lcom/android/quickstep/GestureState$GestureEndTarget;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->$type:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->$target:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "OplusBaseSwipeUpHandler"

    const-string v0, "windowAnim onAnimationCancel"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsAnimationController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object p0

    sget p1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/GestureState;->setState(I)V

    :cond_1d
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onWindowAnimationEnd()V

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->$type:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->$type:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onWindowAnimationStart()V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 8

    const-string p1, "OplusBaseSwipeUpHandler"

    const-string v0, "windowAnim onAnimationSuccess"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsAnimationController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getLastAppearedTaskIndex(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$hasStartedNewTask(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z

    move-result v2

    const-string v3, "Recents windowAnim success end.taskToLaunch:"

    const-string v4, ",lastAppearedTaskIndex:"

    invoke-static {v3, v0, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getLastAppearedTaskIndex(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",hasStartedNewTask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    invoke-static {v4, p1, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->$target:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v5, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v3, v5, :cond_66

    if-ne v0, v1, :cond_66

    if-nez v2, :cond_66

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object p1

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    goto :goto_ad

    :cond_66
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v3, v1, :cond_ad

    if-eqz v2, :cond_ad

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    instance-of v2, v2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v2, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v2, :cond_ad

    check-cast v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v0

    const-string v2, "taskIds"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_9f
    if-ge v3, v2, :cond_ad

    aget v5, v0, v3

    if-ne v1, v5, :cond_aa

    const-string v5, "we are not change the endTarget to NEW_TASK, because of runningTask "

    invoke-static {v4, p1, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    :cond_ad
    :goto_ad
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$windowAnimListener$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object p0

    sget p1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/GestureState;->setState(I)V

    return-void
.end method
