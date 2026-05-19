.class Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/ShellTransitions;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellTransitionImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;Landroid/window/RemoteTransition;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->lambda$unregisterRemote$1(Landroid/window/RemoteTransition;)V

    return-void
.end method

.method private synthetic lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->access$600(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->addFiltered(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method private synthetic lambda$unregisterRemote$1(Landroid/window/RemoteTransition;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->access$600(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->removeFiltered(Landroid/window/RemoteTransition;)V

    return-void
.end method


# virtual methods
.method public forceCancelRecentsTransition()V
    .registers 1

    return-void
.end method

.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->access$500(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/transition/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/transition/z;-><init>(Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 2

    return-void
.end method

.method public unregisterRemote(Landroid/window/RemoteTransition;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->access$500(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/transition/i;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/transition/i;-><init>(Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;Landroid/window/RemoteTransition;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 2

    return-void
.end method
