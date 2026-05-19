.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;
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

.field private final displayControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
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

.field private final pipAnimationControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipDisplayLayoutStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;"
        }
    .end annotation
.end field

.field private final pipParamsChangedForwarderProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            ">;"
        }
    .end annotation
.end field

.field private final pipSurfaceTransactionHelperProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTransitionControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTransitionStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;"
        }
    .end annotation
.end field

.field private final pipUiEventLoggerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
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

.field private final splitScreenControllerOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final syncTransactionQueueProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final tvPipBoundsAlgorithmProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final tvPipBoundsStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;"
        }
    .end annotation
.end field

.field private final tvPipMenuControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->contextProvider:Lg4/a;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->tvPipMenuControllerProvider:Lg4/a;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->syncTransactionQueueProvider:Lg4/a;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->tvPipBoundsStateProvider:Lg4/a;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipTransitionStateProvider:Lg4/a;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->tvPipBoundsAlgorithmProvider:Lg4/a;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipAnimationControllerProvider:Lg4/a;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipTransitionControllerProvider:Lg4/a;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipParamsChangedForwarderProvider:Lg4/a;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipSurfaceTransactionHelperProvider:Lg4/a;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->splitScreenControllerOptionalProvider:Lg4/a;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->displayControllerProvider:Lg4/a;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipUiEventLoggerProvider:Lg4/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->shellTaskOrganizerProvider:Lg4/a;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->mainExecutorProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;"
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

    new-instance v17, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v17
.end method

.method public static providePipTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/PipTaskOrganizer;
    .registers 16
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

    invoke-static/range {p0 .. p15}, Lcom/android/wm/shell/dagger/TvPipModule;->providePipTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipTaskOrganizer;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->contextProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->tvPipMenuControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->syncTransactionQueueProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->tvPipBoundsStateProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipTransitionStateProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->tvPipBoundsAlgorithmProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipAnimationControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipTransitionControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipParamsChangedForwarderProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipSurfaceTransactionHelperProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->splitScreenControllerOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->displayControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->pipUiEventLoggerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/wm/shell/pip/PipUiEventLogger;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->shellTaskOrganizerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v17}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->providePipTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;->get()Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-result-object p0

    return-object p0
.end method
