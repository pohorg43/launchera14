.class Lcom/android/wm/shell/pip/PipTaskOrganizer$1;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/PipTaskOrganizer$1;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->lambda$onPipAnimationEnd$1(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->lambda$onPipAnimationEnd$0(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    return-void
.end method

.method private static synthetic lambda$onPipAnimationEnd$0(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$100(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    return-void
.end method

.method private synthetic lambda$onPipAnimationEnd$1(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$1000(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method


# virtual methods
.method public onPipAnimationCancel(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .registers 8

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/pip/l;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lcom/android/wm/shell/pip/l;-><init>(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;I)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;Z)V

    :cond_22
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$900(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V

    return-void
.end method

.method public onPipAnimationEnd(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .registers 10

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v4

    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$100(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    return-void

    :cond_13
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result v5

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v4}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v2, p3}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;Z)V

    :cond_36
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$200(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Z

    move-result p1

    if-eqz p1, :cond_8b

    if-nez v5, :cond_8b

    const/4 p1, 0x2

    if-ne v4, p1, :cond_8b

    invoke-static {}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notify the display to continue the deferred orientation change.destinationBounds = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/oplus/pip/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Landroid/window/WindowContainerToken;

    move-result-object p3

    invoke-virtual {p1, p3, v3}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p3, p3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p3, p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$600(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p1

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$500(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Landroid/view/SurfaceControl;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$702(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_8b
    invoke-static {v4}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result p1

    if-nez p1, :cond_99

    invoke-static {v4}, Lcom/android/wm/shell/pip/PipAnimationController;->isRemovePipDirection(I)Z

    move-result p1

    if-eqz p1, :cond_98

    goto :goto_99

    :cond_98
    const/4 v0, 0x0

    :cond_99
    :goto_99
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p1, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTransitionState;->getTransitionState()I

    move-result p1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_a6

    if-eqz v0, :cond_bf

    :cond_a6
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p3, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/pip/k;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/pip/k;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    new-instance p3, Lcom/android/wm/shell/pip/m;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/m;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$1;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    invoke-static {p1, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$800(Lcom/android/wm/shell/pip/PipTaskOrganizer;Ljava/lang/Runnable;)V

    :cond_bf
    return-void
.end method

.method public onPipAnimationStart(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .registers 3

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$000(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V

    return-void
.end method
