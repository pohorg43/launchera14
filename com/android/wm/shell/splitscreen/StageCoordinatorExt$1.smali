.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->lambda$onTransitionFinished$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->lambda$onTransitionFinished$1(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static synthetic lambda$onTransitionFinished$0()V
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetOpeningFullApp()V

    return-void
.end method

.method private synthetic lambda$onTransitionFinished$1(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/z1;->a:Lcom/android/wm/shell/splitscreen/z1;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onTransitionFinished(Landroid/os/IBinder;Z)V
    .registers 6

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransitionFinished, transition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", aborted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_47

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isOpeningFullApp()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/y1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/y1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_47
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onTransitionFinished(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 6

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransitionMerged, merged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", playing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$202(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransitionReady, transition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->logDebugForTransitionInfo(Ljava/lang/String;Ljava/lang/String;Landroid/window/TransitionInfo;)V

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isActivityTransitionInSplit()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetIsActivityTransitionInSplit()V

    :cond_38
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$202(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/IBinder;)Landroid/os/IBinder;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setAppReLaunchRequest(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onTransitionStarting(Landroid/os/IBinder;)V
    .registers 5

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransitionStarting, transition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onTransitionStarting(Landroid/os/IBinder;)V

    return-void
.end method
