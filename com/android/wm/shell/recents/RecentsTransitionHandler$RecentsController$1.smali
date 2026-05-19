.class Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;
.super Landroid/window/IRemoteTransitionFinishedCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$info:Landroid/window/TransitionInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->this$1:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->val$info:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->lambda$onTransitionFinished$0(Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method private synthetic lambda$onTransitionFinished$0(Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->this$1:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->access$600(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-result-object p0

    if-nez p0, :cond_f

    const-string/jumbo p0, "recent already finish, don\'t release surface and call onMerge"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    const/4 p0, 0x0

    invoke-interface {p2, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method


# virtual methods
.method public onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->this$1:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->access$400(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->val$info:Landroid/window/TransitionInfo;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v1, Lcom/android/wm/shell/recents/o;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/wm/shell/recents/o;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-interface {p1, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
