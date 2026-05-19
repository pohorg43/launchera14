.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final fullscreenTaskListenerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final recentTasksOptionalProvider:Lg4/a;
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

.field private final windowDecorViewModelOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;>;"
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
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->fullscreenTaskListenerProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->shellInitProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->shellTaskOrganizerProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->syncQueueProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->recentTasksOptionalProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->windowDecorViewModelOptionalProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;>;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;"
        }
    .end annotation

    new-instance v7, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v7
.end method

.method public static provideFullscreenTaskListener(Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;)",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideFullscreenTaskListener(Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->fullscreenTaskListenerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->shellTaskOrganizerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->syncQueueProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->recentTasksOptionalProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->windowDecorViewModelOptionalProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/util/Optional;

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->provideFullscreenTaskListener(Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->get()Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    move-result-object p0

    return-object p0
.end method
