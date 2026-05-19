.class Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field public final synthetic val$end:F

.field public final synthetic val$leash:Landroid/view/SurfaceControl;

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V
    .registers 6

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$end:F

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$va:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->lambda$onAnimationEnd$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->access$200(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    const/4 v0, 0x1

    const-string v1, "SplitScreenTransitions"

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$end:F

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_33

    :cond_17
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$leash:Landroid/view/SurfaceControl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x59f9241e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object p1, v4, v0

    const-string p1, "%s: Invalid leash on startFadeAnimation: %s"

    invoke-static {v2, v3, v5, p1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_38
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->access$000(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v2, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_43} :catch_44

    goto :goto_4b

    :catch_44
    move-exception p1

    const-string/jumbo v2, "transition has already released."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    const-string/jumbo p1, "startFadeAnimation mTransactionPool.release(transaction)"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->val$va:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/splitscreen/e0;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/splitscreen/e0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;Landroid/animation/ValueAnimator;)V

    invoke-interface {p1, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
