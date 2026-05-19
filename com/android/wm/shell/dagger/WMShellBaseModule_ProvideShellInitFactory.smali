.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final mainExecutorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;->mainExecutorProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;-><init>(Lg4/a;)V

    return-object v0
.end method

.method public static provideShellInit(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/sysui/ShellInit;
    .registers 2

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideShellInit(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/sysui/ShellInit;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/sysui/ShellInit;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;->provideShellInit(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/sysui/ShellInit;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitFactory;->get()Lcom/android/wm/shell/sysui/ShellInit;

    move-result-object p0

    return-object p0
.end method
