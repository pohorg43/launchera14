.class Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;
.super Landroid/window/IRemoteTransitionFinishedCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/transition/RemoteTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$remote:Landroid/window/RemoteTransition;

.field public final synthetic val$transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6

    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remote:Landroid/window/RemoteTransition;

    iput-object p5, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->lambda$onTransitionFinished$0(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$onTransitionFinished$0(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteTransitionHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onTransitionFinished, finishTransaction.mNativeObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->access$100(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->access$100(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "remote: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " already finished"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-static {p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->access$200(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_66
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p3}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {v0, p3, p4}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->access$300(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    if-eqz p5, :cond_82

    iget-wide v0, p5, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_82

    iget-wide v0, p2, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_82

    invoke-virtual {p2, p5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_82
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-static {p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->access$200(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/transition/OplusInterruptTransitionManager;->setRemoteTransitionToken(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    invoke-interface {p4, p6, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->setRemoteTransitionToken(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 13

    const-string v0, "RemoteTransitionHandler"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onTransitionFinished thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->access$000(Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$remote:Landroid/window/RemoteTransition;

    iget-object v6, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v9, Lcom/android/wm/shell/transition/k;

    move-object v1, v9

    move-object v2, p0

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/transition/k;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    invoke-interface {v0, v9}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
