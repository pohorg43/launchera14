.class Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;
.super Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->startFlexibleAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

.field public final synthetic val$change:Landroid/window/TransitionInfo$Change;

.field public final synthetic val$finisher:Ljava/lang/Runnable;

.field public final synthetic val$info:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final synthetic val$va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 7

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->this$0:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$change:Landroid/window/TransitionInfo$Change;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$info:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$finisher:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$va:Landroid/animation/ValueAnimator;

    iput-object p6, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 3

    invoke-super {p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;->onAnimationFinished()V

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$va:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$change:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$info:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_notifyFlexibleTaskEvent(IILandroid/os/Bundle;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "FlexibleTaskTransitionHandler"

    const-string/jumbo v0, "startFlexibleAnimation  onAnimationStart"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$change:Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p1

    add-int/lit8 p1, p1, 0x64

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;->val$info:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_notifyFlexibleTaskEvent(IILandroid/os/Bundle;)V

    return-void
.end method
