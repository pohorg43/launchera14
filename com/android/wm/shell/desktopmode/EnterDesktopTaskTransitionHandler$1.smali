.class Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishT:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->this$0:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->val$finishT:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->lambda$onAnimationEnd$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->this$0:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->access$000(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;)Ljava/util/function/Consumer;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->this$0:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->access$000(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;)Ljava/util/function/Consumer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->val$finishT:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_13
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->this$0:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->access$100(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v0, Lcom/android/wm/shell/desktopmode/h;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/h;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
