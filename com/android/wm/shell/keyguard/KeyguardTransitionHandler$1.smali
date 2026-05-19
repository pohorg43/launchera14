.class Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;
.super Landroid/window/IRemoteTransitionFinishedCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$info:Landroid/window/TransitionInfo;

.field public final synthetic val$transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$info:Landroid/window/TransitionInfo;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->lambda$onTransitionFinished$0(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method private synthetic lambda$onTransitionFinished$0(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-static {p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->access$200(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_10

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_10
    invoke-static {p2, p3}, Lcom/oplus/transition/WCTExtInfoReflectionHelper;->addFlagsForKeyguardHandler(Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;)V

    const/4 p0, 0x0

    invoke-interface {p4, p2, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method


# virtual methods
.method public onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    iget-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-static {p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->access$100(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p2

    iget-object v2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$info:Landroid/window/TransitionInfo;

    iget-object v5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v6, Lcom/android/wm/shell/keyguard/a;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/keyguard/a;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    const-wide/16 p0, 0x0

    invoke-interface {p2, v6, p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
