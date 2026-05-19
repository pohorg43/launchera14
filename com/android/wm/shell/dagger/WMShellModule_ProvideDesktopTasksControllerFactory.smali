.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;
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

.field private final desktopModeTaskRepositoryProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;"
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

.field private final enterDesktopTransitionHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final exitDesktopTransitionHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;",
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

.field private final rootTaskDisplayAreaOrganizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
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
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->shellInitProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->shellControllerProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->displayControllerProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->shellTaskOrganizerProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->syncQueueProvider:Lg4/a;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->rootTaskDisplayAreaOrganizerProvider:Lg4/a;

    iput-object p8, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->transitionsProvider:Lg4/a;

    iput-object p9, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->enterDesktopTransitionHandlerProvider:Lg4/a;

    iput-object p10, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->exitDesktopTransitionHandlerProvider:Lg4/a;

    iput-object p11, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->desktopModeTaskRepositoryProvider:Lg4/a;

    iput-object p12, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->mainExecutorProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;"
        }
    .end annotation

    new-instance v13, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v13
.end method

.method public static provideDesktopTasksController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/desktopmode/DesktopTasksController;
    .registers 12

    invoke-static/range {p0 .. p11}, Lcom/android/wm/shell/dagger/WMShellModule;->provideDesktopTasksController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/desktopmode/DesktopTasksController;
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->shellControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->displayControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->shellTaskOrganizerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->syncQueueProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->rootTaskDisplayAreaOrganizerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->transitionsProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->enterDesktopTransitionHandlerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->exitDesktopTransitionHandlerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->desktopModeTaskRepositoryProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v1 .. v12}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->provideDesktopTasksController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->get()Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    move-result-object p0

    return-object p0
.end method
