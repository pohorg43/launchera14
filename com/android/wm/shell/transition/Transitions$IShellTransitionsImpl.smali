.class Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;
.super Lcom/android/wm/shell/transition/IShellTransitions$Stub;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# annotations
.annotation build Landroidx/annotation/BinderThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IShellTransitionsImpl"
.end annotation


# instance fields
.field private mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->lambda$unregisterRemoteTaskListener$3(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public static synthetic b(Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->lambda$unregisterRemote$1(Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->lambda$registerRemoteTaskListener$2(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public static synthetic d(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method private static synthetic lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 3

    invoke-static {p2}, Lcom/android/wm/shell/transition/Transitions;->access$600(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->addFiltered(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method private static synthetic lambda$registerRemoteTaskListener$2(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions;->access$700(Lcom/android/wm/shell/transition/Transitions;)Landroid/window/WindowOrganizer;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz p1, :cond_d

    if-eqz p0, :cond_d

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    :cond_d
    return-void
.end method

.method private static synthetic lambda$unregisterRemote$1(Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions;->access$600(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->removeFiltered(Landroid/window/RemoteTransition;)V

    return-void
.end method

.method private static synthetic lambda$unregisterRemoteTaskListener$3(Lcom/android/wm/shell/transition/IOplusTaskListener;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 2

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions;->access$700(Lcom/android/wm/shell/transition/Transitions;)Landroid/window/WindowOrganizer;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz p1, :cond_d

    if-eqz p0, :cond_d

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->unregisterRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public forceCancelRecentsTransition()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    sget-object v0, Lcom/android/wm/shell/transition/x;->a:Lcom/android/wm/shell/transition/x;

    const-string v1, "forceCancelRecentsTransition"

    invoke-static {p0, v1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getShellApplyToken()Landroid/os/IBinder;
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl$Transaction;->getDefaultApplyToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/transition/u;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/transition/u;-><init>(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    const-string/jumbo p1, "registerRemote"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/transition/w;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/transition/w;-><init>(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    const-string/jumbo p1, "registerRemoteTaskListener"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterRemote(Landroid/window/RemoteTransition;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/transition/t;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/transition/t;-><init>(Landroid/window/RemoteTransition;)V

    const-string/jumbo p1, "unregisterRemote"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/transition/v;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/transition/v;-><init>(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    const-string/jumbo p1, "unregisterRemoteTaskListener"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
