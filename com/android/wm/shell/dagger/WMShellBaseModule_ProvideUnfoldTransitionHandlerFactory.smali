.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final handlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final progressProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;"
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
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->progressProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->handlerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;-><init>(Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideUnfoldTransitionHandler(Ljava/util/Optional;Lz3/a;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;",
            "Lz3/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideUnfoldTransitionHandler(Ljava/util/Optional;Lz3/a;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->progressProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->handlerProvider:Lg4/a;

    invoke-static {p0}, La4/a;->a(Lg4/a;)Lz3/a;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->provideUnfoldTransitionHandler(Ljava/util/Optional;Lz3/a;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
