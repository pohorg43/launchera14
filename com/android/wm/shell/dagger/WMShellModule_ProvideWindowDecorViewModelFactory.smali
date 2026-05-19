.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final contextProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final desktopModeControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final desktopTasksControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final displayControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainChoreographerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final splitScreenControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;"
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

.field private final taskOrganizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
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
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;",
            "Lg4/a<",
            "Landroid/view/Choreographer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->mainHandlerProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->mainChoreographerProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->taskOrganizerProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->displayControllerProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->syncQueueProvider:Lg4/a;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->transitionsProvider:Lg4/a;

    iput-object p8, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->desktopModeControllerProvider:Lg4/a;

    iput-object p9, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->desktopTasksControllerProvider:Lg4/a;

    iput-object p10, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->splitScreenControllerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;",
            "Lg4/a<",
            "Landroid/view/Choreographer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;"
        }
    .end annotation

    new-instance v11, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v11
.end method

.method public static provideWindowDecorViewModel(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;"
        }
    .end annotation

    invoke-static/range {p0 .. p9}, Lcom/android/wm/shell/dagger/WMShellModule;->provideWindowDecorViewModel(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->mainHandlerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->mainChoreographerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->taskOrganizerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->displayControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->syncQueueProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->transitionsProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->desktopModeControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->desktopTasksControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->splitScreenControllerProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Ljava/util/Optional;

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->provideWindowDecorViewModel(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->get()Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    move-result-object p0

    return-object p0
.end method
