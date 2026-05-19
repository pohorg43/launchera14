.class public abstract Lcom/android/wm/shell/dagger/TvPipModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static providePip(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .registers 38
    .param p17  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p18  # Lcom/android/wm/shell/common/ShellExecutor;
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
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsController;",
            "Lcom/android/wm/shell/pip/PipAppOpsListener;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Lcom/android/wm/shell/pip/tv/TvPipNotificationController;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    invoke-static/range {v0 .. v18}, Lcom/android/wm/shell/pip/tv/TvPipController;->create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/Pip;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static providePipAnimationController(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipAnimationController;
    .registers 2
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipAnimationController;-><init>(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)V

    return-object v0
.end method

.method public static providePipAppOpsListener(Landroid/content/Context;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/PipAppOpsListener;
    .registers 5
    .param p2  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/PipAppOpsListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p1}, Landroidx/core/view/a;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    invoke-direct {v0, p0, v1, p2}, Lcom/android/wm/shell/pip/PipAppOpsListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static providePipParamsChangedForwarder()Lcom/android/wm/shell/pip/PipParamsChangedForwarder;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;-><init>()V

    return-object v0
.end method

.method public static providePipSizeSpecHelper(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
    .registers 3
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    return-object v0
.end method

.method public static providePipSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;-><init>()V

    return-object v0
.end method

.method public static providePipTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/PipTaskOrganizer;
    .registers 34
    .param p15  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v3, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v9, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    new-instance v17, Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v17
.end method

.method public static providePipTransitionState()Lcom/android/wm/shell/pip/PipTransitionState;
    .registers 1
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipTransitionState;-><init>()V

    return-object v0
.end method

.method public static provideTvPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;
    .registers 5
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    return-object v0
.end method

.method public static provideTvPipBoundsController(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;)Lcom/android/wm/shell/pip/tv/TvPipBoundsController;
    .registers 11
    .param p1  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v6, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    sget-object v2, Lcom/android/wm/shell/dagger/a;->a:Lcom/android/wm/shell/dagger/a;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;)V

    return-object v6
.end method

.method public static provideTvPipBoundsState(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
    .registers 4
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    return-object v0
.end method

.method public static provideTvPipNotificationController(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;)Lcom/android/wm/shell/pip/tv/TvPipNotificationController;
    .registers 4
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;)V

    return-object v0
.end method

.method public static provideTvPipTransition(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipTransitionController;
    .registers 25
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v13, Lcom/android/wm/shell/pip/tv/TvPipTransition;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v12

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

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/pip/tv/TvPipTransition;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;)V

    return-object v13
.end method

.method public static providesTvPipMenuController(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)Lcom/android/wm/shell/pip/tv/TvPipMenuController;
    .registers 5
    .param p3  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V

    return-object v0
.end method
