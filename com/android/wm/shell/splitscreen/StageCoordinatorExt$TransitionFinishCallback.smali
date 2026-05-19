.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitionFinishCallback"
.end annotation


# instance fields
.field public mFinishedCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mTransition:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mFinishedCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mTransition:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public isTarget(Landroid/os/IBinder;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mTransition:Landroid/os/IBinder;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onFinished(Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mTransition:Landroid/os/IBinder;

    if-ne p1, v0, :cond_40

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onFinished. transiton:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mTransition:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFinishedCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mFinishedCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTransitionFinishCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$2800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mFinishedCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz p1, :cond_40

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$2802(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;

    :cond_40
    return-void
.end method

.method public update(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mTransition:Landroid/os/IBinder;

    if-ne v0, p1, :cond_27

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$TransitionFinishCallback;->mTransition:Landroid/os/IBinder;

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update transition for transitionFinishCallback, merge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", playing="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method
