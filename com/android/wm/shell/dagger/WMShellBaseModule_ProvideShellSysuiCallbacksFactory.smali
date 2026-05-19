.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final createTriggerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final shellControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/lang/Object;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;->createTriggerProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;->shellControllerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/lang/Object;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;-><init>(Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideShellSysuiCallbacks(Ljava/lang/Object;Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/sysui/ShellInterface;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideShellSysuiCallbacks(Ljava/lang/Object;Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/sysui/ShellInterface;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/sysui/ShellInterface;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;->createTriggerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;->shellControllerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;->provideShellSysuiCallbacks(Ljava/lang/Object;Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/sysui/ShellInterface;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;->get()Lcom/android/wm/shell/sysui/ShellInterface;

    move-result-object p0

    return-object p0
.end method
