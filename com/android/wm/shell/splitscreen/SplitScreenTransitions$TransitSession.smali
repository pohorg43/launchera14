.class Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitSession"
.end annotation


# instance fields
.field public mCanceled:Z

.field public mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

.field public final mExtraTransitType:I

.field public mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

.field public mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field public final mTransition:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;I)V
    .registers 7

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    if-eqz p5, :cond_1f

    new-instance p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    invoke-direct {p3, p1, p5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    invoke-virtual {p3, p2}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->setTransition(Landroid/os/IBinder;)V

    :cond_1f
    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    return-void
.end method


# virtual methods
.method public cancel(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->setFinishedCallback(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    return-void
.end method

.method public onConsumed(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;->onConsumed(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->access$300(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->transitionSessionOnConsumed(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)V

    return-void
.end method

.method public onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->access$300(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->transitionSessionOnFinished(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public setConsumedCallback(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

    return-void
.end method

.method public setFinishedCallback(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    return-void
.end method

.method public setRemoteTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;)V
    .registers 5

    if-eqz p2, :cond_18

    if-eqz p1, :cond_18

    new-instance v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->setTransition(Landroid/os/IBinder;)V

    :cond_18
    return-void
.end method
