.class Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mFinished:Z

.field public final synthetic val$finisher:Ljava/lang/Runnable;

.field public final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final synthetic val$va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->val$finisher:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->val$va:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->mFinished:Z

    return-void
.end method

.method private onFinish()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->mFinished:Z

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->val$va:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Z)V

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionJankTracker;->getInstance()Lcom/android/wm/shell/transition/TransitionJankTracker;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/TransitionJankTracker;->taskAnimationEnd(Z)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->onFinish()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;->onFinish()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/OplusTransitionController;->onAnimationStart()V

    return-void
.end method
