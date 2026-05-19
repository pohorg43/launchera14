.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHanded;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->lambda$provideOneHanded$1(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHanded;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->lambda$provideBubbles$0(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/IZoom;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->lambda$provideOplusZoom$4(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/IZoom;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/splitscreen/SplitScreen;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->lambda$provideSplitScreen$3(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/splitscreen/SplitScreen;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/recents/RecentTasks;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->lambda$provideRecentTasks$2(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/recents/RecentTasks;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideBubbles$0(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->asBubbles()Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideOneHanded$1(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHanded;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->asOneHanded()Lcom/android/wm/shell/onehanded/OneHanded;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideOplusZoom$4(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/IZoom;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/zoom/ZoomController;->asZoom()Lcom/oplus/zoom/IZoom;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideRecentTasks$2(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/recents/RecentTasks;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->asRecentTasks()Lcom/android/wm/shell/recents/RecentTasks;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideSplitScreen$3(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/splitscreen/SplitScreen;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->asSplitScreen()Lcom/android/wm/shell/splitscreen/SplitScreen;

    move-result-object p0

    return-object p0
.end method

.method public static provideActivityEmbeddingController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)Ljava/util/Optional;
    .registers 3
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/transition/Transitions;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideBackAnimation(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/quickstep/logging/d;->c:Lcom/android/quickstep/logging/d;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideBackAnimationBackground(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)Lcom/android/wm/shell/back/BackAnimationBackground;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationBackground;-><init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    return-object v0
.end method

.method public static provideBackAnimationController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/back/BackAnimationBackground;)Ljava/util/Optional;
    .registers 14
    .param p3  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p4  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/back/BackAnimationBackground;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/back/BackAnimationController;->IS_ENABLED:Z

    if-eqz v0, :cond_15

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/back/BackAnimationController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideBubbles(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/f;->c:Lcom/android/launcher3/allapps/f;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Lz3/a;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;)Lcom/android/wm/shell/compatui/CompatUIController;
    .registers 26
    .param p7  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lz3/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lcom/android/wm/shell/common/DockStateReader;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            "Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;",
            ")",
            "Lcom/android/wm/shell/compatui/CompatUIController;"
        }
    .end annotation

    new-instance v13, Lcom/android/wm/shell/compatui/CompatUIController;

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

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/compatui/CompatUIController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Lz3/a;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;)V

    return-object v13
.end method

.method public static provideDesktopMode(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;
    .registers 3
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopMode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lcom/android/launcher3/testing/c;->c:Lcom/android/launcher3/testing/c;

    invoke-virtual {p1, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object p1, Lcom/android/wm/shell/dagger/b;->a:Lcom/android/wm/shell/dagger/b;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideDesktopModeController(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lz3/a<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;>;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto1Enabled()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/wm/shell/dagger/c;->a:Lcom/android/wm/shell/dagger/c;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideDesktopTaskRepository(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lz3/a<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;>;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/launcher3/allapps/b;->e:Lcom/android/launcher3/allapps/b;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideDevicePostureController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DevicePostureController;
    .registers 4
    .param p2  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/DevicePostureController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/common/DevicePostureController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideDisplayAreaHelper(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)Ljava/util/Optional;
    .registers 3
    .param p0  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/RootDisplayAreaOrganizer;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/displayareahelper/DisplayAreaHelper;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideDisplayController(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayController;
    .registers 5
    .param p3  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/DisplayController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/common/DisplayController;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideDisplayImeController(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayImeController;
    .registers 14
    .param p5  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v7, Lcom/android/wm/shell/common/DisplayImeController;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/common/DisplayImeController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;Ljava/util/concurrent/Executor;)V

    return-object v7
.end method

.method public static provideDisplayInsetsController(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayInsetsController;
    .registers 5
    .param p3  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/common/DisplayInsetsController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    return-object v0
.end method

.method public static provideDragAndDropController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .registers 8
    .param p7  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/draganddrop/DragAndDropController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideFloatingContentCoordinator()Lcom/android/wm/shell/common/FloatingContentCoordinator;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    invoke-direct {v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;-><init>()V

    return-object v0
.end method

.method public static provideFreeformComponents(Ljava/util/Optional;Landroid/content/Context;)Ljava/util/Optional;
    .registers 2
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformComponents;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformComponents;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformComponents;->isFreeformEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideFullscreenTaskListener(Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
    .registers 12
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

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

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    return-object p0

    :cond_d
    new-instance p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;)V

    return-object p0
.end method

.method public static provideHideDisplayCutoutController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .registers 6
    .param p5  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideIconProvider(Landroid/content/Context;)Lcom/android/launcher3/icons/IconProvider;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideIndependentShellComponentsToCreate(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/ProtoLogController;Ljava/util/Optional;)Ljava/lang/Object;
    .registers 23
    .param p21  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/ShellCreateTriggerOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/ShellCreateTrigger;
    .end annotation

    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformComponents;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            "Lcom/android/wm/shell/ProtoLogController;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static provideKeyguardTransitionHandler(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;
    .registers 5
    .param p2  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p3  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideKeyguardTransitions(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)Lcom/android/wm/shell/keyguard/KeyguardTransitions;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->asKeyguardTransitions()Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    move-result-object p0

    return-object p0
.end method

.method public static provideOneHanded(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/testing/b;->c:Lcom/android/launcher3/testing/b;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideOplusShellInit(Lcom/android/wm/shell/OplusShellInitImpl;)Lcom/android/wm/shell/OplusShellInit;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/OplusShellInitImpl;->asShellInit()Lcom/android/wm/shell/OplusShellInit;

    move-result-object p0

    return-object p0
.end method

.method public static provideOplusShellInitImpl(Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/OplusShellInitImpl;
    .registers 4
    .param p1  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .param p2  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/oplus/zoom/ZoomController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Lcom/android/wm/shell/OplusShellInitImpl;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/OplusShellInitImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/OplusShellInitImpl;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideOplusZoom(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/oplus/zoom/ZoomController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/oplus/zoom/IZoom;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/model/m1;->e:Lcom/android/launcher3/model/m1;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideOplusZoomController(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/oplus/zoom/ZoomController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/oplus/zoom/ZoomController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static providePipMediaController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/wm/shell/pip/PipMediaController;
    .registers 3
    .param p1  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static providePipSurfaceTransactionHelper(Landroid/content/Context;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static providePipUiEventLogger(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)Lcom/android/wm/shell/pip/PipUiEventLogger;
    .registers 3
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/PipUiEventLogger;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/PipUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method public static provideProtoLogController(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)Lcom/android/wm/shell/ProtoLogController;
    .registers 3
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/ProtoLogController;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/ProtoLogController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    return-object v0
.end method

.method public static provideRecentTasks(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasks;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/model/i1;->d:Lcom/android/launcher3/model/i1;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideRecentTasksController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .registers 8
    .param p7  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Landroid/app/ActivityTaskManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/android/wm/shell/recents/RecentTasksController;->create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/recents/RecentTasksController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideRemoteTransitions(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/ShellTransitions;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->asRemoteTransitions()Lcom/android/wm/shell/transition/ShellTransitions;

    move-result-object p0

    return-object p0
.end method

.method public static provideRootDisplayAreaOrganizer(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/RootDisplayAreaOrganizer;
    .registers 2
    .param p0  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/RootDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static provideRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;
    .registers 3
    .param p0  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideShellCommandHandler()Lcom/android/wm/shell/sysui/ShellCommandHandler;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-direct {v0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;-><init>()V

    return-object v0
.end method

.method public static provideShellController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/sysui/ShellController;
    .registers 5
    .param p3  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/sysui/ShellController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/sysui/ShellController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideShellInit(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/sysui/ShellInit;
    .registers 2
    .param p0  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/sysui/ShellInit;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/sysui/ShellInit;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideShellSysuiCallbacks(Ljava/lang/Object;Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/sysui/ShellInterface;
    .registers 2
    .param p0  # Ljava/lang/Object;
        .annotation runtime Lcom/android/wm/shell/dagger/ShellCreateTrigger;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    invoke-virtual {p1}, Lcom/android/wm/shell/sysui/ShellController;->asShell()Lcom/android/wm/shell/sysui/ShellInterface;

    move-result-object p0

    return-object p0
.end method

.method public static provideShellTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .registers 14
    .param p6  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/compatui/CompatUIController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Lcom/android/wm/shell/ShellTaskOrganizer;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$bool;->config_registerShellTaskOrganizerOnInit:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_11

    new-instance p1, Lcom/android/wm/shell/sysui/ShellInit;

    invoke-direct {p1, p6}, Lcom/android/wm/shell/sysui/ShellInit;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    :cond_11
    move-object v1, p1

    new-instance p0, Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object p0
.end method

.method public static provideSplitScreen(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/testing/d;->c:Lcom/android/launcher3/testing/d;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideStartingSurface(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Ljava/util/Optional;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->asStartingSurface()Lcom/android/wm/shell/startingsurface/StartingSurface;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideStartingWindowController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)Lcom/android/wm/shell/startingsurface/StartingWindowController;
    .registers 18
    .param p4  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellSplashscreenThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v9, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/startingsurface/StartingWindowController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)V

    return-object v9
.end method

.method public static provideStartingWindowTypeAlgorithm(Ljava/util/Optional;)Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;
    .registers 2
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;",
            ">;)",
            "Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    return-object p0

    :cond_d
    new-instance p0, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;-><init>()V

    return-object p0
.end method

.method public static provideSyncTransactionQueue(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 3
    .param p1  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideSystemWindows(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)Lcom/android/wm/shell/common/SystemWindows;
    .registers 3
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/SystemWindows;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/common/SystemWindows;-><init>(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)V

    return-object v0
.end method

.method public static provideTabletopModeController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DevicePostureController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/TabletopModeController;
    .registers 12
    .param p4  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v6, Lcom/android/wm/shell/common/TabletopModeController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/TabletopModeController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DevicePostureController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v6
.end method

.method public static provideTaskViewFactory(Lcom/android/wm/shell/taskview/TaskViewFactoryController;)Ljava/util/Optional;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/taskview/TaskViewFactoryController;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/taskview/TaskViewFactory;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->asTaskViewFactory()Lcom/android/wm/shell/taskview/TaskViewFactory;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideTaskViewFactoryController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/taskview/TaskViewTransitions;)Lcom/android/wm/shell/taskview/TaskViewFactoryController;
    .registers 5
    .param p1  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewFactoryController;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/taskview/TaskViewTransitions;)V

    return-object v0
.end method

.method public static provideTaskViewTransitions(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/taskview/TaskViewTransitions;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    return-object v0
.end method

.method public static provideTransactionPool()Lcom/android/wm/shell/common/TransactionPool;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/TransactionPool;

    invoke-direct {v0}, Lcom/android/wm/shell/common/TransactionPool;-><init>()V

    return-object v0
.end method

.method public static provideTransitions(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)Lcom/android/wm/shell/transition/Transitions;
    .registers 24
    .param p6  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p7  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p8  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellAnimationThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$bool;->config_registerShellTransitionsOnInit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/wm/shell/sysui/ShellInit;

    move-object/from16 v8, p6

    invoke-direct {v0, v8}, Lcom/android/wm/shell/sysui/ShellInit;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    move-object v3, v0

    goto :goto_18

    :cond_15
    move-object/from16 v8, p6

    move-object v3, p1

    :goto_18
    new-instance v0, Lcom/android/wm/shell/transition/Transitions;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/wm/shell/transition/Transitions;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    return-object v0
.end method

.method public static provideUnfoldController(Lz3/a;Ljava/util/Optional;)Ljava/util/Optional;
    .registers 3
    .param p0  # Lz3/a;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz3/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;>;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    if-eq p1, v0, :cond_15

    invoke-interface {p0}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0

    :cond_15
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideUnfoldTransitionHandler(Ljava/util/Optional;Lz3/a;)Ljava/util/Optional;
    .registers 3
    .param p1  # Lz3/a;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

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

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    if-eq p0, v0, :cond_15

    invoke-interface {p1}, Lz3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0

    :cond_15
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static provideWindowManagerShellWrapper(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/WindowManagerShellWrapper;
    .registers 2
    .param p0  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/WindowManagerShellWrapper;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/WindowManagerShellWrapper;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static providerTaskStackListenerImpl(Landroid/os/Handler;)Lcom/android/wm/shell/common/TaskStackListenerImpl;
    .registers 2
    .param p0  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static providesDesktopTasksController(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 2
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lz3/a<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;>;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/launcher3/j3;->e:Lcom/android/launcher3/j3;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static providesOneHandedController(Ljava/util/Optional;)Ljava/util/Optional;
    .registers 3
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ro.support_one_handed_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    :cond_b
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static providesSplitScreenController(Ljava/util/Optional;Landroid/content/Context;)Ljava/util/Optional;
    .registers 2
    .param p0  # Ljava/util/Optional;
        .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract optionalBubblesController()Lcom/android/wm/shell/bubbles/BubbleController;
.end method

.method public abstract optionalDesktopModeController()Lcom/android/wm/shell/desktopmode/DesktopModeController;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalDesktopModeTaskRepository()Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalDesktopTasksController()Lcom/android/wm/shell/desktopmode/DesktopTasksController;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalFreeformComponents()Lcom/android/wm/shell/freeform/FreeformComponents;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalFullscreenTaskListener()Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalOneHandedController()Lcom/android/wm/shell/onehanded/OneHandedController;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalOplusZoomController()Lcom/oplus/zoom/ZoomController;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalPipTouchHandler()Lcom/android/wm/shell/pip/phone/PipTouchHandler;
.end method

.method public abstract optionalRecentsTransitionHandler()Lcom/android/wm/shell/recents/RecentsTransitionHandler;
.end method

.method public abstract optionalShellUnfoldProgressProvider()Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;
.end method

.method public abstract optionalSplitScreenController()Lcom/android/wm/shell/splitscreen/SplitScreenController;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalStartingWindowTypeAlgorithm()Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalUnfoldController()Lcom/android/wm/shell/unfold/UnfoldAnimationController;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalUnfoldTransitionHandler()Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;
    .annotation runtime Lcom/android/wm/shell/dagger/DynamicOverride;
    .end annotation
.end method

.method public abstract optionalWindowDecorViewModel()Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
.end method

.method public abstract provideIndependentShellComponentsToCreateOverride()Ljava/lang/Object;
    .annotation runtime Lcom/android/wm/shell/dagger/ShellCreateTriggerOverride;
    .end annotation
.end method
