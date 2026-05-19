.class Lcom/android/wm/shell/splitscreen/StageCoordinator$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionFinished(Landroid/os/IBinder;Z)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1900(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/transition/Transitions;->unregisterObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1802(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/DisplayImeController;->reStartImeAnimation(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$9;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_40
    return-void
.end method

.method public onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    return-void
.end method

.method public onTransitionStarting(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method
