.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;
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

.field private final shellTaskOrganizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final syncQueueProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final taskViewTransitionsProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
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
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->shellTaskOrganizerProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->mainExecutorProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->syncQueueProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->taskViewTransitionsProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static provideTaskViewFactoryController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/taskview/TaskViewTransitions;)Lcom/android/wm/shell/taskview/TaskViewFactoryController;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideTaskViewFactoryController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/taskview/TaskViewTransitions;)Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/taskview/TaskViewFactoryController;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->shellTaskOrganizerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->syncQueueProvider:Lg4/a;

    invoke-interface {v2}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->taskViewTransitionsProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->provideTaskViewFactoryController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/taskview/TaskViewTransitions;)Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->get()Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    move-result-object p0

    return-object p0
.end method
