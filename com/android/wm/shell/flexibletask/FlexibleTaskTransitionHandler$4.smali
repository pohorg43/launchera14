.class Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;
.super Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->releaseChangingAnim(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

.field public final synthetic val$finisher:Ljava/lang/Runnable;

.field public final synthetic val$screenshotLayer:Landroid/view/SurfaceControl;

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final synthetic val$va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 7

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->this$0:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$screenshotLayer:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$finisher:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$va:Landroid/animation/ValueAnimator;

    iput-object p6, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;-><init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 3

    invoke-super {p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$FlexibleTaskAnimatorListenerAdapter;->onAnimationFinished()V

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$screenshotLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$screenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_18
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$va:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$4;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
