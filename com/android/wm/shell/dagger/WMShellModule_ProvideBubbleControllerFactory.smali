.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final bgExecutorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dataProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubbleData;",
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

.field private final dragAndDropControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final floatingContentCoordinatorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final launcherAppsProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/content/pm/LauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubbleLogger;",
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

.field private final mainHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final oneHandedOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final organizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final positionerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubblePositioner;",
            ">;"
        }
    .end annotation
.end field

.field private final shellCommandHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
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

.field private final statusBarServiceProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
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

.field private final taskStackListenerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
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

.field private final userManagerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final windowManagerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private final windowManagerShellWrapperProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
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
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 27
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
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubbleData;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            ">;",
            "Lg4/a<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Lg4/a<",
            "Landroid/view/WindowManager;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            ">;",
            "Lg4/a<",
            "Landroid/os/UserManager;",
            ">;",
            "Lg4/a<",
            "Landroid/content/pm/LauncherApps;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubbleLogger;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubblePositioner;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Landroid/view/IWindowManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->contextProvider:Lg4/a;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellInitProvider:Lg4/a;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellCommandHandlerProvider:Lg4/a;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellControllerProvider:Lg4/a;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->dataProvider:Lg4/a;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->floatingContentCoordinatorProvider:Lg4/a;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->statusBarServiceProvider:Lg4/a;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->windowManagerProvider:Lg4/a;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->windowManagerShellWrapperProvider:Lg4/a;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->userManagerProvider:Lg4/a;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->launcherAppsProvider:Lg4/a;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->taskStackListenerProvider:Lg4/a;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->loggerProvider:Lg4/a;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->organizerProvider:Lg4/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->positionerProvider:Lg4/a;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->displayControllerProvider:Lg4/a;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->oneHandedOptionalProvider:Lg4/a;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->dragAndDropControllerProvider:Lg4/a;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->mainExecutorProvider:Lg4/a;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->mainHandlerProvider:Lg4/a;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->bgExecutorProvider:Lg4/a;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->taskViewTransitionsProvider:Lg4/a;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->syncQueueProvider:Lg4/a;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->wmServiceProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;
    .registers 50
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
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubbleData;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            ">;",
            "Lg4/a<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Lg4/a<",
            "Landroid/view/WindowManager;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            ">;",
            "Lg4/a<",
            "Landroid/os/UserManager;",
            ">;",
            "Lg4/a<",
            "Landroid/content/pm/LauncherApps;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubbleLogger;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/bubbles/BubblePositioner;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Landroid/os/Handler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Landroid/view/IWindowManager;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

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

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    new-instance v25, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;

    move-object/from16 v0, v25

    invoke-direct/range {v0 .. v24}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v25
.end method

.method public static provideBubbleController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)Lcom/android/wm/shell/bubbles/BubbleController;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/bubbles/BubbleData;",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/view/WindowManager;",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            "Landroid/os/UserManager;",
            "Landroid/content/pm/LauncherApps;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/wm/shell/bubbles/BubbleLogger;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/bubbles/BubblePositioner;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Landroid/view/IWindowManager;",
            ")",
            "Lcom/android/wm/shell/bubbles/BubbleController;"
        }
    .end annotation

    invoke-static/range {p0 .. p23}, Lcom/android/wm/shell/dagger/WMShellModule;->provideBubbleController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/bubbles/BubbleController;
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->contextProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellCommandHandlerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->dataProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->floatingContentCoordinatorProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->statusBarServiceProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->windowManagerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/WindowManager;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->windowManagerShellWrapperProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/WindowManagerShellWrapper;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->userManagerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/UserManager;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->launcherAppsProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/content/pm/LauncherApps;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->taskStackListenerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->loggerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/bubbles/BubbleLogger;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->organizerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->positionerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->displayControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->oneHandedOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->dragAndDropControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->mainHandlerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->bgExecutorProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->taskViewTransitionsProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->syncQueueProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->wmServiceProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/view/IWindowManager;

    invoke-static/range {v2 .. v25}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->provideBubbleController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->get()Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object p0

    return-object p0
.end method
