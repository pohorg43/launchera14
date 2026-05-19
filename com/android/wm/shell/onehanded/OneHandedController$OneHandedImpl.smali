.class Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHanded;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OneHandedImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$onConfigChanged$6(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$setLockedDisabled$3(ZZ)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$stopOneHanded$1()V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$registerEventCallback$4(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$startOneHanded$0()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$stopOneHanded$2(I)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$registerTransitionCallback$5(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$onKeyguardVisibilityChanged$8(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$onUserSwitch$7(I)V

    return-void
.end method

.method private synthetic lambda$onConfigChanged$6(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onKeyguardVisibilityChanged$8(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onKeyguardVisibilityChanged(ZZZ)V

    return-void
.end method

.method private synthetic lambda$onUserSwitch$7(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$400(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->onUserChanged(ILandroid/content/Context;)V

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setLockedDisabled(ZZ)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$registerEventCallback$4(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerEventCallback(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V

    return-void
.end method

.method private synthetic lambda$registerTransitionCallback$5(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    return-void
.end method

.method private synthetic lambda$setLockedDisabled$3(ZZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedController;->setLockedDisabled(ZZ)V

    return-void
.end method

.method private synthetic lambda$startOneHanded$0()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    return-void
.end method

.method private synthetic lambda$stopOneHanded$1()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void
.end method

.method private synthetic lambda$stopOneHanded$2(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1000(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    return-void
.end method


# virtual methods
.method public isOneHandedEnabled()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$900(Lcom/android/wm/shell/onehanded/OneHandedController;)Z

    move-result p0

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/i;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/i;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/l;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/l;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserSwitch(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/onehanded/h;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerEventCallback(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/k;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/k;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/i;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/i;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLockedDisabled(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/onehanded/m;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startOneHanded()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/e;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/e;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopOneHanded()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/j;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/j;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopOneHanded(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/onehanded/h;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
