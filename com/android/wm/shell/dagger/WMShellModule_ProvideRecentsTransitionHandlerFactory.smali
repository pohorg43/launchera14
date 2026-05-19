.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final pipTransitionControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private final recentTasksControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;"
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

.field private final transitionsProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->shellInitProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->transitionsProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->recentTasksControllerProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->pipTransitionControllerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideRecentsTransitionHandler(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/pip/PipTransitionController;)Lcom/android/wm/shell/recents/RecentsTransitionHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ")",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/dagger/WMShellModule;->provideRecentsTransitionHandler(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/pip/PipTransitionController;)Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/recents/RecentsTransitionHandler;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->transitionsProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions;

    iget-object v2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->recentTasksControllerProvider:Lg4/a;

    invoke-interface {v2}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->pipTransitionControllerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->provideRecentsTransitionHandler(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/pip/PipTransitionController;)Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideRecentsTransitionHandlerFactory;->get()Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    move-result-object p0

    return-object p0
.end method
