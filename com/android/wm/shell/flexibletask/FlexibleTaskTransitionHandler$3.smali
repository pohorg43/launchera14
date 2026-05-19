.class Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->startFlexibleTaskMaximizedAnimationSec(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;FLjava/lang/Runnable;)V
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


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->this$0:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->val$screenshotLayer:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->val$screenshotLayer:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->val$screenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_16
    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler$3;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Z)V

    return-void
.end method
