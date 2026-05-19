.class Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellInterface;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/sysui/ShellController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellInterfaceImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/sysui/ShellController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/sysui/ShellController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;-><init>(Lcom/android/wm/shell/sysui/ShellController;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$onInit$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$onKeyguardDismissAnimationFinished$3()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$onUserProfilesChanged$5(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$handleCommand$6([Z[Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$onConfigurationChanged$1(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ZZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$onKeyguardVisibilityChanged$2(ZZZ)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ILandroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$onUserChanged$4(ILandroid/content/Context;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$createExternalInterfaces$7(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->lambda$dump$8(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$createExternalInterfaces$7(Landroid/os/Bundle;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sysui/ShellController;->createExternalInterfaces(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$dump$8(Ljava/io/PrintWriter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/sysui/ShellController;->access$200(Lcom/android/wm/shell/sysui/ShellController;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$handleCommand$6([Z[Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {p0}, Lcom/android/wm/shell/sysui/ShellController;->access$300(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->handleCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    const/4 p2, 0x0

    aput-boolean p0, p1, p2

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sysui/ShellController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onInit$0()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {p0}, Lcom/android/wm/shell/sysui/ShellController;->access$400(Lcom/android/wm/shell/sysui/ShellController;)V

    return-void
.end method

.method private synthetic lambda$onKeyguardDismissAnimationFinished$3()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {p0}, Lcom/android/wm/shell/sysui/ShellController;->onKeyguardDismissAnimationFinished()V

    return-void
.end method

.method private synthetic lambda$onKeyguardVisibilityChanged$2(ZZZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/sysui/ShellController;->onKeyguardVisibilityChanged(ZZZ)V

    return-void
.end method

.method private synthetic lambda$onUserChanged$4(ILandroid/content/Context;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sysui/ShellController;->onUserChanged(ILandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onUserProfilesChanged$5(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sysui/ShellController;->onUserProfilesChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createExternalInterfaces(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/sysui/b;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/sysui/b;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get Shell command in 2s"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/sysui/b;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/sysui/b;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to dump the Shell in 2s"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public handleCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v1}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/sysui/g;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/wm/shell/sysui/g;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    aget-boolean p0, v0, p0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to handle Shell command in 2s"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/sysui/a;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/sysui/a;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInit()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/sysui/c;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/sysui/c;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize the Shell in 2s"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onKeyguardDismissAnimationFinished()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/sysui/d;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/sysui/d;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/sysui/f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/sysui/f;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ZZZ)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .registers 5
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/sysui/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/sysui/e;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ILandroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserProfilesChanged(Ljava/util/List;)V
    .registers 4
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/sysui/ShellController;->access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/sysui/a;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/sysui/a;-><init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
