.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final displayControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final displayInsetsControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final shellInitProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionPoolProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;"
        }
    .end annotation
.end field

.field private final wmServiceProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/view/IWindowManager;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->wmServiceProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->shellInitProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->displayControllerProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->displayInsetsControllerProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->transactionPoolProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->mainExecutorProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/view/IWindowManager;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;"
        }
    .end annotation

    new-instance v7, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v7
.end method

.method public static provideDisplayImeController(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayImeController;
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideDisplayImeController(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/common/DisplayImeController;
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->wmServiceProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->displayControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->displayInsetsControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->transactionPoolProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/common/TransactionPool;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->provideDisplayImeController(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayImeControllerFactory;->get()Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p0

    return-object p0
.end method
